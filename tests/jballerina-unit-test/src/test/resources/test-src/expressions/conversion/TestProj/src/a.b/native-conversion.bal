
import c.d;

function testJsonToRecord() returns d:Person|error {
    json j = {"name":"John", "age":30, "adrs": {"street": "20 Palm Grove", "city":"Colombo 03", "country":"Sri Lanka"}};
    var p = check d:Person.constructFrom(j);
    return p;
}

function testMapToRecord() returns d:Person|error {
    map<anydata> m1 = {"street": "20 Palm Grove", "city":"Colombo 03", "country":"Sri Lanka"};
    map<anydata> m2 = {"name":"John", "age":30, "adrs": m1};
    d:Person p = check d:Person.constructFrom(m2);
    return p;
}
