<?xml version="1.0" encoding="UTF-8"?>
<plannerBenchmark>
	<benchmarkDirectory>local/data/general/template</benchmarkDirectory>
	<parallelBenchmarkCount>AUTO</parallelBenchmarkCount>
	<inheritedSolverBenchmark>
	    <solver>
            <environmentMode>NON_REPRODUCIBLE</environmentMode>
	    </solver>
		<subSingleCount>5</subSingleCount>
        <problemBenchmarks>
          <problemStatisticType>BEST_SCORE</problemStatisticType>
          <problemStatisticType>STEP_SCORE</problemStatisticType>
        </problemBenchmarks>
	</inheritedSolverBenchmark>
	<!-- with default random ruin of different sizes -->
	<#list [1, 2, 5, 10, 20, 50] as percentagesToRuin>
        <#assign nameSuffix = "with random ${percentagesToRuin} percent ruin">
        <solverBenchmark>
            <name>Cloud Balancing ${nameSuffix}</name>
            <problemBenchmarks>
                <solutionFileIOClass>org.optaplanner.examples.cloudbalancing.persistence.CloudBalanceSolutionFileIO</solutionFileIOClass>
                <inputSolutionFile>data/cloudbalancing/unsolved/100computers-300processes.json</inputSolutionFile>
                <inputSolutionFile>data/cloudbalancing/unsolved/200computers-600processes.json</inputSolutionFile>
                <inputSolutionFile>data/cloudbalancing/unsolved/400computers-1200processes.json</inputSolutionFile>
            </problemBenchmarks>
            <solver>
                <solutionClass>org.optaplanner.examples.cloudbalancing.domain.CloudBalance</solutionClass>
                <entityClass>org.optaplanner.examples.cloudbalancing.domain.CloudProcess</entityClass>
                <scoreDirectorFactory>
                    <constraintProviderClass>org.optaplanner.examples.cloudbalancing.score.CloudBalancingConstraintProvider</constraintProviderClass>
                    <initializingScoreTrend>ONLY_DOWN</initializingScoreTrend>
                </scoreDirectorFactory>
                <constructionHeuristic>
                  <constructionHeuristicType>FIRST_FIT_DECREASING</constructionHeuristicType>
                </constructionHeuristic>
                <localSearch>
                    <termination>
                        <unimprovedSecondsSpentLimit>60</unimprovedSecondsSpentLimit>
                    </termination>
                    <unionMoveSelector>
                      <changeMoveSelector/>
                      <swapMoveSelector/>
                      <pillarChangeMoveSelector/>
                      <pillarSwapMoveSelector/>
                    </unionMoveSelector>
                    <acceptor>
                        <entityTabuSize>7</entityTabuSize>
                    </acceptor>
                    <forager>
                        <acceptedCountLimit>1000</acceptedCountLimit>
                    </forager>
                </localSearch>
                <ruin>
                    <percentageToRuin>${percentagesToRuin}</percentageToRuin>
                </ruin>
                <constructionHeuristic>
                  <constructionHeuristicType>FIRST_FIT_DECREASING</constructionHeuristicType>
                </constructionHeuristic>
                <localSearch>
                    <termination>
                        <unimprovedSecondsSpentLimit>30</unimprovedSecondsSpentLimit>
                    </termination>
                    <unionMoveSelector>
                      <changeMoveSelector/>
                      <swapMoveSelector/>
                      <pillarChangeMoveSelector/>
                      <pillarSwapMoveSelector/>
                    </unionMoveSelector>
                    <acceptor>
                        <entityTabuSize>7</entityTabuSize>
                    </acceptor>
                    <forager>
                        <acceptedCountLimit>1000</acceptedCountLimit>
                    </forager>
                </localSearch>
                <ruin>
                    <percentageToRuin>${percentagesToRuin}</percentageToRuin>
                </ruin>
                <constructionHeuristic>
                  <constructionHeuristicType>FIRST_FIT_DECREASING</constructionHeuristicType>
                </constructionHeuristic>
                <localSearch>
                    <termination>
                        <unimprovedSecondsSpentLimit>30</unimprovedSecondsSpentLimit>
                    </termination>
                    <unionMoveSelector>
                      <changeMoveSelector/>
                      <swapMoveSelector/>
                      <pillarChangeMoveSelector/>
                      <pillarSwapMoveSelector/>
                    </unionMoveSelector>
                    <acceptor>
                        <entityTabuSize>7</entityTabuSize>
                    </acceptor>
                    <forager>
                        <acceptedCountLimit>1000</acceptedCountLimit>
                    </forager>
                </localSearch>
                <ruin>
                    <percentageToRuin>${percentagesToRuin}</percentageToRuin>
                </ruin>
                <constructionHeuristic>
                  <constructionHeuristicType>FIRST_FIT_DECREASING</constructionHeuristicType>
                </constructionHeuristic>
                <localSearch>
                    <termination>
                        <unimprovedSecondsSpentLimit>30</unimprovedSecondsSpentLimit>
                    </termination>
                    <unionMoveSelector>
                      <changeMoveSelector/>
                      <swapMoveSelector/>
                      <pillarChangeMoveSelector/>
                      <pillarSwapMoveSelector/>
                    </unionMoveSelector>
                    <acceptor>
                        <entityTabuSize>7</entityTabuSize>
                    </acceptor>
                    <forager>
                        <acceptedCountLimit>1000</acceptedCountLimit>
                    </forager>
                </localSearch>
                <ruin>
                    <percentageToRuin>${percentagesToRuin}</percentageToRuin>
                </ruin>
                <constructionHeuristic>
                  <constructionHeuristicType>FIRST_FIT_DECREASING</constructionHeuristicType>
                </constructionHeuristic>
                <localSearch>
                    <termination>
                        <unimprovedSecondsSpentLimit>30</unimprovedSecondsSpentLimit>
                    </termination>
                    <unionMoveSelector>
                      <changeMoveSelector/>
                      <swapMoveSelector/>
                      <pillarChangeMoveSelector/>
                      <pillarSwapMoveSelector/>
                    </unionMoveSelector>
                    <acceptor>
                        <entityTabuSize>7</entityTabuSize>
                    </acceptor>
                    <forager>
                        <acceptedCountLimit>1000</acceptedCountLimit>
                    </forager>
                </localSearch>
                <ruin>
                    <percentageToRuin>${percentagesToRuin}</percentageToRuin>
                </ruin>
                <constructionHeuristic>
                  <constructionHeuristicType>FIRST_FIT_DECREASING</constructionHeuristicType>
                </constructionHeuristic>
                <localSearch>
                    <termination>
                        <unimprovedSecondsSpentLimit>30</unimprovedSecondsSpentLimit>
                    </termination>
                    <unionMoveSelector>
                      <changeMoveSelector/>
                      <swapMoveSelector/>
                      <pillarChangeMoveSelector/>
                      <pillarSwapMoveSelector/>
                    </unionMoveSelector>
                    <acceptor>
                        <entityTabuSize>7</entityTabuSize>
                    </acceptor>
                    <forager>
                        <acceptedCountLimit>1000</acceptedCountLimit>
                    </forager>
                </localSearch>
            </solver>
        </solverBenchmark>
        <solverBenchmark>
            <name>VehicleRouting ${nameSuffix}</name>
            <problemBenchmarks>
                <solutionFileIOClass>org.optaplanner.examples.vehiclerouting.persistence.VehicleRoutingFileIO</solutionFileIOClass>
                <inputSolutionFile>data/vehiclerouting/import/belgium/basic/air/belgium-n50-k10.vrp</inputSolutionFile>
                <inputSolutionFile>data/vehiclerouting/import/belgium/basic/air/belgium-n100-k10.vrp</inputSolutionFile>
                <inputSolutionFile>data/vehiclerouting/import/belgium/basic/air/belgium-n500-k20.vrp</inputSolutionFile>
            </problemBenchmarks>
            <solver>
                <solutionClass>org.optaplanner.examples.vehiclerouting.domain.VehicleRoutingSolution</solutionClass>
                <entityClass>org.optaplanner.examples.vehiclerouting.domain.Vehicle</entityClass>
                <entityClass>org.optaplanner.examples.vehiclerouting.domain.Customer</entityClass>
                <entityClass>org.optaplanner.examples.vehiclerouting.domain.timewindowed.TimeWindowedCustomer</entityClass>
                <scoreDirectorFactory>
                    <!--<easyScoreCalculatorClass>org.optaplanner.examples.vehiclerouting.optional.score.VehicleRoutingEasyScoreCalculator</easyScoreCalculatorClass>-->
                    <constraintProviderClass>org.optaplanner.examples.vehiclerouting.score.VehicleRoutingConstraintProvider</constraintProviderClass>
                    <!--<incrementalScoreCalculatorClass>org.optaplanner.examples.vehiclerouting.optional.score.VehicleRoutingIncrementalScoreCalculator</incrementalScoreCalculatorClass>-->
                    <initializingScoreTrend>ONLY_DOWN</initializingScoreTrend>
                </scoreDirectorFactory>
                <constructionHeuristic></constructionHeuristic>
                <localSearch>
                    <termination>
                        <unimprovedSecondsSpentLimit>60</unimprovedSecondsSpentLimit>
                    </termination>
                    <unionMoveSelector>
                        <listChangeMoveSelector>
                            <valueSelector id="1"/>
                            <destinationSelector>
                                <nearbySelection>
                                    <originValueSelector mimicSelectorRef="1"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </destinationSelector>
                        </listChangeMoveSelector>
                        <listSwapMoveSelector>
                            <valueSelector id="2"/>
                            <secondaryValueSelector>
                                <nearbySelection>
                                    <originValueSelector mimicSelectorRef="2"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </secondaryValueSelector>
                        </listSwapMoveSelector>
                        <subListChangeMoveSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                            <subListSelector id="3"/>
                            <destinationSelector>
                                <nearbySelection>
                                    <originSubListSelector mimicSelectorRef="3"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </destinationSelector>
                        </subListChangeMoveSelector>
                        <subListSwapMoveSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                            <subListSelector id="4"/>
                            <secondarySubListSelector>
                                <nearbySelection>
                                    <originSubListSelector mimicSelectorRef="4"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </secondarySubListSelector>
                        </subListSwapMoveSelector>
                        <kOptListMoveSelector/>
                    </unionMoveSelector>
                    <acceptor>
                        <lateAcceptanceSize>200</lateAcceptanceSize>
                    </acceptor>
                    <forager>
                        <acceptedCountLimit>1</acceptedCountLimit>
                    </forager>
                </localSearch>
                <ruin>
                    <percentageToRuin>${percentagesToRuin}</percentageToRuin>
                </ruin>
                <constructionHeuristic></constructionHeuristic>
                <localSearch>
                    <termination>
                        <unimprovedSecondsSpentLimit>30</unimprovedSecondsSpentLimit>
                    </termination>
                    <unionMoveSelector>
                        <listChangeMoveSelector>
                            <valueSelector id="1"/>
                            <destinationSelector>
                                <nearbySelection>
                                    <originValueSelector mimicSelectorRef="1"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </destinationSelector>
                        </listChangeMoveSelector>
                        <listSwapMoveSelector>
                            <valueSelector id="2"/>
                            <secondaryValueSelector>
                                <nearbySelection>
                                    <originValueSelector mimicSelectorRef="2"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </secondaryValueSelector>
                        </listSwapMoveSelector>
                        <subListChangeMoveSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                            <subListSelector id="3"/>
                            <destinationSelector>
                                <nearbySelection>
                                    <originSubListSelector mimicSelectorRef="3"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </destinationSelector>
                        </subListChangeMoveSelector>
                        <subListSwapMoveSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                            <subListSelector id="4"/>
                            <secondarySubListSelector>
                                <nearbySelection>
                                    <originSubListSelector mimicSelectorRef="4"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </secondarySubListSelector>
                        </subListSwapMoveSelector>
                        <kOptListMoveSelector/>
                    </unionMoveSelector>
                    <acceptor>
                        <lateAcceptanceSize>200</lateAcceptanceSize>
                    </acceptor>
                    <forager>
                        <acceptedCountLimit>1</acceptedCountLimit>
                    </forager>
                </localSearch>
                <ruin>
                    <percentageToRuin>${percentagesToRuin}</percentageToRuin>
                </ruin>
                <constructionHeuristic></constructionHeuristic>
                <localSearch>
                    <termination>
                        <unimprovedSecondsSpentLimit>30</unimprovedSecondsSpentLimit>
                    </termination>
                    <unionMoveSelector>
                        <listChangeMoveSelector>
                            <valueSelector id="1"/>
                            <destinationSelector>
                                <nearbySelection>
                                    <originValueSelector mimicSelectorRef="1"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </destinationSelector>
                        </listChangeMoveSelector>
                        <listSwapMoveSelector>
                            <valueSelector id="2"/>
                            <secondaryValueSelector>
                                <nearbySelection>
                                    <originValueSelector mimicSelectorRef="2"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </secondaryValueSelector>
                        </listSwapMoveSelector>
                        <subListChangeMoveSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                            <subListSelector id="3"/>
                            <destinationSelector>
                                <nearbySelection>
                                    <originSubListSelector mimicSelectorRef="3"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </destinationSelector>
                        </subListChangeMoveSelector>
                        <subListSwapMoveSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                            <subListSelector id="4"/>
                            <secondarySubListSelector>
                                <nearbySelection>
                                    <originSubListSelector mimicSelectorRef="4"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </secondarySubListSelector>
                        </subListSwapMoveSelector>
                        <kOptListMoveSelector/>
                    </unionMoveSelector>
                    <acceptor>
                        <lateAcceptanceSize>200</lateAcceptanceSize>
                    </acceptor>
                    <forager>
                        <acceptedCountLimit>1</acceptedCountLimit>
                    </forager>
                </localSearch>
                <ruin>
                    <percentageToRuin>${percentagesToRuin}</percentageToRuin>
                </ruin>
                <constructionHeuristic></constructionHeuristic>
                <localSearch>
                    <termination>
                        <unimprovedSecondsSpentLimit>30</unimprovedSecondsSpentLimit>
                    </termination>
                    <unionMoveSelector>
                        <listChangeMoveSelector>
                            <valueSelector id="1"/>
                            <destinationSelector>
                                <nearbySelection>
                                    <originValueSelector mimicSelectorRef="1"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </destinationSelector>
                        </listChangeMoveSelector>
                        <listSwapMoveSelector>
                            <valueSelector id="2"/>
                            <secondaryValueSelector>
                                <nearbySelection>
                                    <originValueSelector mimicSelectorRef="2"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </secondaryValueSelector>
                        </listSwapMoveSelector>
                        <subListChangeMoveSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                            <subListSelector id="3"/>
                            <destinationSelector>
                                <nearbySelection>
                                    <originSubListSelector mimicSelectorRef="3"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </destinationSelector>
                        </subListChangeMoveSelector>
                        <subListSwapMoveSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                            <subListSelector id="4"/>
                            <secondarySubListSelector>
                                <nearbySelection>
                                    <originSubListSelector mimicSelectorRef="4"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </secondarySubListSelector>
                        </subListSwapMoveSelector>
                        <kOptListMoveSelector/>
                    </unionMoveSelector>
                    <acceptor>
                        <lateAcceptanceSize>200</lateAcceptanceSize>
                    </acceptor>
                    <forager>
                        <acceptedCountLimit>1</acceptedCountLimit>
                    </forager>
                </localSearch>
                <ruin>
                    <percentageToRuin>${percentagesToRuin}</percentageToRuin>
                </ruin>
                <constructionHeuristic></constructionHeuristic>
                <localSearch>
                    <termination>
                        <unimprovedSecondsSpentLimit>30</unimprovedSecondsSpentLimit>
                    </termination>
                    <unionMoveSelector>
                        <listChangeMoveSelector>
                            <valueSelector id="1"/>
                            <destinationSelector>
                                <nearbySelection>
                                    <originValueSelector mimicSelectorRef="1"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </destinationSelector>
                        </listChangeMoveSelector>
                        <listSwapMoveSelector>
                            <valueSelector id="2"/>
                            <secondaryValueSelector>
                                <nearbySelection>
                                    <originValueSelector mimicSelectorRef="2"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </secondaryValueSelector>
                        </listSwapMoveSelector>
                        <subListChangeMoveSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                            <subListSelector id="3"/>
                            <destinationSelector>
                                <nearbySelection>
                                    <originSubListSelector mimicSelectorRef="3"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </destinationSelector>
                        </subListChangeMoveSelector>
                        <subListSwapMoveSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                            <subListSelector id="4"/>
                            <secondarySubListSelector>
                                <nearbySelection>
                                    <originSubListSelector mimicSelectorRef="4"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </secondarySubListSelector>
                        </subListSwapMoveSelector>
                        <kOptListMoveSelector/>
                    </unionMoveSelector>
                    <acceptor>
                        <lateAcceptanceSize>200</lateAcceptanceSize>
                    </acceptor>
                    <forager>
                        <acceptedCountLimit>1</acceptedCountLimit>
                    </forager>
                </localSearch>
                <ruin>
                    <percentageToRuin>${percentagesToRuin}</percentageToRuin>
                </ruin>
                <constructionHeuristic></constructionHeuristic>
                <localSearch>
                    <termination>
                        <unimprovedSecondsSpentLimit>30</unimprovedSecondsSpentLimit>
                    </termination>
                    <unionMoveSelector>
                        <listChangeMoveSelector>
                            <valueSelector id="1"/>
                            <destinationSelector>
                                <nearbySelection>
                                    <originValueSelector mimicSelectorRef="1"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </destinationSelector>
                        </listChangeMoveSelector>
                        <listSwapMoveSelector>
                            <valueSelector id="2"/>
                            <secondaryValueSelector>
                                <nearbySelection>
                                    <originValueSelector mimicSelectorRef="2"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </secondaryValueSelector>
                        </listSwapMoveSelector>
                        <subListChangeMoveSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                            <subListSelector id="3"/>
                            <destinationSelector>
                                <nearbySelection>
                                    <originSubListSelector mimicSelectorRef="3"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </destinationSelector>
                        </subListChangeMoveSelector>
                        <subListSwapMoveSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                            <subListSelector id="4"/>
                            <secondarySubListSelector>
                                <nearbySelection>
                                    <originSubListSelector mimicSelectorRef="4"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </secondarySubListSelector>
                        </subListSwapMoveSelector>
                        <kOptListMoveSelector/>
                    </unionMoveSelector>
                    <acceptor>
                        <lateAcceptanceSize>200</lateAcceptanceSize>
                    </acceptor>
                    <forager>
                        <acceptedCountLimit>1</acceptedCountLimit>
                    </forager>
                </localSearch>
            </solver>
        </solverBenchmark>
        <solverBenchmark>
            <name>Traveling Salesman Problem ${nameSuffix}</name>
            <problemBenchmarks>
                <solutionFileIOClass>org.optaplanner.examples.tsp.persistence.TspFileIO</solutionFileIOClass>
                <inputSolutionFile>data/tsp/import/cook/air/st70.tsp</inputSolutionFile>
                <inputSolutionFile>data/tsp/import/cook/air/pcb442.tsp</inputSolutionFile>
                <inputSolutionFile>data/tsp/import/cook/air/lu980.tsp</inputSolutionFile>
            </problemBenchmarks>
            <solver>
                <solutionClass>org.optaplanner.examples.tsp.domain.TspSolution</solutionClass>
                <entityClass>org.optaplanner.examples.tsp.domain.Visit</entityClass>
                <scoreDirectorFactory>
                    <!--<easyScoreCalculatorClass>org.optaplanner.examples.tsp.optional.score.TspEasyScoreCalculator</easyScoreCalculatorClass>-->
                    <constraintProviderClass>org.optaplanner.examples.tsp.score.TspConstraintProvider</constraintProviderClass>
                    <!--<incrementalScoreCalculatorClass>org.optaplanner.examples.tsp.optional.score.TspIncrementalScoreCalculator</incrementalScoreCalculatorClass>-->
                    <initializingScoreTrend>ONLY_DOWN</initializingScoreTrend>
                </scoreDirectorFactory>
                <constructionHeuristic>
                    <constructionHeuristicType>FIRST_FIT_DECREASING</constructionHeuristicType>
                </constructionHeuristic>
                <localSearch>
                    <termination>
                        <unimprovedSecondsSpentLimit>60</unimprovedSecondsSpentLimit>
                    </termination>
                    <unionMoveSelector>
                        <changeMoveSelector>
                            <cacheType>STEP</cacheType>
                            <selectionOrder>SHUFFLED</selectionOrder>
                        </changeMoveSelector>
                        <changeMoveSelector>
                            <entitySelector id="entitySelector1"/>
                            <valueSelector>
                                <nearbySelection>
                                    <originEntitySelector mimicSelectorRef="entitySelector1"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.tsp.domain.solver.nearby.VisitNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </valueSelector>
                        </changeMoveSelector>
                        <swapMoveSelector>
                            <entitySelector id="entitySelector2"/>
                            <secondaryEntitySelector>
                                <nearbySelection>
                                    <originEntitySelector mimicSelectorRef="entitySelector2"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.tsp.domain.solver.nearby.VisitNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </secondaryEntitySelector>
                        </swapMoveSelector>
                        <tailChainSwapMoveSelector>
                            <entitySelector id="entitySelector3"/>
                            <valueSelector>
                                <nearbySelection>
                                    <originEntitySelector mimicSelectorRef="entitySelector3"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.tsp.domain.solver.nearby.VisitNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </valueSelector>
                        </tailChainSwapMoveSelector>
                        <subChainChangeMoveSelector>
                            <subChainSelector>
                                <maximumSubChainSize>50</maximumSubChainSize>
                            </subChainSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                        </subChainChangeMoveSelector>
                        <subChainSwapMoveSelector>
                            <subChainSelector>
                                <maximumSubChainSize>50</maximumSubChainSize>
                            </subChainSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                        </subChainSwapMoveSelector>
                    </unionMoveSelector>
                    <acceptor>
                        <lateAcceptanceSize>400</lateAcceptanceSize>
                    </acceptor>
                    <forager>
                        <acceptedCountLimit>1</acceptedCountLimit>
                    </forager>
                </localSearch>
                <ruin>
                    <percentageToRuin>${percentagesToRuin}</percentageToRuin>
                </ruin>
                <constructionHeuristic>
                    <constructionHeuristicType>FIRST_FIT_DECREASING</constructionHeuristicType>
                </constructionHeuristic>
                <localSearch>
                    <termination>
                        <unimprovedSecondsSpentLimit>30</unimprovedSecondsSpentLimit>
                    </termination>
                    <unionMoveSelector>
                        <changeMoveSelector>
                            <cacheType>STEP</cacheType>
                            <selectionOrder>SHUFFLED</selectionOrder>
                        </changeMoveSelector>
                        <changeMoveSelector>
                            <entitySelector id="entitySelector1"/>
                            <valueSelector>
                                <nearbySelection>
                                    <originEntitySelector mimicSelectorRef="entitySelector1"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.tsp.domain.solver.nearby.VisitNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </valueSelector>
                        </changeMoveSelector>
                        <swapMoveSelector>
                            <entitySelector id="entitySelector2"/>
                            <secondaryEntitySelector>
                                <nearbySelection>
                                    <originEntitySelector mimicSelectorRef="entitySelector2"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.tsp.domain.solver.nearby.VisitNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </secondaryEntitySelector>
                        </swapMoveSelector>
                        <tailChainSwapMoveSelector>
                            <entitySelector id="entitySelector3"/>
                            <valueSelector>
                                <nearbySelection>
                                    <originEntitySelector mimicSelectorRef="entitySelector3"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.tsp.domain.solver.nearby.VisitNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </valueSelector>
                        </tailChainSwapMoveSelector>
                        <subChainChangeMoveSelector>
                            <subChainSelector>
                                <maximumSubChainSize>50</maximumSubChainSize>
                            </subChainSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                        </subChainChangeMoveSelector>
                        <subChainSwapMoveSelector>
                            <subChainSelector>
                                <maximumSubChainSize>50</maximumSubChainSize>
                            </subChainSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                        </subChainSwapMoveSelector>
                    </unionMoveSelector>
                    <acceptor>
                        <lateAcceptanceSize>400</lateAcceptanceSize>
                    </acceptor>
                    <forager>
                        <acceptedCountLimit>1</acceptedCountLimit>
                    </forager>
                </localSearch>
                <ruin>
                    <percentageToRuin>${percentagesToRuin}</percentageToRuin>
                </ruin>
                <constructionHeuristic>
                    <constructionHeuristicType>FIRST_FIT_DECREASING</constructionHeuristicType>
                </constructionHeuristic>
                <localSearch>
                    <termination>
                        <unimprovedSecondsSpentLimit>30</unimprovedSecondsSpentLimit>
                    </termination>
                    <unionMoveSelector>
                        <changeMoveSelector>
                            <cacheType>STEP</cacheType>
                            <selectionOrder>SHUFFLED</selectionOrder>
                        </changeMoveSelector>
                        <changeMoveSelector>
                            <entitySelector id="entitySelector1"/>
                            <valueSelector>
                                <nearbySelection>
                                    <originEntitySelector mimicSelectorRef="entitySelector1"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.tsp.domain.solver.nearby.VisitNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </valueSelector>
                        </changeMoveSelector>
                        <swapMoveSelector>
                            <entitySelector id="entitySelector2"/>
                            <secondaryEntitySelector>
                                <nearbySelection>
                                    <originEntitySelector mimicSelectorRef="entitySelector2"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.tsp.domain.solver.nearby.VisitNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </secondaryEntitySelector>
                        </swapMoveSelector>
                        <tailChainSwapMoveSelector>
                            <entitySelector id="entitySelector3"/>
                            <valueSelector>
                                <nearbySelection>
                                    <originEntitySelector mimicSelectorRef="entitySelector3"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.tsp.domain.solver.nearby.VisitNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </valueSelector>
                        </tailChainSwapMoveSelector>
                        <subChainChangeMoveSelector>
                            <subChainSelector>
                                <maximumSubChainSize>50</maximumSubChainSize>
                            </subChainSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                        </subChainChangeMoveSelector>
                        <subChainSwapMoveSelector>
                            <subChainSelector>
                                <maximumSubChainSize>50</maximumSubChainSize>
                            </subChainSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                        </subChainSwapMoveSelector>
                    </unionMoveSelector>
                    <acceptor>
                        <lateAcceptanceSize>400</lateAcceptanceSize>
                    </acceptor>
                    <forager>
                        <acceptedCountLimit>1</acceptedCountLimit>
                    </forager>
                </localSearch>
                <ruin>
                    <percentageToRuin>${percentagesToRuin}</percentageToRuin>
                </ruin>
                <constructionHeuristic>
                    <constructionHeuristicType>FIRST_FIT_DECREASING</constructionHeuristicType>
                </constructionHeuristic>
                <localSearch>
                    <termination>
                        <unimprovedSecondsSpentLimit>30</unimprovedSecondsSpentLimit>
                    </termination>
                    <unionMoveSelector>
                        <changeMoveSelector>
                            <cacheType>STEP</cacheType>
                            <selectionOrder>SHUFFLED</selectionOrder>
                        </changeMoveSelector>
                        <changeMoveSelector>
                            <entitySelector id="entitySelector1"/>
                            <valueSelector>
                                <nearbySelection>
                                    <originEntitySelector mimicSelectorRef="entitySelector1"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.tsp.domain.solver.nearby.VisitNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </valueSelector>
                        </changeMoveSelector>
                        <swapMoveSelector>
                            <entitySelector id="entitySelector2"/>
                            <secondaryEntitySelector>
                                <nearbySelection>
                                    <originEntitySelector mimicSelectorRef="entitySelector2"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.tsp.domain.solver.nearby.VisitNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </secondaryEntitySelector>
                        </swapMoveSelector>
                        <tailChainSwapMoveSelector>
                            <entitySelector id="entitySelector3"/>
                            <valueSelector>
                                <nearbySelection>
                                    <originEntitySelector mimicSelectorRef="entitySelector3"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.tsp.domain.solver.nearby.VisitNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </valueSelector>
                        </tailChainSwapMoveSelector>
                        <subChainChangeMoveSelector>
                            <subChainSelector>
                                <maximumSubChainSize>50</maximumSubChainSize>
                            </subChainSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                        </subChainChangeMoveSelector>
                        <subChainSwapMoveSelector>
                            <subChainSelector>
                                <maximumSubChainSize>50</maximumSubChainSize>
                            </subChainSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                        </subChainSwapMoveSelector>
                    </unionMoveSelector>
                    <acceptor>
                        <lateAcceptanceSize>400</lateAcceptanceSize>
                    </acceptor>
                    <forager>
                        <acceptedCountLimit>1</acceptedCountLimit>
                    </forager>
                </localSearch>
                <ruin>
                    <percentageToRuin>${percentagesToRuin}</percentageToRuin>
                </ruin>
                <constructionHeuristic>
                    <constructionHeuristicType>FIRST_FIT_DECREASING</constructionHeuristicType>
                </constructionHeuristic>
                <localSearch>
                    <termination>
                        <unimprovedSecondsSpentLimit>30</unimprovedSecondsSpentLimit>
                    </termination>
                    <unionMoveSelector>
                        <changeMoveSelector>
                            <cacheType>STEP</cacheType>
                            <selectionOrder>SHUFFLED</selectionOrder>
                        </changeMoveSelector>
                        <changeMoveSelector>
                            <entitySelector id="entitySelector1"/>
                            <valueSelector>
                                <nearbySelection>
                                    <originEntitySelector mimicSelectorRef="entitySelector1"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.tsp.domain.solver.nearby.VisitNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </valueSelector>
                        </changeMoveSelector>
                        <swapMoveSelector>
                            <entitySelector id="entitySelector2"/>
                            <secondaryEntitySelector>
                                <nearbySelection>
                                    <originEntitySelector mimicSelectorRef="entitySelector2"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.tsp.domain.solver.nearby.VisitNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </secondaryEntitySelector>
                        </swapMoveSelector>
                        <tailChainSwapMoveSelector>
                            <entitySelector id="entitySelector3"/>
                            <valueSelector>
                                <nearbySelection>
                                    <originEntitySelector mimicSelectorRef="entitySelector3"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.tsp.domain.solver.nearby.VisitNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </valueSelector>
                        </tailChainSwapMoveSelector>
                        <subChainChangeMoveSelector>
                            <subChainSelector>
                                <maximumSubChainSize>50</maximumSubChainSize>
                            </subChainSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                        </subChainChangeMoveSelector>
                        <subChainSwapMoveSelector>
                            <subChainSelector>
                                <maximumSubChainSize>50</maximumSubChainSize>
                            </subChainSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                        </subChainSwapMoveSelector>
                    </unionMoveSelector>
                    <acceptor>
                        <lateAcceptanceSize>400</lateAcceptanceSize>
                    </acceptor>
                    <forager>
                        <acceptedCountLimit>1</acceptedCountLimit>
                    </forager>
                </localSearch>
                <ruin>
                    <percentageToRuin>${percentagesToRuin}</percentageToRuin>
                </ruin>
                <constructionHeuristic>
                    <constructionHeuristicType>FIRST_FIT_DECREASING</constructionHeuristicType>
                </constructionHeuristic>
                <localSearch>
                    <termination>
                        <unimprovedSecondsSpentLimit>30</unimprovedSecondsSpentLimit>
                    </termination>
                    <unionMoveSelector>
                        <changeMoveSelector>
                            <cacheType>STEP</cacheType>
                            <selectionOrder>SHUFFLED</selectionOrder>
                        </changeMoveSelector>
                        <changeMoveSelector>
                            <entitySelector id="entitySelector1"/>
                            <valueSelector>
                                <nearbySelection>
                                    <originEntitySelector mimicSelectorRef="entitySelector1"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.tsp.domain.solver.nearby.VisitNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </valueSelector>
                        </changeMoveSelector>
                        <swapMoveSelector>
                            <entitySelector id="entitySelector2"/>
                            <secondaryEntitySelector>
                                <nearbySelection>
                                    <originEntitySelector mimicSelectorRef="entitySelector2"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.tsp.domain.solver.nearby.VisitNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </secondaryEntitySelector>
                        </swapMoveSelector>
                        <tailChainSwapMoveSelector>
                            <entitySelector id="entitySelector3"/>
                            <valueSelector>
                                <nearbySelection>
                                    <originEntitySelector mimicSelectorRef="entitySelector3"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.tsp.domain.solver.nearby.VisitNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </valueSelector>
                        </tailChainSwapMoveSelector>
                        <subChainChangeMoveSelector>
                            <subChainSelector>
                                <maximumSubChainSize>50</maximumSubChainSize>
                            </subChainSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                        </subChainChangeMoveSelector>
                        <subChainSwapMoveSelector>
                            <subChainSelector>
                                <maximumSubChainSize>50</maximumSubChainSize>
                            </subChainSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                        </subChainSwapMoveSelector>
                    </unionMoveSelector>
                    <acceptor>
                        <lateAcceptanceSize>400</lateAcceptanceSize>
                    </acceptor>
                    <forager>
                        <acceptedCountLimit>1</acceptedCountLimit>
                    </forager>
                </localSearch>
            </solver>
        </solverBenchmark>
        <!-- with nearby original ruin of different sizes -->
        <#assign nameSuffix = "with nearby original ${percentagesToRuin} percent ruin">
        <solverBenchmark>
            <name>Cloud Balancing ${nameSuffix}</name>
            <problemBenchmarks>
                <solutionFileIOClass>org.optaplanner.examples.cloudbalancing.persistence.CloudBalanceSolutionFileIO</solutionFileIOClass>
                <inputSolutionFile>data/cloudbalancing/unsolved/100computers-300processes.json</inputSolutionFile>
                <inputSolutionFile>data/cloudbalancing/unsolved/200computers-600processes.json</inputSolutionFile>
                <inputSolutionFile>data/cloudbalancing/unsolved/400computers-1200processes.json</inputSolutionFile>
            </problemBenchmarks>
            <solver>
                <solutionClass>org.optaplanner.examples.cloudbalancing.domain.CloudBalance</solutionClass>
                <entityClass>org.optaplanner.examples.cloudbalancing.domain.CloudProcess</entityClass>
                <scoreDirectorFactory>
                    <constraintProviderClass>org.optaplanner.examples.cloudbalancing.score.CloudBalancingConstraintProvider</constraintProviderClass>
                    <initializingScoreTrend>ONLY_DOWN</initializingScoreTrend>
                </scoreDirectorFactory>
                <constructionHeuristic>
                  <constructionHeuristicType>FIRST_FIT_DECREASING</constructionHeuristicType>
                </constructionHeuristic>
                <localSearch>
                    <termination>
                        <unimprovedSecondsSpentLimit>60</unimprovedSecondsSpentLimit>
                    </termination>
                    <unionMoveSelector>
                      <changeMoveSelector/>
                      <swapMoveSelector/>
                      <pillarChangeMoveSelector/>
                      <pillarSwapMoveSelector/>
                    </unionMoveSelector>
                    <acceptor>
                        <entityTabuSize>7</entityTabuSize>
                    </acceptor>
                    <forager>
                        <acceptedCountLimit>1000</acceptedCountLimit>
                    </forager>
                </localSearch>
                <ruin>
                    <percentageToRuin>${percentagesToRuin}</percentageToRuin>
                    <entitySelector id="entitySelector"></entitySelector>
                    <secondaryEntitySelector>
                        <selectionOrder>ORIGINAL</selectionOrder>
                        <nearbySelection>
                            <originEntitySelector mimicSelectorRef="entitySelector"/>
                            <nearbyDistanceMeterClass>org.optaplanner.examples.cloudbalancing.domain.solver.nearby.CloudProcessNearbyDistanceMeter</nearbyDistanceMeterClass>
                        </nearbySelection>
                    </secondaryEntitySelector>
                </ruin>
                <constructionHeuristic>
                  <constructionHeuristicType>FIRST_FIT_DECREASING</constructionHeuristicType>
                </constructionHeuristic>
                <localSearch>
                    <termination>
                        <unimprovedSecondsSpentLimit>30</unimprovedSecondsSpentLimit>
                    </termination>
                    <unionMoveSelector>
                      <changeMoveSelector/>
                      <swapMoveSelector/>
                      <pillarChangeMoveSelector/>
                      <pillarSwapMoveSelector/>
                    </unionMoveSelector>
                    <acceptor>
                        <entityTabuSize>7</entityTabuSize>
                    </acceptor>
                    <forager>
                        <acceptedCountLimit>1000</acceptedCountLimit>
                    </forager>
                </localSearch>
                <ruin>
                    <percentageToRuin>${percentagesToRuin}</percentageToRuin>
                    <entitySelector id="entitySelector"></entitySelector>
                    <secondaryEntitySelector>
                        <selectionOrder>ORIGINAL</selectionOrder>
                        <nearbySelection>
                            <originEntitySelector mimicSelectorRef="entitySelector"/>
                            <nearbyDistanceMeterClass>org.optaplanner.examples.cloudbalancing.domain.solver.nearby.CloudProcessNearbyDistanceMeter</nearbyDistanceMeterClass>
                        </nearbySelection>
                    </secondaryEntitySelector>
                </ruin>
                <constructionHeuristic>
                  <constructionHeuristicType>FIRST_FIT_DECREASING</constructionHeuristicType>
                </constructionHeuristic>
                <localSearch>
                    <termination>
                        <unimprovedSecondsSpentLimit>30</unimprovedSecondsSpentLimit>
                    </termination>
                    <unionMoveSelector>
                      <changeMoveSelector/>
                      <swapMoveSelector/>
                      <pillarChangeMoveSelector/>
                      <pillarSwapMoveSelector/>
                    </unionMoveSelector>
                    <acceptor>
                        <entityTabuSize>7</entityTabuSize>
                    </acceptor>
                    <forager>
                        <acceptedCountLimit>1000</acceptedCountLimit>
                    </forager>
                </localSearch>
                <ruin>
                    <percentageToRuin>${percentagesToRuin}</percentageToRuin>
                    <entitySelector id="entitySelector"></entitySelector>
                    <secondaryEntitySelector>
                        <selectionOrder>ORIGINAL</selectionOrder>
                        <nearbySelection>
                            <originEntitySelector mimicSelectorRef="entitySelector"/>
                            <nearbyDistanceMeterClass>org.optaplanner.examples.cloudbalancing.domain.solver.nearby.CloudProcessNearbyDistanceMeter</nearbyDistanceMeterClass>
                        </nearbySelection>
                    </secondaryEntitySelector>
                </ruin>
                <constructionHeuristic>
                  <constructionHeuristicType>FIRST_FIT_DECREASING</constructionHeuristicType>
                </constructionHeuristic>
                <localSearch>
                    <termination>
                        <unimprovedSecondsSpentLimit>30</unimprovedSecondsSpentLimit>
                    </termination>
                    <unionMoveSelector>
                      <changeMoveSelector/>
                      <swapMoveSelector/>
                      <pillarChangeMoveSelector/>
                      <pillarSwapMoveSelector/>
                    </unionMoveSelector>
                    <acceptor>
                        <entityTabuSize>7</entityTabuSize>
                    </acceptor>
                    <forager>
                        <acceptedCountLimit>1000</acceptedCountLimit>
                    </forager>
                </localSearch>
                <ruin>
                    <percentageToRuin>${percentagesToRuin}</percentageToRuin>
                    <entitySelector id="entitySelector"></entitySelector>
                    <secondaryEntitySelector>
                        <selectionOrder>ORIGINAL</selectionOrder>
                        <nearbySelection>
                            <originEntitySelector mimicSelectorRef="entitySelector"/>
                            <nearbyDistanceMeterClass>org.optaplanner.examples.cloudbalancing.domain.solver.nearby.CloudProcessNearbyDistanceMeter</nearbyDistanceMeterClass>
                        </nearbySelection>
                    </secondaryEntitySelector>
                </ruin>
                <constructionHeuristic>
                  <constructionHeuristicType>FIRST_FIT_DECREASING</constructionHeuristicType>
                </constructionHeuristic>
                <localSearch>
                    <termination>
                        <unimprovedSecondsSpentLimit>30</unimprovedSecondsSpentLimit>
                    </termination>
                    <unionMoveSelector>
                      <changeMoveSelector/>
                      <swapMoveSelector/>
                      <pillarChangeMoveSelector/>
                      <pillarSwapMoveSelector/>
                    </unionMoveSelector>
                    <acceptor>
                        <entityTabuSize>7</entityTabuSize>
                    </acceptor>
                    <forager>
                        <acceptedCountLimit>1000</acceptedCountLimit>
                    </forager>
                </localSearch>
                <ruin>
                    <percentageToRuin>${percentagesToRuin}</percentageToRuin>
                    <entitySelector id="entitySelector"></entitySelector>
                    <secondaryEntitySelector>
                        <selectionOrder>ORIGINAL</selectionOrder>
                        <nearbySelection>
                            <originEntitySelector mimicSelectorRef="entitySelector"/>
                            <nearbyDistanceMeterClass>org.optaplanner.examples.cloudbalancing.domain.solver.nearby.CloudProcessNearbyDistanceMeter</nearbyDistanceMeterClass>
                        </nearbySelection>
                    </secondaryEntitySelector>
                </ruin>
                <constructionHeuristic>
                  <constructionHeuristicType>FIRST_FIT_DECREASING</constructionHeuristicType>
                </constructionHeuristic>
                <localSearch>
                    <termination>
                        <unimprovedSecondsSpentLimit>30</unimprovedSecondsSpentLimit>
                    </termination>
                    <unionMoveSelector>
                      <changeMoveSelector/>
                      <swapMoveSelector/>
                      <pillarChangeMoveSelector/>
                      <pillarSwapMoveSelector/>
                    </unionMoveSelector>
                    <acceptor>
                        <entityTabuSize>7</entityTabuSize>
                    </acceptor>
                    <forager>
                        <acceptedCountLimit>1000</acceptedCountLimit>
                    </forager>
                </localSearch>
            </solver>
        </solverBenchmark>
        <solverBenchmark>
            <name>VehicleRouting ${nameSuffix}</name>
            <problemBenchmarks>
                <solutionFileIOClass>org.optaplanner.examples.vehiclerouting.persistence.VehicleRoutingFileIO</solutionFileIOClass>
                <inputSolutionFile>data/vehiclerouting/import/belgium/basic/air/belgium-n50-k10.vrp</inputSolutionFile>
                <inputSolutionFile>data/vehiclerouting/import/belgium/basic/air/belgium-n100-k10.vrp</inputSolutionFile>
                <inputSolutionFile>data/vehiclerouting/import/belgium/basic/air/belgium-n500-k20.vrp</inputSolutionFile>
            </problemBenchmarks>
            <solver>
                <solutionClass>org.optaplanner.examples.vehiclerouting.domain.VehicleRoutingSolution</solutionClass>
                <entityClass>org.optaplanner.examples.vehiclerouting.domain.Vehicle</entityClass>
                <entityClass>org.optaplanner.examples.vehiclerouting.domain.Customer</entityClass>
                <entityClass>org.optaplanner.examples.vehiclerouting.domain.timewindowed.TimeWindowedCustomer</entityClass>
                <scoreDirectorFactory>
                    <!--<easyScoreCalculatorClass>org.optaplanner.examples.vehiclerouting.optional.score.VehicleRoutingEasyScoreCalculator</easyScoreCalculatorClass>-->
                    <constraintProviderClass>org.optaplanner.examples.vehiclerouting.score.VehicleRoutingConstraintProvider</constraintProviderClass>
                    <!--<incrementalScoreCalculatorClass>org.optaplanner.examples.vehiclerouting.optional.score.VehicleRoutingIncrementalScoreCalculator</incrementalScoreCalculatorClass>-->
                    <initializingScoreTrend>ONLY_DOWN</initializingScoreTrend>
                </scoreDirectorFactory>
                <constructionHeuristic></constructionHeuristic>
                <localSearch>
                    <termination>
                        <unimprovedSecondsSpentLimit>60</unimprovedSecondsSpentLimit>
                    </termination>
                    <unionMoveSelector>
                        <listChangeMoveSelector>
                            <valueSelector id="1"/>
                            <destinationSelector>
                                <nearbySelection>
                                    <originValueSelector mimicSelectorRef="1"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </destinationSelector>
                        </listChangeMoveSelector>
                        <listSwapMoveSelector>
                            <valueSelector id="2"/>
                            <secondaryValueSelector>
                                <nearbySelection>
                                    <originValueSelector mimicSelectorRef="2"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </secondaryValueSelector>
                        </listSwapMoveSelector>
                        <subListChangeMoveSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                            <subListSelector id="3"/>
                            <destinationSelector>
                                <nearbySelection>
                                    <originSubListSelector mimicSelectorRef="3"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </destinationSelector>
                        </subListChangeMoveSelector>
                        <subListSwapMoveSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                            <subListSelector id="4"/>
                            <secondarySubListSelector>
                                <nearbySelection>
                                    <originSubListSelector mimicSelectorRef="4"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </secondarySubListSelector>
                        </subListSwapMoveSelector>
                        <kOptListMoveSelector/>
                    </unionMoveSelector>
                    <acceptor>
                        <lateAcceptanceSize>200</lateAcceptanceSize>
                    </acceptor>
                    <forager>
                        <acceptedCountLimit>1</acceptedCountLimit>
                    </forager>
                </localSearch>
                <ruin>
                    <percentageToRuin>${percentagesToRuin}</percentageToRuin>
                    <entitySelector id="entitySelector">
                        <entityClass>org.optaplanner.examples.vehiclerouting.domain.Customer</entityClass>
                    </entitySelector>
                    <secondaryEntitySelector>
                        <entityClass>org.optaplanner.examples.vehiclerouting.domain.Customer</entityClass>
                        <selectionOrder>ORIGINAL</selectionOrder>
                        <nearbySelection>
                            <originEntitySelector mimicSelectorRef="entitySelector"/>
                            <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                        </nearbySelection>
                    </secondaryEntitySelector>
                </ruin>
                <constructionHeuristic></constructionHeuristic>
                <localSearch>
                    <termination>
                        <unimprovedSecondsSpentLimit>30</unimprovedSecondsSpentLimit>
                    </termination>
                    <unionMoveSelector>
                        <listChangeMoveSelector>
                            <valueSelector id="1"/>
                            <destinationSelector>
                                <nearbySelection>
                                    <originValueSelector mimicSelectorRef="1"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </destinationSelector>
                        </listChangeMoveSelector>
                        <listSwapMoveSelector>
                            <valueSelector id="2"/>
                            <secondaryValueSelector>
                                <nearbySelection>
                                    <originValueSelector mimicSelectorRef="2"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </secondaryValueSelector>
                        </listSwapMoveSelector>
                        <subListChangeMoveSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                            <subListSelector id="3"/>
                            <destinationSelector>
                                <nearbySelection>
                                    <originSubListSelector mimicSelectorRef="3"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </destinationSelector>
                        </subListChangeMoveSelector>
                        <subListSwapMoveSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                            <subListSelector id="4"/>
                            <secondarySubListSelector>
                                <nearbySelection>
                                    <originSubListSelector mimicSelectorRef="4"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </secondarySubListSelector>
                        </subListSwapMoveSelector>
                        <kOptListMoveSelector/>
                    </unionMoveSelector>
                    <acceptor>
                        <lateAcceptanceSize>200</lateAcceptanceSize>
                    </acceptor>
                    <forager>
                        <acceptedCountLimit>1</acceptedCountLimit>
                    </forager>
                </localSearch>
                <ruin>
                    <percentageToRuin>${percentagesToRuin}</percentageToRuin>
                    <entitySelector id="entitySelector">
                        <entityClass>org.optaplanner.examples.vehiclerouting.domain.Customer</entityClass>
                    </entitySelector>
                    <secondaryEntitySelector>
                        <entityClass>org.optaplanner.examples.vehiclerouting.domain.Customer</entityClass>
                        <selectionOrder>ORIGINAL</selectionOrder>
                        <nearbySelection>
                            <originEntitySelector mimicSelectorRef="entitySelector"/>
                            <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                        </nearbySelection>
                    </secondaryEntitySelector>
                </ruin>
                <constructionHeuristic></constructionHeuristic>
                <localSearch>
                    <termination>
                        <unimprovedSecondsSpentLimit>30</unimprovedSecondsSpentLimit>
                    </termination>
                    <unionMoveSelector>
                        <listChangeMoveSelector>
                            <valueSelector id="1"/>
                            <destinationSelector>
                                <nearbySelection>
                                    <originValueSelector mimicSelectorRef="1"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </destinationSelector>
                        </listChangeMoveSelector>
                        <listSwapMoveSelector>
                            <valueSelector id="2"/>
                            <secondaryValueSelector>
                                <nearbySelection>
                                    <originValueSelector mimicSelectorRef="2"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </secondaryValueSelector>
                        </listSwapMoveSelector>
                        <subListChangeMoveSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                            <subListSelector id="3"/>
                            <destinationSelector>
                                <nearbySelection>
                                    <originSubListSelector mimicSelectorRef="3"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </destinationSelector>
                        </subListChangeMoveSelector>
                        <subListSwapMoveSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                            <subListSelector id="4"/>
                            <secondarySubListSelector>
                                <nearbySelection>
                                    <originSubListSelector mimicSelectorRef="4"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </secondarySubListSelector>
                        </subListSwapMoveSelector>
                        <kOptListMoveSelector/>
                    </unionMoveSelector>
                    <acceptor>
                        <lateAcceptanceSize>200</lateAcceptanceSize>
                    </acceptor>
                    <forager>
                        <acceptedCountLimit>1</acceptedCountLimit>
                    </forager>
                </localSearch>
                <ruin>
                    <percentageToRuin>${percentagesToRuin}</percentageToRuin>
                    <entitySelector id="entitySelector">
                        <entityClass>org.optaplanner.examples.vehiclerouting.domain.Customer</entityClass>
                    </entitySelector>
                    <secondaryEntitySelector>
                        <entityClass>org.optaplanner.examples.vehiclerouting.domain.Customer</entityClass>
                        <selectionOrder>ORIGINAL</selectionOrder>
                        <nearbySelection>
                            <originEntitySelector mimicSelectorRef="entitySelector"/>
                            <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                        </nearbySelection>
                    </secondaryEntitySelector>
                </ruin>
                <constructionHeuristic></constructionHeuristic>
                <localSearch>
                    <termination>
                        <unimprovedSecondsSpentLimit>30</unimprovedSecondsSpentLimit>
                    </termination>
                    <unionMoveSelector>
                        <listChangeMoveSelector>
                            <valueSelector id="1"/>
                            <destinationSelector>
                                <nearbySelection>
                                    <originValueSelector mimicSelectorRef="1"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </destinationSelector>
                        </listChangeMoveSelector>
                        <listSwapMoveSelector>
                            <valueSelector id="2"/>
                            <secondaryValueSelector>
                                <nearbySelection>
                                    <originValueSelector mimicSelectorRef="2"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </secondaryValueSelector>
                        </listSwapMoveSelector>
                        <subListChangeMoveSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                            <subListSelector id="3"/>
                            <destinationSelector>
                                <nearbySelection>
                                    <originSubListSelector mimicSelectorRef="3"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </destinationSelector>
                        </subListChangeMoveSelector>
                        <subListSwapMoveSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                            <subListSelector id="4"/>
                            <secondarySubListSelector>
                                <nearbySelection>
                                    <originSubListSelector mimicSelectorRef="4"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </secondarySubListSelector>
                        </subListSwapMoveSelector>
                        <kOptListMoveSelector/>
                    </unionMoveSelector>
                    <acceptor>
                        <lateAcceptanceSize>200</lateAcceptanceSize>
                    </acceptor>
                    <forager>
                        <acceptedCountLimit>1</acceptedCountLimit>
                    </forager>
                </localSearch>
                <ruin>
                    <percentageToRuin>${percentagesToRuin}</percentageToRuin>
                    <entitySelector id="entitySelector">
                        <entityClass>org.optaplanner.examples.vehiclerouting.domain.Customer</entityClass>
                    </entitySelector>
                    <secondaryEntitySelector>
                        <entityClass>org.optaplanner.examples.vehiclerouting.domain.Customer</entityClass>
                        <selectionOrder>ORIGINAL</selectionOrder>
                        <nearbySelection>
                            <originEntitySelector mimicSelectorRef="entitySelector"/>
                            <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                        </nearbySelection>
                    </secondaryEntitySelector>
                </ruin>
                <constructionHeuristic></constructionHeuristic>
                <localSearch>
                    <termination>
                        <unimprovedSecondsSpentLimit>30</unimprovedSecondsSpentLimit>
                    </termination>
                    <unionMoveSelector>
                        <listChangeMoveSelector>
                            <valueSelector id="1"/>
                            <destinationSelector>
                                <nearbySelection>
                                    <originValueSelector mimicSelectorRef="1"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </destinationSelector>
                        </listChangeMoveSelector>
                        <listSwapMoveSelector>
                            <valueSelector id="2"/>
                            <secondaryValueSelector>
                                <nearbySelection>
                                    <originValueSelector mimicSelectorRef="2"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </secondaryValueSelector>
                        </listSwapMoveSelector>
                        <subListChangeMoveSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                            <subListSelector id="3"/>
                            <destinationSelector>
                                <nearbySelection>
                                    <originSubListSelector mimicSelectorRef="3"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </destinationSelector>
                        </subListChangeMoveSelector>
                        <subListSwapMoveSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                            <subListSelector id="4"/>
                            <secondarySubListSelector>
                                <nearbySelection>
                                    <originSubListSelector mimicSelectorRef="4"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </secondarySubListSelector>
                        </subListSwapMoveSelector>
                        <kOptListMoveSelector/>
                    </unionMoveSelector>
                    <acceptor>
                        <lateAcceptanceSize>200</lateAcceptanceSize>
                    </acceptor>
                    <forager>
                        <acceptedCountLimit>1</acceptedCountLimit>
                    </forager>
                </localSearch>
                <ruin>
                    <percentageToRuin>${percentagesToRuin}</percentageToRuin>
                    <entitySelector id="entitySelector">
                        <entityClass>org.optaplanner.examples.vehiclerouting.domain.Customer</entityClass>
                    </entitySelector>
                    <secondaryEntitySelector>
                        <entityClass>org.optaplanner.examples.vehiclerouting.domain.Customer</entityClass>
                        <selectionOrder>ORIGINAL</selectionOrder>
                        <nearbySelection>
                            <originEntitySelector mimicSelectorRef="entitySelector"/>
                            <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                        </nearbySelection>
                    </secondaryEntitySelector>
                </ruin>
                <constructionHeuristic></constructionHeuristic>
                <localSearch>
                    <termination>
                        <unimprovedSecondsSpentLimit>30</unimprovedSecondsSpentLimit>
                    </termination>
                    <unionMoveSelector>
                        <listChangeMoveSelector>
                            <valueSelector id="1"/>
                            <destinationSelector>
                                <nearbySelection>
                                    <originValueSelector mimicSelectorRef="1"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </destinationSelector>
                        </listChangeMoveSelector>
                        <listSwapMoveSelector>
                            <valueSelector id="2"/>
                            <secondaryValueSelector>
                                <nearbySelection>
                                    <originValueSelector mimicSelectorRef="2"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </secondaryValueSelector>
                        </listSwapMoveSelector>
                        <subListChangeMoveSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                            <subListSelector id="3"/>
                            <destinationSelector>
                                <nearbySelection>
                                    <originSubListSelector mimicSelectorRef="3"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </destinationSelector>
                        </subListChangeMoveSelector>
                        <subListSwapMoveSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                            <subListSelector id="4"/>
                            <secondarySubListSelector>
                                <nearbySelection>
                                    <originSubListSelector mimicSelectorRef="4"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.vehiclerouting.domain.solver.nearby.CustomerNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <nearbySelectionDistributionType>PARABOLIC_DISTRIBUTION</nearbySelectionDistributionType>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </secondarySubListSelector>
                        </subListSwapMoveSelector>
                        <kOptListMoveSelector/>
                    </unionMoveSelector>
                    <acceptor>
                        <lateAcceptanceSize>200</lateAcceptanceSize>
                    </acceptor>
                    <forager>
                        <acceptedCountLimit>1</acceptedCountLimit>
                    </forager>
                </localSearch>
            </solver>
        </solverBenchmark>
        <solverBenchmark>
            <name>Traveling Salesman Problem ${nameSuffix}</name>
            <problemBenchmarks>
                <solutionFileIOClass>org.optaplanner.examples.tsp.persistence.TspFileIO</solutionFileIOClass>
                <inputSolutionFile>data/tsp/import/cook/air/st70.tsp</inputSolutionFile>
                <inputSolutionFile>data/tsp/import/cook/air/pcb442.tsp</inputSolutionFile>
                <inputSolutionFile>data/tsp/import/cook/air/lu980.tsp</inputSolutionFile>
            </problemBenchmarks>
            <solver>
                <solutionClass>org.optaplanner.examples.tsp.domain.TspSolution</solutionClass>
                <entityClass>org.optaplanner.examples.tsp.domain.Visit</entityClass>
                <scoreDirectorFactory>
                    <!--<easyScoreCalculatorClass>org.optaplanner.examples.tsp.optional.score.TspEasyScoreCalculator</easyScoreCalculatorClass>-->
                    <constraintProviderClass>org.optaplanner.examples.tsp.score.TspConstraintProvider</constraintProviderClass>
                    <!--<incrementalScoreCalculatorClass>org.optaplanner.examples.tsp.optional.score.TspIncrementalScoreCalculator</incrementalScoreCalculatorClass>-->
                    <initializingScoreTrend>ONLY_DOWN</initializingScoreTrend>
                </scoreDirectorFactory>
                <constructionHeuristic>
                    <constructionHeuristicType>FIRST_FIT_DECREASING</constructionHeuristicType>
                </constructionHeuristic>
                <localSearch>
                    <termination>
                        <unimprovedSecondsSpentLimit>60</unimprovedSecondsSpentLimit>
                    </termination>
                    <unionMoveSelector>
                        <changeMoveSelector>
                            <cacheType>STEP</cacheType>
                            <selectionOrder>SHUFFLED</selectionOrder>
                        </changeMoveSelector>
                        <changeMoveSelector>
                            <entitySelector id="entitySelector1"/>
                            <valueSelector>
                                <nearbySelection>
                                    <originEntitySelector mimicSelectorRef="entitySelector1"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.tsp.domain.solver.nearby.VisitNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </valueSelector>
                        </changeMoveSelector>
                        <swapMoveSelector>
                            <entitySelector id="entitySelector2"/>
                            <secondaryEntitySelector>
                                <nearbySelection>
                                    <originEntitySelector mimicSelectorRef="entitySelector2"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.tsp.domain.solver.nearby.VisitNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </secondaryEntitySelector>
                        </swapMoveSelector>
                        <tailChainSwapMoveSelector>
                            <entitySelector id="entitySelector3"/>
                            <valueSelector>
                                <nearbySelection>
                                    <originEntitySelector mimicSelectorRef="entitySelector3"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.tsp.domain.solver.nearby.VisitNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </valueSelector>
                        </tailChainSwapMoveSelector>
                        <subChainChangeMoveSelector>
                            <subChainSelector>
                                <maximumSubChainSize>50</maximumSubChainSize>
                            </subChainSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                        </subChainChangeMoveSelector>
                        <subChainSwapMoveSelector>
                            <subChainSelector>
                                <maximumSubChainSize>50</maximumSubChainSize>
                            </subChainSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                        </subChainSwapMoveSelector>
                    </unionMoveSelector>
                    <acceptor>
                        <lateAcceptanceSize>400</lateAcceptanceSize>
                    </acceptor>
                    <forager>
                        <acceptedCountLimit>1</acceptedCountLimit>
                    </forager>
                </localSearch>
                <ruin>
                    <percentageToRuin>${percentagesToRuin}</percentageToRuin>
                    <entitySelector id="entitySelector"/>
                    <secondaryEntitySelector>
                        <selectionOrder>ORIGINAL</selectionOrder>
                        <nearbySelection>
                            <originEntitySelector mimicSelectorRef="entitySelector"/>
                            <nearbyDistanceMeterClass>org.optaplanner.examples.tsp.domain.solver.nearby.VisitNearbyDistanceMeter</nearbyDistanceMeterClass>
                        </nearbySelection>
                    </secondaryEntitySelector>
                </ruin>
                <constructionHeuristic>
                    <constructionHeuristicType>FIRST_FIT_DECREASING</constructionHeuristicType>
                </constructionHeuristic>
                <localSearch>
                    <termination>
                        <unimprovedSecondsSpentLimit>30</unimprovedSecondsSpentLimit>
                    </termination>
                    <unionMoveSelector>
                        <changeMoveSelector>
                            <cacheType>STEP</cacheType>
                            <selectionOrder>SHUFFLED</selectionOrder>
                        </changeMoveSelector>
                        <changeMoveSelector>
                            <entitySelector id="entitySelector1"/>
                            <valueSelector>
                                <nearbySelection>
                                    <originEntitySelector mimicSelectorRef="entitySelector1"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.tsp.domain.solver.nearby.VisitNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </valueSelector>
                        </changeMoveSelector>
                        <swapMoveSelector>
                            <entitySelector id="entitySelector2"/>
                            <secondaryEntitySelector>
                                <nearbySelection>
                                    <originEntitySelector mimicSelectorRef="entitySelector2"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.tsp.domain.solver.nearby.VisitNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </secondaryEntitySelector>
                        </swapMoveSelector>
                        <tailChainSwapMoveSelector>
                            <entitySelector id="entitySelector3"/>
                            <valueSelector>
                                <nearbySelection>
                                    <originEntitySelector mimicSelectorRef="entitySelector3"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.tsp.domain.solver.nearby.VisitNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </valueSelector>
                        </tailChainSwapMoveSelector>
                        <subChainChangeMoveSelector>
                            <subChainSelector>
                                <maximumSubChainSize>50</maximumSubChainSize>
                            </subChainSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                        </subChainChangeMoveSelector>
                        <subChainSwapMoveSelector>
                            <subChainSelector>
                                <maximumSubChainSize>50</maximumSubChainSize>
                            </subChainSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                        </subChainSwapMoveSelector>
                    </unionMoveSelector>
                    <acceptor>
                        <lateAcceptanceSize>400</lateAcceptanceSize>
                    </acceptor>
                    <forager>
                        <acceptedCountLimit>1</acceptedCountLimit>
                    </forager>
                </localSearch>
                <ruin>
                    <percentageToRuin>${percentagesToRuin}</percentageToRuin>
                    <entitySelector id="entitySelector"/>
                    <secondaryEntitySelector>
                        <selectionOrder>ORIGINAL</selectionOrder>
                        <nearbySelection>
                            <originEntitySelector mimicSelectorRef="entitySelector"/>
                            <nearbyDistanceMeterClass>org.optaplanner.examples.tsp.domain.solver.nearby.VisitNearbyDistanceMeter</nearbyDistanceMeterClass>
                        </nearbySelection>
                    </secondaryEntitySelector>
                </ruin>
                <constructionHeuristic>
                    <constructionHeuristicType>FIRST_FIT_DECREASING</constructionHeuristicType>
                </constructionHeuristic>
                <localSearch>
                    <termination>
                        <unimprovedSecondsSpentLimit>30</unimprovedSecondsSpentLimit>
                    </termination>
                    <unionMoveSelector>
                        <changeMoveSelector>
                            <cacheType>STEP</cacheType>
                            <selectionOrder>SHUFFLED</selectionOrder>
                        </changeMoveSelector>
                        <changeMoveSelector>
                            <entitySelector id="entitySelector1"/>
                            <valueSelector>
                                <nearbySelection>
                                    <originEntitySelector mimicSelectorRef="entitySelector1"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.tsp.domain.solver.nearby.VisitNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </valueSelector>
                        </changeMoveSelector>
                        <swapMoveSelector>
                            <entitySelector id="entitySelector2"/>
                            <secondaryEntitySelector>
                                <nearbySelection>
                                    <originEntitySelector mimicSelectorRef="entitySelector2"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.tsp.domain.solver.nearby.VisitNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </secondaryEntitySelector>
                        </swapMoveSelector>
                        <tailChainSwapMoveSelector>
                            <entitySelector id="entitySelector3"/>
                            <valueSelector>
                                <nearbySelection>
                                    <originEntitySelector mimicSelectorRef="entitySelector3"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.tsp.domain.solver.nearby.VisitNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </valueSelector>
                        </tailChainSwapMoveSelector>
                        <subChainChangeMoveSelector>
                            <subChainSelector>
                                <maximumSubChainSize>50</maximumSubChainSize>
                            </subChainSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                        </subChainChangeMoveSelector>
                        <subChainSwapMoveSelector>
                            <subChainSelector>
                                <maximumSubChainSize>50</maximumSubChainSize>
                            </subChainSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                        </subChainSwapMoveSelector>
                    </unionMoveSelector>
                    <acceptor>
                        <lateAcceptanceSize>400</lateAcceptanceSize>
                    </acceptor>
                    <forager>
                        <acceptedCountLimit>1</acceptedCountLimit>
                    </forager>
                </localSearch>
                <ruin>
                    <percentageToRuin>${percentagesToRuin}</percentageToRuin>
                    <entitySelector id="entitySelector"/>
                    <secondaryEntitySelector>
                        <selectionOrder>ORIGINAL</selectionOrder>
                        <nearbySelection>
                            <originEntitySelector mimicSelectorRef="entitySelector"/>
                            <nearbyDistanceMeterClass>org.optaplanner.examples.tsp.domain.solver.nearby.VisitNearbyDistanceMeter</nearbyDistanceMeterClass>
                        </nearbySelection>
                    </secondaryEntitySelector>
                </ruin>
                <constructionHeuristic>
                    <constructionHeuristicType>FIRST_FIT_DECREASING</constructionHeuristicType>
                </constructionHeuristic>
                <localSearch>
                    <termination>
                        <unimprovedSecondsSpentLimit>30</unimprovedSecondsSpentLimit>
                    </termination>
                    <unionMoveSelector>
                        <changeMoveSelector>
                            <cacheType>STEP</cacheType>
                            <selectionOrder>SHUFFLED</selectionOrder>
                        </changeMoveSelector>
                        <changeMoveSelector>
                            <entitySelector id="entitySelector1"/>
                            <valueSelector>
                                <nearbySelection>
                                    <originEntitySelector mimicSelectorRef="entitySelector1"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.tsp.domain.solver.nearby.VisitNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </valueSelector>
                        </changeMoveSelector>
                        <swapMoveSelector>
                            <entitySelector id="entitySelector2"/>
                            <secondaryEntitySelector>
                                <nearbySelection>
                                    <originEntitySelector mimicSelectorRef="entitySelector2"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.tsp.domain.solver.nearby.VisitNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </secondaryEntitySelector>
                        </swapMoveSelector>
                        <tailChainSwapMoveSelector>
                            <entitySelector id="entitySelector3"/>
                            <valueSelector>
                                <nearbySelection>
                                    <originEntitySelector mimicSelectorRef="entitySelector3"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.tsp.domain.solver.nearby.VisitNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </valueSelector>
                        </tailChainSwapMoveSelector>
                        <subChainChangeMoveSelector>
                            <subChainSelector>
                                <maximumSubChainSize>50</maximumSubChainSize>
                            </subChainSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                        </subChainChangeMoveSelector>
                        <subChainSwapMoveSelector>
                            <subChainSelector>
                                <maximumSubChainSize>50</maximumSubChainSize>
                            </subChainSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                        </subChainSwapMoveSelector>
                    </unionMoveSelector>
                    <acceptor>
                        <lateAcceptanceSize>400</lateAcceptanceSize>
                    </acceptor>
                    <forager>
                        <acceptedCountLimit>1</acceptedCountLimit>
                    </forager>
                </localSearch>
                <ruin>
                    <percentageToRuin>${percentagesToRuin}</percentageToRuin>
                    <entitySelector id="entitySelector"/>
                    <secondaryEntitySelector>
                        <selectionOrder>ORIGINAL</selectionOrder>
                        <nearbySelection>
                            <originEntitySelector mimicSelectorRef="entitySelector"/>
                            <nearbyDistanceMeterClass>org.optaplanner.examples.tsp.domain.solver.nearby.VisitNearbyDistanceMeter</nearbyDistanceMeterClass>
                        </nearbySelection>
                    </secondaryEntitySelector>
                </ruin>
                <constructionHeuristic>
                    <constructionHeuristicType>FIRST_FIT_DECREASING</constructionHeuristicType>
                </constructionHeuristic>
                <localSearch>
                    <termination>
                        <unimprovedSecondsSpentLimit>30</unimprovedSecondsSpentLimit>
                    </termination>
                    <unionMoveSelector>
                        <changeMoveSelector>
                            <cacheType>STEP</cacheType>
                            <selectionOrder>SHUFFLED</selectionOrder>
                        </changeMoveSelector>
                        <changeMoveSelector>
                            <entitySelector id="entitySelector1"/>
                            <valueSelector>
                                <nearbySelection>
                                    <originEntitySelector mimicSelectorRef="entitySelector1"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.tsp.domain.solver.nearby.VisitNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </valueSelector>
                        </changeMoveSelector>
                        <swapMoveSelector>
                            <entitySelector id="entitySelector2"/>
                            <secondaryEntitySelector>
                                <nearbySelection>
                                    <originEntitySelector mimicSelectorRef="entitySelector2"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.tsp.domain.solver.nearby.VisitNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </secondaryEntitySelector>
                        </swapMoveSelector>
                        <tailChainSwapMoveSelector>
                            <entitySelector id="entitySelector3"/>
                            <valueSelector>
                                <nearbySelection>
                                    <originEntitySelector mimicSelectorRef="entitySelector3"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.tsp.domain.solver.nearby.VisitNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </valueSelector>
                        </tailChainSwapMoveSelector>
                        <subChainChangeMoveSelector>
                            <subChainSelector>
                                <maximumSubChainSize>50</maximumSubChainSize>
                            </subChainSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                        </subChainChangeMoveSelector>
                        <subChainSwapMoveSelector>
                            <subChainSelector>
                                <maximumSubChainSize>50</maximumSubChainSize>
                            </subChainSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                        </subChainSwapMoveSelector>
                    </unionMoveSelector>
                    <acceptor>
                        <lateAcceptanceSize>400</lateAcceptanceSize>
                    </acceptor>
                    <forager>
                        <acceptedCountLimit>1</acceptedCountLimit>
                    </forager>
                </localSearch>
                <ruin>
                    <percentageToRuin>${percentagesToRuin}</percentageToRuin>
                    <entitySelector id="entitySelector"/>
                    <secondaryEntitySelector>
                        <selectionOrder>ORIGINAL</selectionOrder>
                        <nearbySelection>
                            <originEntitySelector mimicSelectorRef="entitySelector"/>
                            <nearbyDistanceMeterClass>org.optaplanner.examples.tsp.domain.solver.nearby.VisitNearbyDistanceMeter</nearbyDistanceMeterClass>
                        </nearbySelection>
                    </secondaryEntitySelector>
                </ruin>
                <constructionHeuristic>
                    <constructionHeuristicType>FIRST_FIT_DECREASING</constructionHeuristicType>
                </constructionHeuristic>
                <localSearch>
                    <termination>
                        <unimprovedSecondsSpentLimit>30</unimprovedSecondsSpentLimit>
                    </termination>
                    <unionMoveSelector>
                        <changeMoveSelector>
                            <cacheType>STEP</cacheType>
                            <selectionOrder>SHUFFLED</selectionOrder>
                        </changeMoveSelector>
                        <changeMoveSelector>
                            <entitySelector id="entitySelector1"/>
                            <valueSelector>
                                <nearbySelection>
                                    <originEntitySelector mimicSelectorRef="entitySelector1"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.tsp.domain.solver.nearby.VisitNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </valueSelector>
                        </changeMoveSelector>
                        <swapMoveSelector>
                            <entitySelector id="entitySelector2"/>
                            <secondaryEntitySelector>
                                <nearbySelection>
                                    <originEntitySelector mimicSelectorRef="entitySelector2"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.tsp.domain.solver.nearby.VisitNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </secondaryEntitySelector>
                        </swapMoveSelector>
                        <tailChainSwapMoveSelector>
                            <entitySelector id="entitySelector3"/>
                            <valueSelector>
                                <nearbySelection>
                                    <originEntitySelector mimicSelectorRef="entitySelector3"/>
                                    <nearbyDistanceMeterClass>org.optaplanner.examples.tsp.domain.solver.nearby.VisitNearbyDistanceMeter</nearbyDistanceMeterClass>
                                    <parabolicDistributionSizeMaximum>40</parabolicDistributionSizeMaximum>
                                </nearbySelection>
                            </valueSelector>
                        </tailChainSwapMoveSelector>
                        <subChainChangeMoveSelector>
                            <subChainSelector>
                                <maximumSubChainSize>50</maximumSubChainSize>
                            </subChainSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                        </subChainChangeMoveSelector>
                        <subChainSwapMoveSelector>
                            <subChainSelector>
                                <maximumSubChainSize>50</maximumSubChainSize>
                            </subChainSelector>
                            <selectReversingMoveToo>true</selectReversingMoveToo>
                        </subChainSwapMoveSelector>
                    </unionMoveSelector>
                    <acceptor>
                        <lateAcceptanceSize>400</lateAcceptanceSize>
                    </acceptor>
                    <forager>
                        <acceptedCountLimit>1</acceptedCountLimit>
                    </forager>
                </localSearch>
            </solver>
        </solverBenchmark>
    </#list>
</plannerBenchmark>