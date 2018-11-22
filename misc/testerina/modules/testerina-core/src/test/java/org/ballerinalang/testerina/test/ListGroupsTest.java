/*
 *   Copyright (c) 2018, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
 *
 *   WSO2 Inc. licenses this file to you under the Apache License,
 *   Version 2.0 (the "License"); you may not use this file except
 *   in compliance with the License.
 *   You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 *   Unless required by applicable law or agreed to in writing,
 *   software distributed under the License is distributed on an
 *   "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 *   KIND, either express or implied.  See the License for the
 *   specific language governing permissions and limitations
 *   under the License.
 */

package org.ballerinalang.testerina.test;

import org.ballerinalang.testerina.core.BTestRunner;
import org.ballerinalang.testerina.core.TesterinaRegistry;
import org.ballerinalang.testerina.coverage.CoverageManager;
import org.testng.Assert;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.Test;

import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

/**
 * Test cases for list grouping.
 */
public class ListGroupsTest {

    @Test
    public void listGroupsTest() {

        String sourceRoot = "src/test/resources/annotations-test";
        Path[] filePaths = {Paths.get("groups-test.bal")};
        BTestRunner testRunner = new BTestRunner();
        List<String> resultList = new ArrayList<>(Arrays.asList("g1", "g2", "g3", "g4", "g5"));
        testRunner.listGroups(sourceRoot, filePaths);
        List<String> groupList = testRunner.getGroupList();
        Assert.assertTrue(resultList.containsAll(groupList));
    }

    @AfterMethod
    private void cleanup() {
        TesterinaRegistry.getInstance().setProgramFiles(new ArrayList<>());
        TesterinaRegistry.getInstance().setTestSuites(new HashMap<>());
        CoverageManager.getInstance().getExecutedInstructionOrderMap().clear();
    }

}
