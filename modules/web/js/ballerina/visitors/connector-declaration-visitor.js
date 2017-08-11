/**
 * Copyright (c) 2017, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
 *
 * WSO2 Inc. licenses this file to you under the Apache License,
 * Version 2.0 (the "License"); you may not use this file except
 * in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */

/**
 * This will vist the tree to clear any offsets.
 *
 * @class ArrowConflictResolver
 */
import ASTFactory from './../ast/ballerina-ast-factory';

class ConnectorDeclarationVisitor {

    constructor() {
        this.connectorCount = 0;
    }

    canVisit() {
        return true;
    }

    visit(node) {
        return true;
    }

    beginVisit(node) {
        if (ASTFactory.isConnectorDeclaration(node)) {
            this.connectorCount += 1;
        }
    }

    endVisit(node) {
        return true;
    }
}

export default ConnectorDeclarationVisitor;
