package org.optaplanner.core.config.heuristic.selector.entity.pillar;

import java.util.Comparator;
import java.util.function.Predicate;

import javax.xml.bind.annotation.XmlType;

@XmlType(propOrder = {
        "subPillarEnabled",
        "minimumSubPillarSize",
        "maximumSubPillarSize",
        "maximumSubPillarSize"
})
public final class SubPillarConfigPolicy {

    private final boolean subPillarEnabled;
    private final int minimumSubPillarSize;
    private final int maximumSubPillarSize;
    private final Comparator<?> entityComparator;

    private final Predicate<?> entityPredicate;

    private SubPillarConfigPolicy(int minimumSubPillarSize, int maximumSubPillarSize) {
        this.subPillarEnabled = true;
        this.minimumSubPillarSize = minimumSubPillarSize;
        this.maximumSubPillarSize = maximumSubPillarSize;
        validateSizes();
        this.entityComparator = null;
        this.entityPredicate = null;
    }

    private SubPillarConfigPolicy(int minimumSubPillarSize, int maximumSubPillarSize, Comparator<?> entityComparator) {
        this.subPillarEnabled = true;
        this.minimumSubPillarSize = minimumSubPillarSize;
        this.maximumSubPillarSize = maximumSubPillarSize;
        validateSizes();
        if (entityComparator == null) {
            throw new IllegalStateException("The entityComparator must not be null.");
        }
        this.entityComparator = entityComparator;
        this.entityPredicate = null;
    }

    private SubPillarConfigPolicy() {
        this.subPillarEnabled = false;
        this.minimumSubPillarSize = -1;
        this.maximumSubPillarSize = -1;
        this.entityComparator = null;
        this.entityPredicate = null;
    }

    private SubPillarConfigPolicy(int minimumSubPillarSize, int maximumSubPillarSize, Predicate<?> entityPredicate) {
        this.subPillarEnabled = true;
        this.minimumSubPillarSize = minimumSubPillarSize;
        this.maximumSubPillarSize = maximumSubPillarSize;
        validateSizes();
        if (entityPredicate == null) {
            throw new IllegalStateException("The entityPredicate must not be null.");
        }
        this.entityComparator = null;
        this.entityPredicate = entityPredicate;
    }

    public static SubPillarConfigPolicy withoutSubpillars() {
        return new SubPillarConfigPolicy();
    }

    public static SubPillarConfigPolicy withSubpillars(int minSize, int maxSize) {
        return new SubPillarConfigPolicy(minSize, maxSize);
    }

    public static SubPillarConfigPolicy withSubpillarsUnlimited() {
        return withSubpillars(1, Integer.MAX_VALUE);
    }

    public static SubPillarConfigPolicy sequential(int minSize, int maxSize, Comparator<?> entityComparator) {
        return new SubPillarConfigPolicy(minSize, maxSize, entityComparator);
    }

    public static SubPillarConfigPolicy sequentialUnlimited(Comparator<?> entityComparator) {
        return sequential(1, Integer.MAX_VALUE, entityComparator);
    }

    public static SubPillarConfigPolicy filtered(int minSize, int maxSize, Predicate<?> entityPredicate) {
        return new SubPillarConfigPolicy(minSize, maxSize, entityPredicate);
    }

    private void validateSizes() {
        if (minimumSubPillarSize < 1) {
            throw new IllegalStateException("The sub pillar's minimumPillarSize (" + minimumSubPillarSize
                    + ") must be at least 1.");
        }
        if (minimumSubPillarSize > maximumSubPillarSize) {
            throw new IllegalStateException("The minimumPillarSize (" + minimumSubPillarSize
                    + ") must be at least maximumSubChainSize (" + maximumSubPillarSize + ").");
        }
    }

    public boolean isSubPillarEnabled() {
        return subPillarEnabled;
    }

    /**
     * @return Less than 1 when {@link #isSubPillarEnabled()} false.
     */
    public int getMinimumSubPillarSize() {
        return minimumSubPillarSize;
    }

    /**
     * @return Less than 1 when {@link #isSubPillarEnabled()} false.
     */
    public int getMaximumSubPillarSize() {
        return maximumSubPillarSize;
    }

    /**
     * @return Not null if the subpillars are to be treated as sequential. Always null if {@link #subPillarEnabled} is false.
     */
    public Comparator<?> getEntityComparator() {
        return entityComparator;
    }

    public Predicate<?> getEntityPredicate() {
        return entityPredicate;
    }

}
