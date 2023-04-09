package org.optaplanner.core.impl.phase;

import org.optaplanner.core.api.domain.solution.PlanningSolution;
import org.optaplanner.core.api.score.Score;
import org.optaplanner.core.impl.constructionheuristic.scope.ConstructionHeuristicPhaseScope;
import org.optaplanner.core.impl.phase.custom.scope.CustomPhaseScope;
import org.optaplanner.core.impl.phase.custom.scope.CustomStepScope;
import org.optaplanner.core.impl.solver.AbstractSolver;
import org.optaplanner.core.impl.solver.scope.SolverScope;
import org.optaplanner.core.impl.solver.termination.Termination;

import java.util.Iterator;
import java.util.List;
import java.util.function.Predicate;

/**
 * A {@link LoopPhase} is a {@link Phase} which does looping.
 *
 * @param <Solution_> the solution type, the class with the {@link PlanningSolution} annotation
 * @see Phase
 * @see AbstractPhase
 */
public class LoopPhase<Solution_> extends AbstractPhase<Solution_> {

    private final List<Phase<Solution_>> phaseList;
    private final Integer count;

    private LoopPhase(Builder<Solution_> builder, List<Phase<Solution_>> phaseList, Integer count) {
        super(builder);
        this.phaseList = phaseList;
        this.count = count;
    }

    @Override
    public String getPhaseTypeString() {
        return "Loop";
    }

    // ************************************************************************
    // Worker methods
    // ************************************************************************

    @Override
    public void solve(SolverScope<Solution_> solverScope) {
        solvingStarted(solverScope);
        runPhases(solverScope);
        solvingEnded(solverScope);
        logger.info("{}Loop phase ({}) ended.",
                logIndentation,
                phaseIndex);
    }

    protected void runPhases(SolverScope<Solution_> solverScope) {
        if (!solverScope.getSolutionDescriptor().hasMovableEntities(solverScope.getScoreDirector())) {
            logger.info("Skipped all phases ({}): out of {} planning entities, none are movable (non-pinned).",
                    phaseList.size(),
                    solverScope.getSolutionDescriptor().getEntityCount(solverScope.getWorkingSolution()));
            return;
        }

        Predicate<Integer> loopPredicate = i -> true;
        if (count != null) {
            loopPredicate = i -> (i < count);
        }

        int loopCounter = 0;
        int subPhaseCounter = 0;
        CustomPhaseScope<Solution_> phaseScope = new CustomPhaseScope<>(solverScope);
        phaseStarted(phaseScope);
        while (loopPredicate.test(loopCounter) && !phaseTermination.isPhaseTerminated(phaseScope)) {
            solverScope.checkYielding();
            Iterator<Phase<Solution_>> it = phaseList.iterator();
            Score<?> beforeBest = phaseScope.getBestScore();
            while (it.hasNext()) {
                Phase<Solution_> phase = it.next();
                AbstractPhase<Solution_> abstractPhase = (AbstractPhase<Solution_>)phase;
                abstractPhase.setPhaseIndex(getPhaseIndex() + "." + subPhaseCounter++);
                phase.solve(solverScope);
                // If there is a next phase, it starts from the best solution, which might differ from the working solution.
                // If there isn't, no need to planning clone the best solution to the working solution.
                if (it.hasNext()) {
                    solverScope.setWorkingSolutionFromBestSolution();
                }
            }
            Score<?> afterBest = phaseScope.getBestScore();
            if (afterBest.equals(beforeBest)) {
                // terminate phase early
                break;
            }
            loopCounter++;
        }
        phaseEnded(phaseScope);
    }

    @Override
    public void solvingStarted(SolverScope<Solution_> solverScope) {
        for (Phase<Solution_> phase : phaseList) {
            phase.solvingStarted(solverScope);
        }
    }

    @Override
    public void solvingEnded(SolverScope<Solution_> solverScope) {
        for (Phase<Solution_> phase : phaseList) {
            phase.solvingEnded(solverScope);
        }
    }

    @Override
    public void solvingError(SolverScope<Solution_> solverScope, Exception exception) {
        for (Phase<Solution_> phase : phaseList) {
            phase.solvingError(solverScope, exception);
        }
    }

    @Override
    public void setSolver(AbstractSolver<Solution_> solver) {
        super.setSolver(solver);
        phaseList.forEach(phase -> ((AbstractPhase<Solution_>) phase).setSolver(solver));
    }

    public static class Builder<Solution_> extends AbstractPhase.Builder<Solution_> {

        private final List<Phase<Solution_>> phaseList;
        private final Integer count;

        public Builder(String phaseIndex, String logIndentation, Termination<Solution_> phaseTermination, List<Phase<Solution_>> phaseList, Integer count) {
            super(phaseIndex, logIndentation, phaseTermination);
            this.phaseList = phaseList;
            this.count = count;
        }

        @Override
        public LoopPhase<Solution_> build() {
            return new LoopPhase<>(this, phaseList, count);
        }
    }
}
