package org.optaplanner.core.impl.heuristic.selector.move.generic;

import java.util.Collections;
import java.util.List;
import java.util.Objects;

import org.optaplanner.core.config.heuristic.selector.common.SelectionCacheType;
import org.optaplanner.core.config.heuristic.selector.common.SelectionOrder;
import org.optaplanner.core.config.heuristic.selector.entity.pillar.PillarSelectorConfig;
import org.optaplanner.core.config.heuristic.selector.move.generic.PillarChangeMoveSelectorConfig;
import org.optaplanner.core.config.heuristic.selector.value.ValueSelectorConfig;
import org.optaplanner.core.impl.heuristic.HeuristicConfigPolicy;
import org.optaplanner.core.impl.heuristic.selector.entity.pillar.PillarSelector;
import org.optaplanner.core.impl.heuristic.selector.entity.pillar.PillarSelectorFactory;
import org.optaplanner.core.impl.heuristic.selector.move.AbstractMoveSelectorFactory;
import org.optaplanner.core.impl.heuristic.selector.move.MoveSelector;
import org.optaplanner.core.impl.heuristic.selector.value.ValueSelector;
import org.optaplanner.core.impl.heuristic.selector.value.ValueSelectorFactory;

public class PillarChangeMoveSelectorFactory<Solution_>
        extends AbstractMoveSelectorFactory<Solution_, PillarChangeMoveSelectorConfig> {

    public PillarChangeMoveSelectorFactory(PillarChangeMoveSelectorConfig moveSelectorConfig) {
        super(moveSelectorConfig);
    }

    @Override
    protected MoveSelector<Solution_> buildBaseMoveSelector(HeuristicConfigPolicy<Solution_> configPolicy,
            SelectionCacheType minimumCacheType, boolean randomSelection) {
        PillarSelectorConfig pillarSelectorConfig_ =
                Objects.requireNonNullElse(config.getPillarSelectorConfig(), new PillarSelectorConfig());
        List<String> variableNameIncludeList = config.getValueSelectorConfig() == null
                || config.getValueSelectorConfig().getVariableName() == null ? null
                        : Collections.singletonList(config.getValueSelectorConfig().getVariableName());
        PillarSelector<Solution_> pillarSelector = PillarSelectorFactory.<Solution_> create(pillarSelectorConfig_)
                .buildPillarSelector(configPolicy, config.getSubPillarType(), config.getSubPillarSequenceComparatorClass(),
                        minimumCacheType, SelectionOrder.fromRandomSelectionBoolean(randomSelection), variableNameIncludeList,
                        config.getSubPillarFilterPredicateClass());
        ValueSelectorConfig valueSelectorConfig_ = Objects.requireNonNullElse(config.getValueSelectorConfig(),
                new ValueSelectorConfig());
        SelectionOrder selectionOrder = SelectionOrder.fromRandomSelectionBoolean(randomSelection);
        ValueSelector<Solution_> valueSelector = ValueSelectorFactory.<Solution_> create(valueSelectorConfig_)
                .buildValueSelector(configPolicy, pillarSelector.getEntityDescriptor(), minimumCacheType, selectionOrder);
        return new PillarChangeMoveSelector<>(pillarSelector, valueSelector, randomSelection);
    }
}
