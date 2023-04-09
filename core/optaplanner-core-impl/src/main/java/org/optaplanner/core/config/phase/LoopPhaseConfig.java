package org.optaplanner.core.config.phase;

import java.util.List;
import java.util.function.Consumer;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElements;
import javax.xml.bind.annotation.XmlType;

import org.optaplanner.core.config.constructionheuristic.ConstructionHeuristicPhaseConfig;
import org.optaplanner.core.config.exhaustivesearch.ExhaustiveSearchPhaseConfig;
import org.optaplanner.core.config.heuristic.selector.move.generic.*;
import org.optaplanner.core.config.localsearch.LocalSearchPhaseConfig;
import org.optaplanner.core.config.partitionedsearch.PartitionedSearchPhaseConfig;
import org.optaplanner.core.config.phase.PhaseConfig;
import org.optaplanner.core.config.phase.custom.CustomPhaseConfig;
import org.optaplanner.core.config.ruin.RuinPhaseConfig;
import org.optaplanner.core.config.solver.termination.TerminationConfig;
import org.optaplanner.core.config.util.ConfigUtils;

@XmlType(propOrder = {
        "count",
        "phaseConfigList"
})
public class LoopPhaseConfig extends PhaseConfig<LoopPhaseConfig> {

    public static final String XML_ELEMENT_NAME = "loop";

    @XmlElements({
            @XmlElement(name = ConstructionHeuristicPhaseConfig.XML_ELEMENT_NAME,
                    type = ConstructionHeuristicPhaseConfig.class),
            @XmlElement(name = CustomPhaseConfig.XML_ELEMENT_NAME, type = CustomPhaseConfig.class),
            @XmlElement(name = ExhaustiveSearchPhaseConfig.XML_ELEMENT_NAME, type = ExhaustiveSearchPhaseConfig.class),
            @XmlElement(name = LocalSearchPhaseConfig.XML_ELEMENT_NAME, type = LocalSearchPhaseConfig.class),
            @XmlElement(name = RuinPhaseConfig.XML_ELEMENT_NAME, type = RuinPhaseConfig.class),
            @XmlElement(name = LoopPhaseConfig.XML_ELEMENT_NAME, type = LoopPhaseConfig.class),
            @XmlElement(name = NoChangePhaseConfig.XML_ELEMENT_NAME, type = NoChangePhaseConfig.class),
            @XmlElement(name = PartitionedSearchPhaseConfig.XML_ELEMENT_NAME, type = PartitionedSearchPhaseConfig.class)
    })
    protected List<PhaseConfig> phaseConfigList = null;

    @XmlElement(name = "count")
    protected Integer count = null;

    // ************************************************************************
    // Constructors and simple getters/setters
    // ************************************************************************

    public List<PhaseConfig> getPhaseConfigList() {
        return phaseConfigList;
    }

    public void setPhaseConfigList(List<PhaseConfig> phaseConfigList) {
        this.phaseConfigList = phaseConfigList;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public TerminationConfig getTerminationConfig() {
        TerminationConfig terminationConfig = super.getTerminationConfig();
        if (terminationConfig != null) {
            return terminationConfig;
        }
        TerminationConfig defaultTerminationConfig = new TerminationConfig();
        defaultTerminationConfig.setStepCountLimit(1);
        return defaultTerminationConfig;
    }

    // ************************************************************************
    // With methods
    // ************************************************************************

    @Override
    public LoopPhaseConfig inherit(LoopPhaseConfig inheritedConfig) {
        super.inherit(inheritedConfig);
        phaseConfigList = ConfigUtils.inheritMergeableListConfig(phaseConfigList, inheritedConfig.getPhaseConfigList());
        return this;
    }

    @Override
    public LoopPhaseConfig copyConfig() {
        return new LoopPhaseConfig().inherit(this);
    }

    @Override
    public void visitReferencedClasses(Consumer<Class<?>> classVisitor) {
        if (getTerminationConfig() != null) {
            getTerminationConfig().visitReferencedClasses(classVisitor);
        }
        if (phaseConfigList != null) {
            phaseConfigList.forEach(pc -> pc.visitReferencedClasses(classVisitor));
        }
    }
}
