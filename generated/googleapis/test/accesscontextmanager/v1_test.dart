library googleapis.accesscontextmanager.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/accesscontextmanager/v1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request
          .finalize()
          .transform(convert.utf8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.json.decode(jsonString));
        }
      });
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        return stream.toBytes().then((data) {
          return _callback(request, data);
        });
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.utf8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterAccessLevel = 0;
buildAccessLevel() {
  var o = new api.AccessLevel();
  buildCounterAccessLevel++;
  if (buildCounterAccessLevel < 3) {
    o.basic = buildBasicLevel();
    o.custom = buildCustomLevel();
    o.description = "foo";
    o.name = "foo";
    o.title = "foo";
  }
  buildCounterAccessLevel--;
  return o;
}

checkAccessLevel(api.AccessLevel o) {
  buildCounterAccessLevel++;
  if (buildCounterAccessLevel < 3) {
    checkBasicLevel(o.basic);
    checkCustomLevel(o.custom);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterAccessLevel--;
}

core.int buildCounterAccessPolicy = 0;
buildAccessPolicy() {
  var o = new api.AccessPolicy();
  buildCounterAccessPolicy++;
  if (buildCounterAccessPolicy < 3) {
    o.etag = "foo";
    o.name = "foo";
    o.parent = "foo";
    o.title = "foo";
  }
  buildCounterAccessPolicy--;
  return o;
}

checkAccessPolicy(api.AccessPolicy o) {
  buildCounterAccessPolicy++;
  if (buildCounterAccessPolicy < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.parent, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterAccessPolicy--;
}

buildUnnamed4353() {
  var o = new core.List<api.Condition>();
  o.add(buildCondition());
  o.add(buildCondition());
  return o;
}

checkUnnamed4353(core.List<api.Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCondition(o[0]);
  checkCondition(o[1]);
}

core.int buildCounterBasicLevel = 0;
buildBasicLevel() {
  var o = new api.BasicLevel();
  buildCounterBasicLevel++;
  if (buildCounterBasicLevel < 3) {
    o.combiningFunction = "foo";
    o.conditions = buildUnnamed4353();
  }
  buildCounterBasicLevel--;
  return o;
}

checkBasicLevel(api.BasicLevel o) {
  buildCounterBasicLevel++;
  if (buildCounterBasicLevel < 3) {
    unittest.expect(o.combiningFunction, unittest.equals('foo'));
    checkUnnamed4353(o.conditions);
  }
  buildCounterBasicLevel--;
}

core.int buildCounterCancelOperationRequest = 0;
buildCancelOperationRequest() {
  var o = new api.CancelOperationRequest();
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
  return o;
}

checkCancelOperationRequest(api.CancelOperationRequest o) {
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
}

core.int buildCounterCommitServicePerimetersRequest = 0;
buildCommitServicePerimetersRequest() {
  var o = new api.CommitServicePerimetersRequest();
  buildCounterCommitServicePerimetersRequest++;
  if (buildCounterCommitServicePerimetersRequest < 3) {
    o.etag = "foo";
  }
  buildCounterCommitServicePerimetersRequest--;
  return o;
}

checkCommitServicePerimetersRequest(api.CommitServicePerimetersRequest o) {
  buildCounterCommitServicePerimetersRequest++;
  if (buildCounterCommitServicePerimetersRequest < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
  }
  buildCounterCommitServicePerimetersRequest--;
}

buildUnnamed4354() {
  var o = new core.List<api.ServicePerimeter>();
  o.add(buildServicePerimeter());
  o.add(buildServicePerimeter());
  return o;
}

checkUnnamed4354(core.List<api.ServicePerimeter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServicePerimeter(o[0]);
  checkServicePerimeter(o[1]);
}

core.int buildCounterCommitServicePerimetersResponse = 0;
buildCommitServicePerimetersResponse() {
  var o = new api.CommitServicePerimetersResponse();
  buildCounterCommitServicePerimetersResponse++;
  if (buildCounterCommitServicePerimetersResponse < 3) {
    o.servicePerimeters = buildUnnamed4354();
  }
  buildCounterCommitServicePerimetersResponse--;
  return o;
}

checkCommitServicePerimetersResponse(api.CommitServicePerimetersResponse o) {
  buildCounterCommitServicePerimetersResponse++;
  if (buildCounterCommitServicePerimetersResponse < 3) {
    checkUnnamed4354(o.servicePerimeters);
  }
  buildCounterCommitServicePerimetersResponse--;
}

buildUnnamed4355() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4355(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4356() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4356(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4357() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4357(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4358() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4358(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCondition = 0;
buildCondition() {
  var o = new api.Condition();
  buildCounterCondition++;
  if (buildCounterCondition < 3) {
    o.devicePolicy = buildDevicePolicy();
    o.ipSubnetworks = buildUnnamed4355();
    o.members = buildUnnamed4356();
    o.negate = true;
    o.regions = buildUnnamed4357();
    o.requiredAccessLevels = buildUnnamed4358();
  }
  buildCounterCondition--;
  return o;
}

checkCondition(api.Condition o) {
  buildCounterCondition++;
  if (buildCounterCondition < 3) {
    checkDevicePolicy(o.devicePolicy);
    checkUnnamed4355(o.ipSubnetworks);
    checkUnnamed4356(o.members);
    unittest.expect(o.negate, unittest.isTrue);
    checkUnnamed4357(o.regions);
    checkUnnamed4358(o.requiredAccessLevels);
  }
  buildCounterCondition--;
}

core.int buildCounterCustomLevel = 0;
buildCustomLevel() {
  var o = new api.CustomLevel();
  buildCounterCustomLevel++;
  if (buildCounterCustomLevel < 3) {
    o.expr = buildExpr();
  }
  buildCounterCustomLevel--;
  return o;
}

checkCustomLevel(api.CustomLevel o) {
  buildCounterCustomLevel++;
  if (buildCounterCustomLevel < 3) {
    checkExpr(o.expr);
  }
  buildCounterCustomLevel--;
}

buildUnnamed4359() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4359(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4360() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4360(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4361() {
  var o = new core.List<api.OsConstraint>();
  o.add(buildOsConstraint());
  o.add(buildOsConstraint());
  return o;
}

checkUnnamed4361(core.List<api.OsConstraint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOsConstraint(o[0]);
  checkOsConstraint(o[1]);
}

core.int buildCounterDevicePolicy = 0;
buildDevicePolicy() {
  var o = new api.DevicePolicy();
  buildCounterDevicePolicy++;
  if (buildCounterDevicePolicy < 3) {
    o.allowedDeviceManagementLevels = buildUnnamed4359();
    o.allowedEncryptionStatuses = buildUnnamed4360();
    o.osConstraints = buildUnnamed4361();
    o.requireAdminApproval = true;
    o.requireCorpOwned = true;
    o.requireScreenlock = true;
  }
  buildCounterDevicePolicy--;
  return o;
}

checkDevicePolicy(api.DevicePolicy o) {
  buildCounterDevicePolicy++;
  if (buildCounterDevicePolicy < 3) {
    checkUnnamed4359(o.allowedDeviceManagementLevels);
    checkUnnamed4360(o.allowedEncryptionStatuses);
    checkUnnamed4361(o.osConstraints);
    unittest.expect(o.requireAdminApproval, unittest.isTrue);
    unittest.expect(o.requireCorpOwned, unittest.isTrue);
    unittest.expect(o.requireScreenlock, unittest.isTrue);
  }
  buildCounterDevicePolicy--;
}

core.int buildCounterEmpty = 0;
buildEmpty() {
  var o = new api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

core.int buildCounterExpr = 0;
buildExpr() {
  var o = new api.Expr();
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    o.description = "foo";
    o.expression = "foo";
    o.location = "foo";
    o.title = "foo";
  }
  buildCounterExpr--;
  return o;
}

checkExpr(api.Expr o) {
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.expression, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterExpr--;
}

buildUnnamed4362() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4362(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGcpUserAccessBinding = 0;
buildGcpUserAccessBinding() {
  var o = new api.GcpUserAccessBinding();
  buildCounterGcpUserAccessBinding++;
  if (buildCounterGcpUserAccessBinding < 3) {
    o.accessLevels = buildUnnamed4362();
    o.groupKey = "foo";
    o.name = "foo";
  }
  buildCounterGcpUserAccessBinding--;
  return o;
}

checkGcpUserAccessBinding(api.GcpUserAccessBinding o) {
  buildCounterGcpUserAccessBinding++;
  if (buildCounterGcpUserAccessBinding < 3) {
    checkUnnamed4362(o.accessLevels);
    unittest.expect(o.groupKey, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGcpUserAccessBinding--;
}

buildUnnamed4363() {
  var o = new core.List<api.AccessLevel>();
  o.add(buildAccessLevel());
  o.add(buildAccessLevel());
  return o;
}

checkUnnamed4363(core.List<api.AccessLevel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccessLevel(o[0]);
  checkAccessLevel(o[1]);
}

core.int buildCounterListAccessLevelsResponse = 0;
buildListAccessLevelsResponse() {
  var o = new api.ListAccessLevelsResponse();
  buildCounterListAccessLevelsResponse++;
  if (buildCounterListAccessLevelsResponse < 3) {
    o.accessLevels = buildUnnamed4363();
    o.nextPageToken = "foo";
  }
  buildCounterListAccessLevelsResponse--;
  return o;
}

checkListAccessLevelsResponse(api.ListAccessLevelsResponse o) {
  buildCounterListAccessLevelsResponse++;
  if (buildCounterListAccessLevelsResponse < 3) {
    checkUnnamed4363(o.accessLevels);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListAccessLevelsResponse--;
}

buildUnnamed4364() {
  var o = new core.List<api.AccessPolicy>();
  o.add(buildAccessPolicy());
  o.add(buildAccessPolicy());
  return o;
}

checkUnnamed4364(core.List<api.AccessPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccessPolicy(o[0]);
  checkAccessPolicy(o[1]);
}

core.int buildCounterListAccessPoliciesResponse = 0;
buildListAccessPoliciesResponse() {
  var o = new api.ListAccessPoliciesResponse();
  buildCounterListAccessPoliciesResponse++;
  if (buildCounterListAccessPoliciesResponse < 3) {
    o.accessPolicies = buildUnnamed4364();
    o.nextPageToken = "foo";
  }
  buildCounterListAccessPoliciesResponse--;
  return o;
}

checkListAccessPoliciesResponse(api.ListAccessPoliciesResponse o) {
  buildCounterListAccessPoliciesResponse++;
  if (buildCounterListAccessPoliciesResponse < 3) {
    checkUnnamed4364(o.accessPolicies);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListAccessPoliciesResponse--;
}

buildUnnamed4365() {
  var o = new core.List<api.GcpUserAccessBinding>();
  o.add(buildGcpUserAccessBinding());
  o.add(buildGcpUserAccessBinding());
  return o;
}

checkUnnamed4365(core.List<api.GcpUserAccessBinding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGcpUserAccessBinding(o[0]);
  checkGcpUserAccessBinding(o[1]);
}

core.int buildCounterListGcpUserAccessBindingsResponse = 0;
buildListGcpUserAccessBindingsResponse() {
  var o = new api.ListGcpUserAccessBindingsResponse();
  buildCounterListGcpUserAccessBindingsResponse++;
  if (buildCounterListGcpUserAccessBindingsResponse < 3) {
    o.gcpUserAccessBindings = buildUnnamed4365();
    o.nextPageToken = "foo";
  }
  buildCounterListGcpUserAccessBindingsResponse--;
  return o;
}

checkListGcpUserAccessBindingsResponse(
    api.ListGcpUserAccessBindingsResponse o) {
  buildCounterListGcpUserAccessBindingsResponse++;
  if (buildCounterListGcpUserAccessBindingsResponse < 3) {
    checkUnnamed4365(o.gcpUserAccessBindings);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListGcpUserAccessBindingsResponse--;
}

buildUnnamed4366() {
  var o = new core.List<api.Operation>();
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

checkUnnamed4366(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListOperationsResponse = 0;
buildListOperationsResponse() {
  var o = new api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = "foo";
    o.operations = buildUnnamed4366();
  }
  buildCounterListOperationsResponse--;
  return o;
}

checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4366(o.operations);
  }
  buildCounterListOperationsResponse--;
}

buildUnnamed4367() {
  var o = new core.List<api.ServicePerimeter>();
  o.add(buildServicePerimeter());
  o.add(buildServicePerimeter());
  return o;
}

checkUnnamed4367(core.List<api.ServicePerimeter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServicePerimeter(o[0]);
  checkServicePerimeter(o[1]);
}

core.int buildCounterListServicePerimetersResponse = 0;
buildListServicePerimetersResponse() {
  var o = new api.ListServicePerimetersResponse();
  buildCounterListServicePerimetersResponse++;
  if (buildCounterListServicePerimetersResponse < 3) {
    o.nextPageToken = "foo";
    o.servicePerimeters = buildUnnamed4367();
  }
  buildCounterListServicePerimetersResponse--;
  return o;
}

checkListServicePerimetersResponse(api.ListServicePerimetersResponse o) {
  buildCounterListServicePerimetersResponse++;
  if (buildCounterListServicePerimetersResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4367(o.servicePerimeters);
  }
  buildCounterListServicePerimetersResponse--;
}

buildUnnamed4368() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed4368(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted1["bool"], unittest.equals(true));
  unittest.expect(casted1["string"], unittest.equals('foo'));
  var casted2 = (o["y"]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted2["bool"], unittest.equals(true));
  unittest.expect(casted2["string"], unittest.equals('foo'));
}

buildUnnamed4369() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed4369(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o["x"]) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted3["bool"], unittest.equals(true));
  unittest.expect(casted3["string"], unittest.equals('foo'));
  var casted4 = (o["y"]) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted4["bool"], unittest.equals(true));
  unittest.expect(casted4["string"], unittest.equals('foo'));
}

core.int buildCounterOperation = 0;
buildOperation() {
  var o = new api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed4368();
    o.name = "foo";
    o.response = buildUnnamed4369();
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed4368(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4369(o.response);
  }
  buildCounterOperation--;
}

core.int buildCounterOsConstraint = 0;
buildOsConstraint() {
  var o = new api.OsConstraint();
  buildCounterOsConstraint++;
  if (buildCounterOsConstraint < 3) {
    o.minimumVersion = "foo";
    o.osType = "foo";
    o.requireVerifiedChromeOs = true;
  }
  buildCounterOsConstraint--;
  return o;
}

checkOsConstraint(api.OsConstraint o) {
  buildCounterOsConstraint++;
  if (buildCounterOsConstraint < 3) {
    unittest.expect(o.minimumVersion, unittest.equals('foo'));
    unittest.expect(o.osType, unittest.equals('foo'));
    unittest.expect(o.requireVerifiedChromeOs, unittest.isTrue);
  }
  buildCounterOsConstraint--;
}

buildUnnamed4370() {
  var o = new core.List<api.AccessLevel>();
  o.add(buildAccessLevel());
  o.add(buildAccessLevel());
  return o;
}

checkUnnamed4370(core.List<api.AccessLevel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccessLevel(o[0]);
  checkAccessLevel(o[1]);
}

core.int buildCounterReplaceAccessLevelsRequest = 0;
buildReplaceAccessLevelsRequest() {
  var o = new api.ReplaceAccessLevelsRequest();
  buildCounterReplaceAccessLevelsRequest++;
  if (buildCounterReplaceAccessLevelsRequest < 3) {
    o.accessLevels = buildUnnamed4370();
    o.etag = "foo";
  }
  buildCounterReplaceAccessLevelsRequest--;
  return o;
}

checkReplaceAccessLevelsRequest(api.ReplaceAccessLevelsRequest o) {
  buildCounterReplaceAccessLevelsRequest++;
  if (buildCounterReplaceAccessLevelsRequest < 3) {
    checkUnnamed4370(o.accessLevels);
    unittest.expect(o.etag, unittest.equals('foo'));
  }
  buildCounterReplaceAccessLevelsRequest--;
}

buildUnnamed4371() {
  var o = new core.List<api.AccessLevel>();
  o.add(buildAccessLevel());
  o.add(buildAccessLevel());
  return o;
}

checkUnnamed4371(core.List<api.AccessLevel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccessLevel(o[0]);
  checkAccessLevel(o[1]);
}

core.int buildCounterReplaceAccessLevelsResponse = 0;
buildReplaceAccessLevelsResponse() {
  var o = new api.ReplaceAccessLevelsResponse();
  buildCounterReplaceAccessLevelsResponse++;
  if (buildCounterReplaceAccessLevelsResponse < 3) {
    o.accessLevels = buildUnnamed4371();
  }
  buildCounterReplaceAccessLevelsResponse--;
  return o;
}

checkReplaceAccessLevelsResponse(api.ReplaceAccessLevelsResponse o) {
  buildCounterReplaceAccessLevelsResponse++;
  if (buildCounterReplaceAccessLevelsResponse < 3) {
    checkUnnamed4371(o.accessLevels);
  }
  buildCounterReplaceAccessLevelsResponse--;
}

buildUnnamed4372() {
  var o = new core.List<api.ServicePerimeter>();
  o.add(buildServicePerimeter());
  o.add(buildServicePerimeter());
  return o;
}

checkUnnamed4372(core.List<api.ServicePerimeter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServicePerimeter(o[0]);
  checkServicePerimeter(o[1]);
}

core.int buildCounterReplaceServicePerimetersRequest = 0;
buildReplaceServicePerimetersRequest() {
  var o = new api.ReplaceServicePerimetersRequest();
  buildCounterReplaceServicePerimetersRequest++;
  if (buildCounterReplaceServicePerimetersRequest < 3) {
    o.etag = "foo";
    o.servicePerimeters = buildUnnamed4372();
  }
  buildCounterReplaceServicePerimetersRequest--;
  return o;
}

checkReplaceServicePerimetersRequest(api.ReplaceServicePerimetersRequest o) {
  buildCounterReplaceServicePerimetersRequest++;
  if (buildCounterReplaceServicePerimetersRequest < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed4372(o.servicePerimeters);
  }
  buildCounterReplaceServicePerimetersRequest--;
}

buildUnnamed4373() {
  var o = new core.List<api.ServicePerimeter>();
  o.add(buildServicePerimeter());
  o.add(buildServicePerimeter());
  return o;
}

checkUnnamed4373(core.List<api.ServicePerimeter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServicePerimeter(o[0]);
  checkServicePerimeter(o[1]);
}

core.int buildCounterReplaceServicePerimetersResponse = 0;
buildReplaceServicePerimetersResponse() {
  var o = new api.ReplaceServicePerimetersResponse();
  buildCounterReplaceServicePerimetersResponse++;
  if (buildCounterReplaceServicePerimetersResponse < 3) {
    o.servicePerimeters = buildUnnamed4373();
  }
  buildCounterReplaceServicePerimetersResponse--;
  return o;
}

checkReplaceServicePerimetersResponse(api.ReplaceServicePerimetersResponse o) {
  buildCounterReplaceServicePerimetersResponse++;
  if (buildCounterReplaceServicePerimetersResponse < 3) {
    checkUnnamed4373(o.servicePerimeters);
  }
  buildCounterReplaceServicePerimetersResponse--;
}

core.int buildCounterServicePerimeter = 0;
buildServicePerimeter() {
  var o = new api.ServicePerimeter();
  buildCounterServicePerimeter++;
  if (buildCounterServicePerimeter < 3) {
    o.description = "foo";
    o.name = "foo";
    o.perimeterType = "foo";
    o.spec = buildServicePerimeterConfig();
    o.status = buildServicePerimeterConfig();
    o.title = "foo";
    o.useExplicitDryRunSpec = true;
  }
  buildCounterServicePerimeter--;
  return o;
}

checkServicePerimeter(api.ServicePerimeter o) {
  buildCounterServicePerimeter++;
  if (buildCounterServicePerimeter < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.perimeterType, unittest.equals('foo'));
    checkServicePerimeterConfig(o.spec);
    checkServicePerimeterConfig(o.status);
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.useExplicitDryRunSpec, unittest.isTrue);
  }
  buildCounterServicePerimeter--;
}

buildUnnamed4374() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4374(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4375() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4375(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4376() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4376(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterServicePerimeterConfig = 0;
buildServicePerimeterConfig() {
  var o = new api.ServicePerimeterConfig();
  buildCounterServicePerimeterConfig++;
  if (buildCounterServicePerimeterConfig < 3) {
    o.accessLevels = buildUnnamed4374();
    o.resources = buildUnnamed4375();
    o.restrictedServices = buildUnnamed4376();
    o.vpcAccessibleServices = buildVpcAccessibleServices();
  }
  buildCounterServicePerimeterConfig--;
  return o;
}

checkServicePerimeterConfig(api.ServicePerimeterConfig o) {
  buildCounterServicePerimeterConfig++;
  if (buildCounterServicePerimeterConfig < 3) {
    checkUnnamed4374(o.accessLevels);
    checkUnnamed4375(o.resources);
    checkUnnamed4376(o.restrictedServices);
    checkVpcAccessibleServices(o.vpcAccessibleServices);
  }
  buildCounterServicePerimeterConfig--;
}

buildUnnamed4377() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed4377(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o["x"]) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted5["bool"], unittest.equals(true));
  unittest.expect(casted5["string"], unittest.equals('foo'));
  var casted6 = (o["y"]) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted6["bool"], unittest.equals(true));
  unittest.expect(casted6["string"], unittest.equals('foo'));
}

buildUnnamed4378() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed4377());
  o.add(buildUnnamed4377());
  return o;
}

checkUnnamed4378(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed4377(o[0]);
  checkUnnamed4377(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed4378();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed4378(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

buildUnnamed4379() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4379(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterVpcAccessibleServices = 0;
buildVpcAccessibleServices() {
  var o = new api.VpcAccessibleServices();
  buildCounterVpcAccessibleServices++;
  if (buildCounterVpcAccessibleServices < 3) {
    o.allowedServices = buildUnnamed4379();
    o.enableRestriction = true;
  }
  buildCounterVpcAccessibleServices--;
  return o;
}

checkVpcAccessibleServices(api.VpcAccessibleServices o) {
  buildCounterVpcAccessibleServices++;
  if (buildCounterVpcAccessibleServices < 3) {
    checkUnnamed4379(o.allowedServices);
    unittest.expect(o.enableRestriction, unittest.isTrue);
  }
  buildCounterVpcAccessibleServices--;
}

main() {
  unittest.group("obj-schema-AccessLevel", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccessLevel();
      var od = new api.AccessLevel.fromJson(o.toJson());
      checkAccessLevel(od);
    });
  });

  unittest.group("obj-schema-AccessPolicy", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccessPolicy();
      var od = new api.AccessPolicy.fromJson(o.toJson());
      checkAccessPolicy(od);
    });
  });

  unittest.group("obj-schema-BasicLevel", () {
    unittest.test("to-json--from-json", () {
      var o = buildBasicLevel();
      var od = new api.BasicLevel.fromJson(o.toJson());
      checkBasicLevel(od);
    });
  });

  unittest.group("obj-schema-CancelOperationRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCancelOperationRequest();
      var od = new api.CancelOperationRequest.fromJson(o.toJson());
      checkCancelOperationRequest(od);
    });
  });

  unittest.group("obj-schema-CommitServicePerimetersRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommitServicePerimetersRequest();
      var od = new api.CommitServicePerimetersRequest.fromJson(o.toJson());
      checkCommitServicePerimetersRequest(od);
    });
  });

  unittest.group("obj-schema-CommitServicePerimetersResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommitServicePerimetersResponse();
      var od = new api.CommitServicePerimetersResponse.fromJson(o.toJson());
      checkCommitServicePerimetersResponse(od);
    });
  });

  unittest.group("obj-schema-Condition", () {
    unittest.test("to-json--from-json", () {
      var o = buildCondition();
      var od = new api.Condition.fromJson(o.toJson());
      checkCondition(od);
    });
  });

  unittest.group("obj-schema-CustomLevel", () {
    unittest.test("to-json--from-json", () {
      var o = buildCustomLevel();
      var od = new api.CustomLevel.fromJson(o.toJson());
      checkCustomLevel(od);
    });
  });

  unittest.group("obj-schema-DevicePolicy", () {
    unittest.test("to-json--from-json", () {
      var o = buildDevicePolicy();
      var od = new api.DevicePolicy.fromJson(o.toJson());
      checkDevicePolicy(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-Expr", () {
    unittest.test("to-json--from-json", () {
      var o = buildExpr();
      var od = new api.Expr.fromJson(o.toJson());
      checkExpr(od);
    });
  });

  unittest.group("obj-schema-GcpUserAccessBinding", () {
    unittest.test("to-json--from-json", () {
      var o = buildGcpUserAccessBinding();
      var od = new api.GcpUserAccessBinding.fromJson(o.toJson());
      checkGcpUserAccessBinding(od);
    });
  });

  unittest.group("obj-schema-ListAccessLevelsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListAccessLevelsResponse();
      var od = new api.ListAccessLevelsResponse.fromJson(o.toJson());
      checkListAccessLevelsResponse(od);
    });
  });

  unittest.group("obj-schema-ListAccessPoliciesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListAccessPoliciesResponse();
      var od = new api.ListAccessPoliciesResponse.fromJson(o.toJson());
      checkListAccessPoliciesResponse(od);
    });
  });

  unittest.group("obj-schema-ListGcpUserAccessBindingsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListGcpUserAccessBindingsResponse();
      var od = new api.ListGcpUserAccessBindingsResponse.fromJson(o.toJson());
      checkListGcpUserAccessBindingsResponse(od);
    });
  });

  unittest.group("obj-schema-ListOperationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListOperationsResponse();
      var od = new api.ListOperationsResponse.fromJson(o.toJson());
      checkListOperationsResponse(od);
    });
  });

  unittest.group("obj-schema-ListServicePerimetersResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListServicePerimetersResponse();
      var od = new api.ListServicePerimetersResponse.fromJson(o.toJson());
      checkListServicePerimetersResponse(od);
    });
  });

  unittest.group("obj-schema-Operation", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperation();
      var od = new api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });

  unittest.group("obj-schema-OsConstraint", () {
    unittest.test("to-json--from-json", () {
      var o = buildOsConstraint();
      var od = new api.OsConstraint.fromJson(o.toJson());
      checkOsConstraint(od);
    });
  });

  unittest.group("obj-schema-ReplaceAccessLevelsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildReplaceAccessLevelsRequest();
      var od = new api.ReplaceAccessLevelsRequest.fromJson(o.toJson());
      checkReplaceAccessLevelsRequest(od);
    });
  });

  unittest.group("obj-schema-ReplaceAccessLevelsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildReplaceAccessLevelsResponse();
      var od = new api.ReplaceAccessLevelsResponse.fromJson(o.toJson());
      checkReplaceAccessLevelsResponse(od);
    });
  });

  unittest.group("obj-schema-ReplaceServicePerimetersRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildReplaceServicePerimetersRequest();
      var od = new api.ReplaceServicePerimetersRequest.fromJson(o.toJson());
      checkReplaceServicePerimetersRequest(od);
    });
  });

  unittest.group("obj-schema-ReplaceServicePerimetersResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildReplaceServicePerimetersResponse();
      var od = new api.ReplaceServicePerimetersResponse.fromJson(o.toJson());
      checkReplaceServicePerimetersResponse(od);
    });
  });

  unittest.group("obj-schema-ServicePerimeter", () {
    unittest.test("to-json--from-json", () {
      var o = buildServicePerimeter();
      var od = new api.ServicePerimeter.fromJson(o.toJson());
      checkServicePerimeter(od);
    });
  });

  unittest.group("obj-schema-ServicePerimeterConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildServicePerimeterConfig();
      var od = new api.ServicePerimeterConfig.fromJson(o.toJson());
      checkServicePerimeterConfig(od);
    });
  });

  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group("obj-schema-VpcAccessibleServices", () {
    unittest.test("to-json--from-json", () {
      var o = buildVpcAccessibleServices();
      var od = new api.VpcAccessibleServices.fromJson(o.toJson());
      checkVpcAccessibleServices(od);
    });
  });

  unittest.group("resource-AccessPoliciesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.AccessPoliciesResourceApi res =
          new api.AccesscontextmanagerApi(mock).accessPolicies;
      var arg_request = buildAccessPolicy();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AccessPolicy.fromJson(json);
        checkAccessPolicy(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v1/accessPolicies"));
        pathOffset += 17;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.AccessPoliciesResourceApi res =
          new api.AccesscontextmanagerApi(mock).accessPolicies;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.AccessPoliciesResourceApi res =
          new api.AccesscontextmanagerApi(mock).accessPolicies;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAccessPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccessPolicy(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AccessPoliciesResourceApi res =
          new api.AccesscontextmanagerApi(mock).accessPolicies;
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v1/accessPolicies"));
        pathOffset += 17;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["parent"].first, unittest.equals(arg_parent));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListAccessPoliciesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              parent: arg_parent,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListAccessPoliciesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.AccessPoliciesResourceApi res =
          new api.AccesscontextmanagerApi(mock).accessPolicies;
      var arg_request = buildAccessPolicy();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AccessPolicy.fromJson(json);
        checkAccessPolicy(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-AccessPoliciesAccessLevelsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.AccessPoliciesAccessLevelsResourceApi res =
          new api.AccesscontextmanagerApi(mock).accessPolicies.accessLevels;
      var arg_request = buildAccessLevel();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AccessLevel.fromJson(json);
        checkAccessLevel(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.AccessPoliciesAccessLevelsResourceApi res =
          new api.AccesscontextmanagerApi(mock).accessPolicies.accessLevels;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.AccessPoliciesAccessLevelsResourceApi res =
          new api.AccesscontextmanagerApi(mock).accessPolicies.accessLevels;
      var arg_name = "foo";
      var arg_accessLevelFormat = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["accessLevelFormat"].first,
            unittest.equals(arg_accessLevelFormat));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAccessLevel());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name,
              accessLevelFormat: arg_accessLevelFormat, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccessLevel(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AccessPoliciesAccessLevelsResourceApi res =
          new api.AccesscontextmanagerApi(mock).accessPolicies.accessLevels;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_accessLevelFormat = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["accessLevelFormat"].first,
            unittest.equals(arg_accessLevelFormat));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListAccessLevelsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              accessLevelFormat: arg_accessLevelFormat,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListAccessLevelsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.AccessPoliciesAccessLevelsResourceApi res =
          new api.AccesscontextmanagerApi(mock).accessPolicies.accessLevels;
      var arg_request = buildAccessLevel();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AccessLevel.fromJson(json);
        checkAccessLevel(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--replaceAll", () {
      var mock = new HttpServerMock();
      api.AccessPoliciesAccessLevelsResourceApi res =
          new api.AccesscontextmanagerApi(mock).accessPolicies.accessLevels;
      var arg_request = buildReplaceAccessLevelsRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ReplaceAccessLevelsRequest.fromJson(json);
        checkReplaceAccessLevelsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .replaceAll(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-AccessPoliciesServicePerimetersResourceApi", () {
    unittest.test("method--commit", () {
      var mock = new HttpServerMock();
      api.AccessPoliciesServicePerimetersResourceApi res =
          new api.AccesscontextmanagerApi(mock)
              .accessPolicies
              .servicePerimeters;
      var arg_request = buildCommitServicePerimetersRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CommitServicePerimetersRequest.fromJson(json);
        checkCommitServicePerimetersRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .commit(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.AccessPoliciesServicePerimetersResourceApi res =
          new api.AccesscontextmanagerApi(mock)
              .accessPolicies
              .servicePerimeters;
      var arg_request = buildServicePerimeter();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ServicePerimeter.fromJson(json);
        checkServicePerimeter(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.AccessPoliciesServicePerimetersResourceApi res =
          new api.AccesscontextmanagerApi(mock)
              .accessPolicies
              .servicePerimeters;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.AccessPoliciesServicePerimetersResourceApi res =
          new api.AccesscontextmanagerApi(mock)
              .accessPolicies
              .servicePerimeters;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildServicePerimeter());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkServicePerimeter(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AccessPoliciesServicePerimetersResourceApi res =
          new api.AccesscontextmanagerApi(mock)
              .accessPolicies
              .servicePerimeters;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListServicePerimetersResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListServicePerimetersResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.AccessPoliciesServicePerimetersResourceApi res =
          new api.AccesscontextmanagerApi(mock)
              .accessPolicies
              .servicePerimeters;
      var arg_request = buildServicePerimeter();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ServicePerimeter.fromJson(json);
        checkServicePerimeter(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--replaceAll", () {
      var mock = new HttpServerMock();
      api.AccessPoliciesServicePerimetersResourceApi res =
          new api.AccesscontextmanagerApi(mock)
              .accessPolicies
              .servicePerimeters;
      var arg_request = buildReplaceServicePerimetersRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ReplaceServicePerimetersRequest.fromJson(json);
        checkReplaceServicePerimetersRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .replaceAll(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-OperationsResourceApi", () {
    unittest.test("method--cancel", () {
      var mock = new HttpServerMock();
      api.OperationsResourceApi res =
          new api.AccesscontextmanagerApi(mock).operations;
      var arg_request = buildCancelOperationRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CancelOperationRequest.fromJson(json);
        checkCancelOperationRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.OperationsResourceApi res =
          new api.AccesscontextmanagerApi(mock).operations;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OperationsResourceApi res =
          new api.AccesscontextmanagerApi(mock).operations;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OperationsResourceApi res =
          new api.AccesscontextmanagerApi(mock).operations;
      var arg_name = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_filter = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListOperationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOperationsResponse(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsGcpUserAccessBindingsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.OrganizationsGcpUserAccessBindingsResourceApi res =
          new api.AccesscontextmanagerApi(mock)
              .organizations
              .gcpUserAccessBindings;
      var arg_request = buildGcpUserAccessBinding();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GcpUserAccessBinding.fromJson(json);
        checkGcpUserAccessBinding(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.OrganizationsGcpUserAccessBindingsResourceApi res =
          new api.AccesscontextmanagerApi(mock)
              .organizations
              .gcpUserAccessBindings;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OrganizationsGcpUserAccessBindingsResourceApi res =
          new api.AccesscontextmanagerApi(mock)
              .organizations
              .gcpUserAccessBindings;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGcpUserAccessBinding());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGcpUserAccessBinding(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OrganizationsGcpUserAccessBindingsResourceApi res =
          new api.AccesscontextmanagerApi(mock)
              .organizations
              .gcpUserAccessBindings;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildListGcpUserAccessBindingsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListGcpUserAccessBindingsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.OrganizationsGcpUserAccessBindingsResourceApi res =
          new api.AccesscontextmanagerApi(mock)
              .organizations
              .gcpUserAccessBindings;
      var arg_request = buildGcpUserAccessBinding();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GcpUserAccessBinding.fromJson(json);
        checkGcpUserAccessBinding(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });
}
