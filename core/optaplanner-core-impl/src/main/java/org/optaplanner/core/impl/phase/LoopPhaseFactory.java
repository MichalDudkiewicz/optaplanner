package org.optaplanner.core.impl.phase;

import org.optaplanner.core.config.phase.LoopPhaseConfig;
import org.optaplanner.core.impl.heuristic.HeuristicConfigPolicy;
import org.optaplanner.core.impl.solver.recaller.BestSolutionRecaller;
import org.optaplanner.core.impl.solver.termination.Termination;

import java.util.ArrayList;
import java.util.List;

public class LoopPhaseFactory<Solution_> extends AbstractPhaseFactory<Solution_, LoopPhaseConfig> {

    public LoopPhaseFactory(LoopPhaseConfig phaseConfig) {
        super(phaseConfig);
    }

    List<Phase<Solution_>> buildSubPhases(HeuristicConfigPolicy<Solution_> solverConfigPolicy,
                                          BestSolutionRecaller<Solution_> bestSolutionRecaller, Termination<Solution_> solverTermination)
    {
        return PhaseFactory.buildPhases(phaseConfig.getPhaseConfigList(), solverConfigPolicy, bestSolutionRecaller, solverTermination);
    }

    @Override
    public LoopPhase<Solution_> buildPhase(String phaseIndex, HeuristicConfigPolicy<Solution_> solverConfigPolicy,
                                               BestSolutionRecaller<Solution_> bestSolutionRecaller, Termination<Solution_> solverTermination) {
        HeuristicConfigPolicy<Solution_> phaseConfigPolicy = solverConfigPolicy.createPhaseConfigPolicy();
        return new LoopPhase.Builder<>(phaseIndex, solverConfigPolicy.getLogIndentation(),
                buildPhaseTermination(phaseConfigPolicy, solverTermination), buildSubPhases(solverConfigPolicy, bestSolutionRecaller, solverTermination), phaseConfig.getCount()).build();
    }
}
