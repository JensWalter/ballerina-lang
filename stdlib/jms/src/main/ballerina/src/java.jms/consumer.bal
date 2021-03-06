// Copyright (c) 2018 WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
//
// WSO2 Inc. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

# JMS consumer service object.
# This has the capability to bind multiple types of JMS consumer endpoints.
public type Consumer object {

    # Returns the endpoint bound to service
    #
    # + return - JMS consumer endpoint bound to the service
    public function getEndpoint() returns ConsumerTemplate {
        ConsumerTemplate ct = new;
        return ct;
    }
};

# Represent a JMS consumer endpoint
#
# + config - Used to store configurations related to a JMS connection
public type ConsumerTemplate object {

    public ConsumerEndpointConfiguration config = {};

    # Initialize the consumer endpoint
    #
    # + c - Configurations related to the endpoint
    public function init(ConsumerEndpointConfiguration c) {

    }

    # Registers consumer endpoint in the service
    #
    # + serviceType - type descriptor of the service
    public function register(typedesc<service> serviceType) {

    }

    # Starts the consumer endpoint
    public function start() {

    }

    # Stops the consumer endpoint
    public function stop() {

    }
};

# Configurations related to a JMS consumer object
#
# + session - JMS session used to create the consumer
# + identifier - Unique identifier of the consumer
public type ConsumerEndpointConfiguration record {|
    Session? session = ();
    string identifier = "";
|};
