// Copyright (c) 2019 WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
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

import ballerina/'lang\.object as lang;

type Annot record {
    string val;
};

public annotation Annot v1 on type;
annotation Annot v2 on object type;
public annotation Annot v3 on function;
annotation map<int> v4 on object function;
public annotation Annot v5 on resource function;
annotation Annot v6 on parameter;
public annotation v7 on return;
annotation Annot v8 on service;

public const annotation map<string> v9 on source listener;
const annotation map<string> v10 on source annotation;
const annotation map<int> v11 on source var;
public const annotation map<string> v12 on source const;
const annotation map<string> v13 on source external;

@v2 {
    val: "v2"
}
@v3 {
    val: "v3"
}
@v4 {
    val: 4
}
@v5 {
    val: "v5"
}
@v6 {
    val: "v6"
}
@v7
@v8 {
    val: "v8"
}
@v9 {
    val: "v9"
}
@v10 {
    val: "v10"
}
@v11 {
    val: 11
}
@v12 {
    val: "v12"
}
@v13 {
    val: "v13"
}
public type T1 record {
    string name;
};

@v3 {
    val: "v3"
}
@v4 {
    val: 4
}
@v5 {
    val: "v5"
}
@v6 {
    val: "v6"
}
@v7
@v8 {
    val: "v8"
}
@v9 {
    val: "v9"
}
@v10 {
    val: "v10"
}
@v11 {
    val: 11
}
@v12 {
    val: "v12"
}
@v13 {
    val: "v13"
}
type T2 object {
    string name = "ballerina";

    @v1 {
        val: "v1"
    }
    @v2 {
        val: "v2"
    }
    @v5 {
        val: "v5"
    }
    @v6 {
        val: "v6"
    }
    @v7
    @v8 {
        val: "v8"
    }
    @v9 {
        val: "v9"
    }
    @v10 {
        val: "v10"
    }
    @v11 {
        val: 11
    }
    @v12 {
        val: "v12"
    }
    @v13 {
        val: "v13"
    }
    public function setName(string name) {
        self.name = name;
    }

    @v1 {
        val: "v1"
    }
    @v2 {
        val: "v2"
    }
    @v5 {
        val: "v5"
    }
    @v6 {
        val: "v6"
    }
    @v7
    @v8 {
        val: "v8"
    }
    @v9 {
        val: "v9"
    }
    @v10 {
        val: "v10"
    }
    @v11 {
        val: 11
    }
    @v12 {
        val: "v12"
    }
    @v13 {
        val: "v13"
    }
    public function getName() returns string { return self.name; }
};

//@v1 {
//    val: "v1"
//}
//@v2 {
//    val: "v2"
//}
//@v5 {
//    val: "v5"
//}
//@v6 {
//    val: "v6"
//}
//@v7
//@v8 {
//    val: "v8"
//}
//@v9 {
//    val: "v9"
//}
//@v10 {
//    val: "v10"
//}
//@v11 {
//    val: 11
//}
//@v12 {
//    val: "v12"
//}
//@v13 {
//    val: "v13"
//}
//public function T2.getName() returns string {
//    return self.name;
//}

@v1 {
    val: "v1"
}
@v2 {
    val: "v2"
}
@v4 {
    val: 4
}
@v5 {
    val: "v5"
}
@v6 {
    val: "v6"
}
@v7
@v8 {
    val: "v8"
}
@v9 {
    val: "v9"
}
@v10 {
    val: "v10"
}
@v11 {
    val: 11
}
@v12 {
    val: "v12"
}
@v13 {
    val: "v13"
}
public function func() returns int {
    return 1;
}

public function funcWithParam(@v1 {
                                val: "v1"
                            }
                            @v2 {
                                val: "v2"
                            }
                            @v3 {
                                val: "v2"
                            }
                            @v4 {
                                val: 4
                            }
                            @v5 {
                                val: "v5"
                            }
                            @v7
                            @v8 {
                                val: "v8"
                            }
                            @v9 {
                                val: "v9"
                            }
                            @v10 {
                                val: "v10"
                            }
                            @v11 {
                                val: 11
                            }
                            @v12 {
                                val: "v12"
                            }
                            @v13 {
                                val: "v13"
                            } string param) returns @v1 {
                                                        val: "v1"
                                                    }
                                                    @v2 {
                                                        val: "v2"
                                                    }
                                                    @v3 {
                                                        val: "v2"
                                                    }
                                                    @v4 {
                                                        val: 4
                                                    }
                                                    @v5 {
                                                        val: "v5"
                                                    }
                                                    @v6 {
                                                        val: "v6"
                                                    }
                                                    @v8 {
                                                        val: "v8"
                                                    }
                                                    @v9 {
                                                        val: "v9"
                                                    }
                                                    @v10 {
                                                        val: "v10"
                                                    }
                                                    @v11 {
                                                        val: 11
                                                    }
                                                    @v12 {
                                                        val: "v12"
                                                    }
                                                    @v13 {
                                                        val: "v13"
                                                    } int {
    return 1;
}

@v1 {
    val: "v1"
}
@v2 {
    val: "v2"
}
@v3 {
    val: "v3"
}
@v4 {
    val: 4
}
@v5 {
    val: "v5"
}
@v6 {
    val: "v6"
}
@v7
@v8 {
    val: "v8"
}
@v10 {
    val: "v10"
}
@v11 {
    val: 11
}
@v12 {
    val: "v12"
}
@v13 {
    val: "v13"
}
listener Listener lis = new;

@v1 {
    val: "v1"
}
@v2 {
    val: "v2"
}
@v3 {
    val: "v3"
}
@v4 {
    val: 4
}
@v5 {
    val: "v5"
}
@v6 {
    val: "v6"
}
@v7
@v9 {
    val: "v9"
}
@v10 {
    val: "v10"
}
@v11 {
    val: 11
}
@v12 {
    val: "v12"
}
@v13 {
    val: "v13"
}
service ser on lis {

    @v1 {
        val: "v1"
    }
    @v2 {
        val: "v2"
    }
    @v4 {
        val: 4
    }
    @v6 {
        val: "v6"
    }
    @v7
    @v8 {
        val: "v8"
    }
    @v9 {
        val: "v9"
    }
    @v10 {
        val: "v10"
    }
    @v11 {
        val: 11
    }
    @v12 {
        val: "v12"
    }
    @v13 {
        val: "v13"
    }
    resource function res() {

    }
}

type Listener object {
    *lang:AbstractListener;

    public function __init() {
    }

    public function __attach(service s, string? name = ()) returns error? {
    }

    public function __start() returns error? {
    }

    public function __stop() returns error? {
    }
};

@v1 {
    val: "v1"
}
@v2 {
    val: "v2"
}
@v3 {
    val: "v3"
}
@v4 {
    val: 4
}
@v5 {
    val: "v5"
}
@v6 {
    val: "v6"
}
@v7
@v8 {
    val: "v8"
}
@v9 {
    val: "v9"
}
@v11 {
    val: 11
}
@v12 {
    val: "v12"
}
@v13 {
    val: "v13"
}
const annotation map<string> v14 on source annotation;

@v1 {
    val: "v1"
}
@v2 {
    val: "v2"
}
@v3 {
    val: "v3"
}
@v4 {
    val: 4
}
@v5 {
    val: "v5"
}
@v6 {
    val: "v6"
}
@v7
@v8 {
    val: "v8"
}
@v9 {
    val: "v9"
}
@v10 {
    val: "v10"
}
@v12 {
    val: "v12"
}
@v13 {
    val: "v13"
}
int i = 12;

@v1 {
    val: "v1"
}
@v2 {
    val: "v2"
}
@v3 {
    val: "v3"
}
@v4 {
    val: 4
}
@v5 {
    val: "v5"
}
@v6 {
    val: "v6"
}
@v7
@v8 {
    val: "v8"
}
@v9 {
    val: "v9"
}
@v10 {
    val: "v10"
}
@v11 {
    val: 11
}
@v13 {
    val: "v13"
}
const f = 123.4;

function externalFunctionOne(int fi, float ff) returns int = @v1 {
                                                                val: "v1"
                                                            }
                                                            @v2 {
                                                                val: "v2"
                                                            }
                                                            @v3 {
                                                                val: "v3"
                                                            }
                                                            @v4 {
                                                                val: 4
                                                            }
                                                            @v5 {
                                                                val: "v5"
                                                            }
                                                            @v6 {
                                                                val: "v6"
                                                            }
                                                            @v7
                                                            @v8 {
                                                                val: "v8"
                                                            }
                                                            @v9 {
                                                                val: "v9"
                                                            }
                                                            @v10 {
                                                                val: "v10"
                                                            }
                                                            @v11 {
                                                                val: 11
                                                            }
                                                            @v12 {
                                                                val: "v12"
                                                            } external;

@v8 {
    val: "invalid"
}
service serVar =
@v1 {
    val: "v1"
}
@v2 {
    val: "v2"
}
@v3 {
    val: "v3"
}
@v4 {
    val: 4
}
@v5 {
    val: "v5"
}
@v6 {
    val: "v6"
}
@v7
@v9 {
    val: "v9"
}
@v10 {
    val: "v10"
}
@v11 {
    val: 11
}
@v12 {
    val: "v12"
}
@v13 {
    val: "v13"
}
service {

    resource function res() {

    }
};
