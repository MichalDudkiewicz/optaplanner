/*
 * Copyright 2022 Red Hat, Inc. and/or its affiliates.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.optaplanner.constraint.streams.bavet.quad;

import java.util.function.Consumer;

import org.optaplanner.constraint.streams.bavet.common.Group;
import org.optaplanner.core.api.score.stream.quad.QuadConstraintCollector;

import org.optaplanner.constraint.streams.bavet.uni.UniTuple;

final class Group0Mapping1CollectorQuadNode<OldA, OldB, OldC, OldD, A, ResultContainer_>
        extends AbstractGroupQuadNode<OldA, OldB, OldC, OldD, UniTuple<A>, String, ResultContainer_, A> {

    private static final String NO_GROUP_KEY = "NO_GROUP";

    private final int outputStoreSize;

    public Group0Mapping1CollectorQuadNode(int groupStoreIndex,
                                           QuadConstraintCollector<OldA, OldB, OldC, OldD, ResultContainer_, A> collector,
                                           Consumer<UniTuple<A>> nextNodesInsert, Consumer<UniTuple<A>> nextNodesRetract,
                                           int outputStoreSize) {
        super(groupStoreIndex, collector, nextNodesInsert, nextNodesRetract);
        this.outputStoreSize = outputStoreSize;
    }

    @Override
    protected String createGroupKey(QuadTuple<OldA, OldB, OldC, OldD> tuple) {
        return NO_GROUP_KEY;
    }

    @Override
    protected UniTuple<A> createOutTuple(Group<UniTuple<A>, String, ResultContainer_> group) {
        ResultContainer_ resultContainer = group.resultContainer;
        A a = finisher.apply(resultContainer);
        return new UniTuple<>(a, outputStoreSize);
    }

    @Override
    public String toString() {
        return "GroupQuadNode 0+1";
    }
}