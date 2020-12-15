library googleapis.cloudidentity.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/cloudidentity/v1.dart' as api;

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

core.int buildCounterCheckTransitiveMembershipResponse = 0;
buildCheckTransitiveMembershipResponse() {
  var o = new api.CheckTransitiveMembershipResponse();
  buildCounterCheckTransitiveMembershipResponse++;
  if (buildCounterCheckTransitiveMembershipResponse < 3) {
    o.hasMembership = true;
  }
  buildCounterCheckTransitiveMembershipResponse--;
  return o;
}

checkCheckTransitiveMembershipResponse(
    api.CheckTransitiveMembershipResponse o) {
  buildCounterCheckTransitiveMembershipResponse++;
  if (buildCounterCheckTransitiveMembershipResponse < 3) {
    unittest.expect(o.hasMembership, unittest.isTrue);
  }
  buildCounterCheckTransitiveMembershipResponse--;
}

core.int buildCounterEntityKey = 0;
buildEntityKey() {
  var o = new api.EntityKey();
  buildCounterEntityKey++;
  if (buildCounterEntityKey < 3) {
    o.id = "foo";
    o.namespace = "foo";
  }
  buildCounterEntityKey--;
  return o;
}

checkEntityKey(api.EntityKey o) {
  buildCounterEntityKey++;
  if (buildCounterEntityKey < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.namespace, unittest.equals('foo'));
  }
  buildCounterEntityKey--;
}

buildUnnamed4400() {
  var o = new core.List<api.MembershipAdjacencyList>();
  o.add(buildMembershipAdjacencyList());
  o.add(buildMembershipAdjacencyList());
  return o;
}

checkUnnamed4400(core.List<api.MembershipAdjacencyList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembershipAdjacencyList(o[0]);
  checkMembershipAdjacencyList(o[1]);
}

buildUnnamed4401() {
  var o = new core.List<api.Group>();
  o.add(buildGroup());
  o.add(buildGroup());
  return o;
}

checkUnnamed4401(core.List<api.Group> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroup(o[0]);
  checkGroup(o[1]);
}

core.int buildCounterGetMembershipGraphResponse = 0;
buildGetMembershipGraphResponse() {
  var o = new api.GetMembershipGraphResponse();
  buildCounterGetMembershipGraphResponse++;
  if (buildCounterGetMembershipGraphResponse < 3) {
    o.adjacencyList = buildUnnamed4400();
    o.groups = buildUnnamed4401();
  }
  buildCounterGetMembershipGraphResponse--;
  return o;
}

checkGetMembershipGraphResponse(api.GetMembershipGraphResponse o) {
  buildCounterGetMembershipGraphResponse++;
  if (buildCounterGetMembershipGraphResponse < 3) {
    checkUnnamed4400(o.adjacencyList);
    checkUnnamed4401(o.groups);
  }
  buildCounterGetMembershipGraphResponse--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1AndroidAttributes = 0;
buildGoogleAppsCloudidentityDevicesV1AndroidAttributes() {
  var o = new api.GoogleAppsCloudidentityDevicesV1AndroidAttributes();
  buildCounterGoogleAppsCloudidentityDevicesV1AndroidAttributes++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1AndroidAttributes < 3) {
    o.enabledUnknownSources = true;
    o.ownerProfileAccount = true;
    o.ownershipPrivilege = "foo";
    o.supportsWorkProfile = true;
  }
  buildCounterGoogleAppsCloudidentityDevicesV1AndroidAttributes--;
  return o;
}

checkGoogleAppsCloudidentityDevicesV1AndroidAttributes(
    api.GoogleAppsCloudidentityDevicesV1AndroidAttributes o) {
  buildCounterGoogleAppsCloudidentityDevicesV1AndroidAttributes++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1AndroidAttributes < 3) {
    unittest.expect(o.enabledUnknownSources, unittest.isTrue);
    unittest.expect(o.ownerProfileAccount, unittest.isTrue);
    unittest.expect(o.ownershipPrivilege, unittest.equals('foo'));
    unittest.expect(o.supportsWorkProfile, unittest.isTrue);
  }
  buildCounterGoogleAppsCloudidentityDevicesV1AndroidAttributes--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest =
    0;
buildGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest() {
  var o = new api.GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest();
  buildCounterGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest <
      3) {
    o.customer = "foo";
  }
  buildCounterGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest--;
  return o;
}

checkGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest(
    api.GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest o) {
  buildCounterGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest <
      3) {
    unittest.expect(o.customer, unittest.equals('foo'));
  }
  buildCounterGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse =
    0;
buildGoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse() {
  var o = new api.GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse();
  buildCounterGoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse <
      3) {
    o.deviceUser = buildGoogleAppsCloudidentityDevicesV1DeviceUser();
  }
  buildCounterGoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse--;
  return o;
}

checkGoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse(
    api.GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse o) {
  buildCounterGoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse <
      3) {
    checkGoogleAppsCloudidentityDevicesV1DeviceUser(o.deviceUser);
  }
  buildCounterGoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest = 0;
buildGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest() {
  var o = new api.GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest();
  buildCounterGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest < 3) {
    o.customer = "foo";
  }
  buildCounterGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest--;
  return o;
}

checkGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest(
    api.GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest o) {
  buildCounterGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest < 3) {
    unittest.expect(o.customer, unittest.equals('foo'));
  }
  buildCounterGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse =
    0;
buildGoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse() {
  var o = new api.GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse();
  buildCounterGoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse < 3) {
    o.deviceUser = buildGoogleAppsCloudidentityDevicesV1DeviceUser();
  }
  buildCounterGoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse--;
  return o;
}

checkGoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse(
    api.GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse o) {
  buildCounterGoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse < 3) {
    checkGoogleAppsCloudidentityDevicesV1DeviceUser(o.deviceUser);
  }
  buildCounterGoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest =
    0;
buildGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest() {
  var o = new api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest();
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest < 3) {
    o.customer = "foo";
  }
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest--;
  return o;
}

checkGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest(
    api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest o) {
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest < 3) {
    unittest.expect(o.customer, unittest.equals('foo'));
  }
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse =
    0;
buildGoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse() {
  var o = new api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse();
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse <
      3) {
    o.device = buildGoogleAppsCloudidentityDevicesV1Device();
  }
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse--;
  return o;
}

checkGoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse(
    api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse o) {
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse <
      3) {
    checkGoogleAppsCloudidentityDevicesV1Device(o.device);
  }
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse--;
}

core.int
    buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest = 0;
buildGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest() {
  var o = new api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest();
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest <
      3) {
    o.customer = "foo";
  }
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest--;
  return o;
}

checkGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest(
    api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest o) {
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest <
      3) {
    unittest.expect(o.customer, unittest.equals('foo'));
  }
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest--;
}

core.int
    buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse =
    0;
buildGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse() {
  var o =
      new api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse();
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse <
      3) {
    o.deviceUser = buildGoogleAppsCloudidentityDevicesV1DeviceUser();
  }
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse--;
  return o;
}

checkGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse(
    api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse o) {
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse <
      3) {
    checkGoogleAppsCloudidentityDevicesV1DeviceUser(o.deviceUser);
  }
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse--;
}

buildUnnamed4402() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4402(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4403() {
  var o = new core.Map<core.String,
      api.GoogleAppsCloudidentityDevicesV1CustomAttributeValue>();
  o["x"] = buildGoogleAppsCloudidentityDevicesV1CustomAttributeValue();
  o["y"] = buildGoogleAppsCloudidentityDevicesV1CustomAttributeValue();
  return o;
}

checkUnnamed4403(
    core.Map<core.String,
            api.GoogleAppsCloudidentityDevicesV1CustomAttributeValue>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsCloudidentityDevicesV1CustomAttributeValue(o["x"]);
  checkGoogleAppsCloudidentityDevicesV1CustomAttributeValue(o["y"]);
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1ClientState = 0;
buildGoogleAppsCloudidentityDevicesV1ClientState() {
  var o = new api.GoogleAppsCloudidentityDevicesV1ClientState();
  buildCounterGoogleAppsCloudidentityDevicesV1ClientState++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ClientState < 3) {
    o.assetTags = buildUnnamed4402();
    o.complianceState = "foo";
    o.createTime = "foo";
    o.customId = "foo";
    o.etag = "foo";
    o.healthScore = "foo";
    o.keyValuePairs = buildUnnamed4403();
    o.lastUpdateTime = "foo";
    o.managed = "foo";
    o.name = "foo";
    o.ownerType = "foo";
    o.scoreReason = "foo";
  }
  buildCounterGoogleAppsCloudidentityDevicesV1ClientState--;
  return o;
}

checkGoogleAppsCloudidentityDevicesV1ClientState(
    api.GoogleAppsCloudidentityDevicesV1ClientState o) {
  buildCounterGoogleAppsCloudidentityDevicesV1ClientState++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ClientState < 3) {
    checkUnnamed4402(o.assetTags);
    unittest.expect(o.complianceState, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.customId, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.healthScore, unittest.equals('foo'));
    checkUnnamed4403(o.keyValuePairs);
    unittest.expect(o.lastUpdateTime, unittest.equals('foo'));
    unittest.expect(o.managed, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.ownerType, unittest.equals('foo'));
    unittest.expect(o.scoreReason, unittest.equals('foo'));
  }
  buildCounterGoogleAppsCloudidentityDevicesV1ClientState--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1CustomAttributeValue = 0;
buildGoogleAppsCloudidentityDevicesV1CustomAttributeValue() {
  var o = new api.GoogleAppsCloudidentityDevicesV1CustomAttributeValue();
  buildCounterGoogleAppsCloudidentityDevicesV1CustomAttributeValue++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1CustomAttributeValue < 3) {
    o.boolValue = true;
    o.numberValue = 42.0;
    o.stringValue = "foo";
  }
  buildCounterGoogleAppsCloudidentityDevicesV1CustomAttributeValue--;
  return o;
}

checkGoogleAppsCloudidentityDevicesV1CustomAttributeValue(
    api.GoogleAppsCloudidentityDevicesV1CustomAttributeValue o) {
  buildCounterGoogleAppsCloudidentityDevicesV1CustomAttributeValue++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1CustomAttributeValue < 3) {
    unittest.expect(o.boolValue, unittest.isTrue);
    unittest.expect(o.numberValue, unittest.equals(42.0));
    unittest.expect(o.stringValue, unittest.equals('foo'));
  }
  buildCounterGoogleAppsCloudidentityDevicesV1CustomAttributeValue--;
}

buildUnnamed4404() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4404(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4405() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4405(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1Device = 0;
buildGoogleAppsCloudidentityDevicesV1Device() {
  var o = new api.GoogleAppsCloudidentityDevicesV1Device();
  buildCounterGoogleAppsCloudidentityDevicesV1Device++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1Device < 3) {
    o.androidSpecificAttributes =
        buildGoogleAppsCloudidentityDevicesV1AndroidAttributes();
    o.assetTag = "foo";
    o.basebandVersion = "foo";
    o.bootloaderVersion = "foo";
    o.brand = "foo";
    o.buildNumber = "foo";
    o.compromisedState = "foo";
    o.createTime = "foo";
    o.deviceType = "foo";
    o.enabledDeveloperOptions = true;
    o.enabledUsbDebugging = true;
    o.encryptionState = "foo";
    o.imei = "foo";
    o.kernelVersion = "foo";
    o.lastSyncTime = "foo";
    o.managementState = "foo";
    o.manufacturer = "foo";
    o.meid = "foo";
    o.model = "foo";
    o.name = "foo";
    o.networkOperator = "foo";
    o.osVersion = "foo";
    o.otherAccounts = buildUnnamed4404();
    o.ownerType = "foo";
    o.releaseVersion = "foo";
    o.securityPatchTime = "foo";
    o.serialNumber = "foo";
    o.wifiMacAddresses = buildUnnamed4405();
  }
  buildCounterGoogleAppsCloudidentityDevicesV1Device--;
  return o;
}

checkGoogleAppsCloudidentityDevicesV1Device(
    api.GoogleAppsCloudidentityDevicesV1Device o) {
  buildCounterGoogleAppsCloudidentityDevicesV1Device++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1Device < 3) {
    checkGoogleAppsCloudidentityDevicesV1AndroidAttributes(
        o.androidSpecificAttributes);
    unittest.expect(o.assetTag, unittest.equals('foo'));
    unittest.expect(o.basebandVersion, unittest.equals('foo'));
    unittest.expect(o.bootloaderVersion, unittest.equals('foo'));
    unittest.expect(o.brand, unittest.equals('foo'));
    unittest.expect(o.buildNumber, unittest.equals('foo'));
    unittest.expect(o.compromisedState, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.deviceType, unittest.equals('foo'));
    unittest.expect(o.enabledDeveloperOptions, unittest.isTrue);
    unittest.expect(o.enabledUsbDebugging, unittest.isTrue);
    unittest.expect(o.encryptionState, unittest.equals('foo'));
    unittest.expect(o.imei, unittest.equals('foo'));
    unittest.expect(o.kernelVersion, unittest.equals('foo'));
    unittest.expect(o.lastSyncTime, unittest.equals('foo'));
    unittest.expect(o.managementState, unittest.equals('foo'));
    unittest.expect(o.manufacturer, unittest.equals('foo'));
    unittest.expect(o.meid, unittest.equals('foo'));
    unittest.expect(o.model, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.networkOperator, unittest.equals('foo'));
    unittest.expect(o.osVersion, unittest.equals('foo'));
    checkUnnamed4404(o.otherAccounts);
    unittest.expect(o.ownerType, unittest.equals('foo'));
    unittest.expect(o.releaseVersion, unittest.equals('foo'));
    unittest.expect(o.securityPatchTime, unittest.equals('foo'));
    unittest.expect(o.serialNumber, unittest.equals('foo'));
    checkUnnamed4405(o.wifiMacAddresses);
  }
  buildCounterGoogleAppsCloudidentityDevicesV1Device--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1DeviceUser = 0;
buildGoogleAppsCloudidentityDevicesV1DeviceUser() {
  var o = new api.GoogleAppsCloudidentityDevicesV1DeviceUser();
  buildCounterGoogleAppsCloudidentityDevicesV1DeviceUser++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1DeviceUser < 3) {
    o.compromisedState = "foo";
    o.createTime = "foo";
    o.firstSyncTime = "foo";
    o.languageCode = "foo";
    o.lastSyncTime = "foo";
    o.managementState = "foo";
    o.name = "foo";
    o.passwordState = "foo";
    o.userAgent = "foo";
    o.userEmail = "foo";
  }
  buildCounterGoogleAppsCloudidentityDevicesV1DeviceUser--;
  return o;
}

checkGoogleAppsCloudidentityDevicesV1DeviceUser(
    api.GoogleAppsCloudidentityDevicesV1DeviceUser o) {
  buildCounterGoogleAppsCloudidentityDevicesV1DeviceUser++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1DeviceUser < 3) {
    unittest.expect(o.compromisedState, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.firstSyncTime, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.lastSyncTime, unittest.equals('foo'));
    unittest.expect(o.managementState, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.passwordState, unittest.equals('foo'));
    unittest.expect(o.userAgent, unittest.equals('foo'));
    unittest.expect(o.userEmail, unittest.equals('foo'));
  }
  buildCounterGoogleAppsCloudidentityDevicesV1DeviceUser--;
}

buildUnnamed4406() {
  var o = new core.List<api.GoogleAppsCloudidentityDevicesV1ClientState>();
  o.add(buildGoogleAppsCloudidentityDevicesV1ClientState());
  o.add(buildGoogleAppsCloudidentityDevicesV1ClientState());
  return o;
}

checkUnnamed4406(core.List<api.GoogleAppsCloudidentityDevicesV1ClientState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsCloudidentityDevicesV1ClientState(o[0]);
  checkGoogleAppsCloudidentityDevicesV1ClientState(o[1]);
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1ListClientStatesResponse =
    0;
buildGoogleAppsCloudidentityDevicesV1ListClientStatesResponse() {
  var o = new api.GoogleAppsCloudidentityDevicesV1ListClientStatesResponse();
  buildCounterGoogleAppsCloudidentityDevicesV1ListClientStatesResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ListClientStatesResponse <
      3) {
    o.clientStates = buildUnnamed4406();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleAppsCloudidentityDevicesV1ListClientStatesResponse--;
  return o;
}

checkGoogleAppsCloudidentityDevicesV1ListClientStatesResponse(
    api.GoogleAppsCloudidentityDevicesV1ListClientStatesResponse o) {
  buildCounterGoogleAppsCloudidentityDevicesV1ListClientStatesResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ListClientStatesResponse <
      3) {
    checkUnnamed4406(o.clientStates);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleAppsCloudidentityDevicesV1ListClientStatesResponse--;
}

buildUnnamed4407() {
  var o = new core.List<api.GoogleAppsCloudidentityDevicesV1DeviceUser>();
  o.add(buildGoogleAppsCloudidentityDevicesV1DeviceUser());
  o.add(buildGoogleAppsCloudidentityDevicesV1DeviceUser());
  return o;
}

checkUnnamed4407(core.List<api.GoogleAppsCloudidentityDevicesV1DeviceUser> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsCloudidentityDevicesV1DeviceUser(o[0]);
  checkGoogleAppsCloudidentityDevicesV1DeviceUser(o[1]);
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse =
    0;
buildGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse() {
  var o = new api.GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse();
  buildCounterGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse < 3) {
    o.deviceUsers = buildUnnamed4407();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse--;
  return o;
}

checkGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse(
    api.GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse o) {
  buildCounterGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse < 3) {
    checkUnnamed4407(o.deviceUsers);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse--;
}

buildUnnamed4408() {
  var o = new core.List<api.GoogleAppsCloudidentityDevicesV1Device>();
  o.add(buildGoogleAppsCloudidentityDevicesV1Device());
  o.add(buildGoogleAppsCloudidentityDevicesV1Device());
  return o;
}

checkUnnamed4408(core.List<api.GoogleAppsCloudidentityDevicesV1Device> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsCloudidentityDevicesV1Device(o[0]);
  checkGoogleAppsCloudidentityDevicesV1Device(o[1]);
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1ListDevicesResponse = 0;
buildGoogleAppsCloudidentityDevicesV1ListDevicesResponse() {
  var o = new api.GoogleAppsCloudidentityDevicesV1ListDevicesResponse();
  buildCounterGoogleAppsCloudidentityDevicesV1ListDevicesResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ListDevicesResponse < 3) {
    o.devices = buildUnnamed4408();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleAppsCloudidentityDevicesV1ListDevicesResponse--;
  return o;
}

checkGoogleAppsCloudidentityDevicesV1ListDevicesResponse(
    api.GoogleAppsCloudidentityDevicesV1ListDevicesResponse o) {
  buildCounterGoogleAppsCloudidentityDevicesV1ListDevicesResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ListDevicesResponse < 3) {
    checkUnnamed4408(o.devices);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleAppsCloudidentityDevicesV1ListDevicesResponse--;
}

buildUnnamed4409() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4409(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
    buildCounterGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse =
    0;
buildGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse() {
  var o =
      new api.GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse();
  buildCounterGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse <
      3) {
    o.customer = "foo";
    o.names = buildUnnamed4409();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse--;
  return o;
}

checkGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse(
    api.GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse o) {
  buildCounterGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse <
      3) {
    unittest.expect(o.customer, unittest.equals('foo'));
    checkUnnamed4409(o.names);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceRequest = 0;
buildGoogleAppsCloudidentityDevicesV1WipeDeviceRequest() {
  var o = new api.GoogleAppsCloudidentityDevicesV1WipeDeviceRequest();
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceRequest++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceRequest < 3) {
    o.customer = "foo";
  }
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceRequest--;
  return o;
}

checkGoogleAppsCloudidentityDevicesV1WipeDeviceRequest(
    api.GoogleAppsCloudidentityDevicesV1WipeDeviceRequest o) {
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceRequest++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceRequest < 3) {
    unittest.expect(o.customer, unittest.equals('foo'));
  }
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceRequest--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceResponse = 0;
buildGoogleAppsCloudidentityDevicesV1WipeDeviceResponse() {
  var o = new api.GoogleAppsCloudidentityDevicesV1WipeDeviceResponse();
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceResponse < 3) {
    o.device = buildGoogleAppsCloudidentityDevicesV1Device();
  }
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceResponse--;
  return o;
}

checkGoogleAppsCloudidentityDevicesV1WipeDeviceResponse(
    api.GoogleAppsCloudidentityDevicesV1WipeDeviceResponse o) {
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceResponse < 3) {
    checkGoogleAppsCloudidentityDevicesV1Device(o.device);
  }
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceResponse--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest = 0;
buildGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest() {
  var o = new api.GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest();
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest < 3) {
    o.customer = "foo";
  }
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest--;
  return o;
}

checkGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest(
    api.GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest o) {
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest < 3) {
    unittest.expect(o.customer, unittest.equals('foo'));
  }
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse = 0;
buildGoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse() {
  var o = new api.GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse();
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse < 3) {
    o.deviceUser = buildGoogleAppsCloudidentityDevicesV1DeviceUser();
  }
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse--;
  return o;
}

checkGoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse(
    api.GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse o) {
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse < 3) {
    checkGoogleAppsCloudidentityDevicesV1DeviceUser(o.deviceUser);
  }
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse--;
}

buildUnnamed4410() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed4410(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterGroup = 0;
buildGroup() {
  var o = new api.Group();
  buildCounterGroup++;
  if (buildCounterGroup < 3) {
    o.createTime = "foo";
    o.description = "foo";
    o.displayName = "foo";
    o.groupKey = buildEntityKey();
    o.labels = buildUnnamed4410();
    o.name = "foo";
    o.parent = "foo";
    o.updateTime = "foo";
  }
  buildCounterGroup--;
  return o;
}

checkGroup(api.Group o) {
  buildCounterGroup++;
  if (buildCounterGroup < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkEntityKey(o.groupKey);
    checkUnnamed4410(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.parent, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGroup--;
}

buildUnnamed4411() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed4411(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed4412() {
  var o = new core.List<api.TransitiveMembershipRole>();
  o.add(buildTransitiveMembershipRole());
  o.add(buildTransitiveMembershipRole());
  return o;
}

checkUnnamed4412(core.List<api.TransitiveMembershipRole> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTransitiveMembershipRole(o[0]);
  checkTransitiveMembershipRole(o[1]);
}

core.int buildCounterGroupRelation = 0;
buildGroupRelation() {
  var o = new api.GroupRelation();
  buildCounterGroupRelation++;
  if (buildCounterGroupRelation < 3) {
    o.displayName = "foo";
    o.group = "foo";
    o.groupKey = buildEntityKey();
    o.labels = buildUnnamed4411();
    o.relationType = "foo";
    o.roles = buildUnnamed4412();
  }
  buildCounterGroupRelation--;
  return o;
}

checkGroupRelation(api.GroupRelation o) {
  buildCounterGroupRelation++;
  if (buildCounterGroupRelation < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.group, unittest.equals('foo'));
    checkEntityKey(o.groupKey);
    checkUnnamed4411(o.labels);
    unittest.expect(o.relationType, unittest.equals('foo'));
    checkUnnamed4412(o.roles);
  }
  buildCounterGroupRelation--;
}

buildUnnamed4413() {
  var o = new core.List<api.Group>();
  o.add(buildGroup());
  o.add(buildGroup());
  return o;
}

checkUnnamed4413(core.List<api.Group> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroup(o[0]);
  checkGroup(o[1]);
}

core.int buildCounterListGroupsResponse = 0;
buildListGroupsResponse() {
  var o = new api.ListGroupsResponse();
  buildCounterListGroupsResponse++;
  if (buildCounterListGroupsResponse < 3) {
    o.groups = buildUnnamed4413();
    o.nextPageToken = "foo";
  }
  buildCounterListGroupsResponse--;
  return o;
}

checkListGroupsResponse(api.ListGroupsResponse o) {
  buildCounterListGroupsResponse++;
  if (buildCounterListGroupsResponse < 3) {
    checkUnnamed4413(o.groups);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListGroupsResponse--;
}

buildUnnamed4414() {
  var o = new core.List<api.Membership>();
  o.add(buildMembership());
  o.add(buildMembership());
  return o;
}

checkUnnamed4414(core.List<api.Membership> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembership(o[0]);
  checkMembership(o[1]);
}

core.int buildCounterListMembershipsResponse = 0;
buildListMembershipsResponse() {
  var o = new api.ListMembershipsResponse();
  buildCounterListMembershipsResponse++;
  if (buildCounterListMembershipsResponse < 3) {
    o.memberships = buildUnnamed4414();
    o.nextPageToken = "foo";
  }
  buildCounterListMembershipsResponse--;
  return o;
}

checkListMembershipsResponse(api.ListMembershipsResponse o) {
  buildCounterListMembershipsResponse++;
  if (buildCounterListMembershipsResponse < 3) {
    checkUnnamed4414(o.memberships);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListMembershipsResponse--;
}

core.int buildCounterLookupGroupNameResponse = 0;
buildLookupGroupNameResponse() {
  var o = new api.LookupGroupNameResponse();
  buildCounterLookupGroupNameResponse++;
  if (buildCounterLookupGroupNameResponse < 3) {
    o.name = "foo";
  }
  buildCounterLookupGroupNameResponse--;
  return o;
}

checkLookupGroupNameResponse(api.LookupGroupNameResponse o) {
  buildCounterLookupGroupNameResponse++;
  if (buildCounterLookupGroupNameResponse < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLookupGroupNameResponse--;
}

core.int buildCounterLookupMembershipNameResponse = 0;
buildLookupMembershipNameResponse() {
  var o = new api.LookupMembershipNameResponse();
  buildCounterLookupMembershipNameResponse++;
  if (buildCounterLookupMembershipNameResponse < 3) {
    o.name = "foo";
  }
  buildCounterLookupMembershipNameResponse--;
  return o;
}

checkLookupMembershipNameResponse(api.LookupMembershipNameResponse o) {
  buildCounterLookupMembershipNameResponse++;
  if (buildCounterLookupMembershipNameResponse < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLookupMembershipNameResponse--;
}

buildUnnamed4415() {
  var o = new core.List<api.EntityKey>();
  o.add(buildEntityKey());
  o.add(buildEntityKey());
  return o;
}

checkUnnamed4415(core.List<api.EntityKey> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityKey(o[0]);
  checkEntityKey(o[1]);
}

buildUnnamed4416() {
  var o = new core.List<api.TransitiveMembershipRole>();
  o.add(buildTransitiveMembershipRole());
  o.add(buildTransitiveMembershipRole());
  return o;
}

checkUnnamed4416(core.List<api.TransitiveMembershipRole> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTransitiveMembershipRole(o[0]);
  checkTransitiveMembershipRole(o[1]);
}

core.int buildCounterMemberRelation = 0;
buildMemberRelation() {
  var o = new api.MemberRelation();
  buildCounterMemberRelation++;
  if (buildCounterMemberRelation < 3) {
    o.member = "foo";
    o.preferredMemberKey = buildUnnamed4415();
    o.relationType = "foo";
    o.roles = buildUnnamed4416();
  }
  buildCounterMemberRelation--;
  return o;
}

checkMemberRelation(api.MemberRelation o) {
  buildCounterMemberRelation++;
  if (buildCounterMemberRelation < 3) {
    unittest.expect(o.member, unittest.equals('foo'));
    checkUnnamed4415(o.preferredMemberKey);
    unittest.expect(o.relationType, unittest.equals('foo'));
    checkUnnamed4416(o.roles);
  }
  buildCounterMemberRelation--;
}

buildUnnamed4417() {
  var o = new core.List<api.MembershipRole>();
  o.add(buildMembershipRole());
  o.add(buildMembershipRole());
  return o;
}

checkUnnamed4417(core.List<api.MembershipRole> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembershipRole(o[0]);
  checkMembershipRole(o[1]);
}

core.int buildCounterMembership = 0;
buildMembership() {
  var o = new api.Membership();
  buildCounterMembership++;
  if (buildCounterMembership < 3) {
    o.createTime = "foo";
    o.name = "foo";
    o.preferredMemberKey = buildEntityKey();
    o.roles = buildUnnamed4417();
    o.type = "foo";
    o.updateTime = "foo";
  }
  buildCounterMembership--;
  return o;
}

checkMembership(api.Membership o) {
  buildCounterMembership++;
  if (buildCounterMembership < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkEntityKey(o.preferredMemberKey);
    checkUnnamed4417(o.roles);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterMembership--;
}

buildUnnamed4418() {
  var o = new core.List<api.Membership>();
  o.add(buildMembership());
  o.add(buildMembership());
  return o;
}

checkUnnamed4418(core.List<api.Membership> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembership(o[0]);
  checkMembership(o[1]);
}

core.int buildCounterMembershipAdjacencyList = 0;
buildMembershipAdjacencyList() {
  var o = new api.MembershipAdjacencyList();
  buildCounterMembershipAdjacencyList++;
  if (buildCounterMembershipAdjacencyList < 3) {
    o.edges = buildUnnamed4418();
    o.group = "foo";
  }
  buildCounterMembershipAdjacencyList--;
  return o;
}

checkMembershipAdjacencyList(api.MembershipAdjacencyList o) {
  buildCounterMembershipAdjacencyList++;
  if (buildCounterMembershipAdjacencyList < 3) {
    checkUnnamed4418(o.edges);
    unittest.expect(o.group, unittest.equals('foo'));
  }
  buildCounterMembershipAdjacencyList--;
}

core.int buildCounterMembershipRole = 0;
buildMembershipRole() {
  var o = new api.MembershipRole();
  buildCounterMembershipRole++;
  if (buildCounterMembershipRole < 3) {
    o.name = "foo";
  }
  buildCounterMembershipRole--;
  return o;
}

checkMembershipRole(api.MembershipRole o) {
  buildCounterMembershipRole++;
  if (buildCounterMembershipRole < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterMembershipRole--;
}

buildUnnamed4419() {
  var o = new core.List<api.MembershipRole>();
  o.add(buildMembershipRole());
  o.add(buildMembershipRole());
  return o;
}

checkUnnamed4419(core.List<api.MembershipRole> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembershipRole(o[0]);
  checkMembershipRole(o[1]);
}

buildUnnamed4420() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4420(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterModifyMembershipRolesRequest = 0;
buildModifyMembershipRolesRequest() {
  var o = new api.ModifyMembershipRolesRequest();
  buildCounterModifyMembershipRolesRequest++;
  if (buildCounterModifyMembershipRolesRequest < 3) {
    o.addRoles = buildUnnamed4419();
    o.removeRoles = buildUnnamed4420();
  }
  buildCounterModifyMembershipRolesRequest--;
  return o;
}

checkModifyMembershipRolesRequest(api.ModifyMembershipRolesRequest o) {
  buildCounterModifyMembershipRolesRequest++;
  if (buildCounterModifyMembershipRolesRequest < 3) {
    checkUnnamed4419(o.addRoles);
    checkUnnamed4420(o.removeRoles);
  }
  buildCounterModifyMembershipRolesRequest--;
}

core.int buildCounterModifyMembershipRolesResponse = 0;
buildModifyMembershipRolesResponse() {
  var o = new api.ModifyMembershipRolesResponse();
  buildCounterModifyMembershipRolesResponse++;
  if (buildCounterModifyMembershipRolesResponse < 3) {
    o.membership = buildMembership();
  }
  buildCounterModifyMembershipRolesResponse--;
  return o;
}

checkModifyMembershipRolesResponse(api.ModifyMembershipRolesResponse o) {
  buildCounterModifyMembershipRolesResponse++;
  if (buildCounterModifyMembershipRolesResponse < 3) {
    checkMembership(o.membership);
  }
  buildCounterModifyMembershipRolesResponse--;
}

buildUnnamed4421() {
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

checkUnnamed4421(core.Map<core.String, core.Object> o) {
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

buildUnnamed4422() {
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

checkUnnamed4422(core.Map<core.String, core.Object> o) {
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
    o.metadata = buildUnnamed4421();
    o.name = "foo";
    o.response = buildUnnamed4422();
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed4421(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4422(o.response);
  }
  buildCounterOperation--;
}

buildUnnamed4423() {
  var o = new core.List<api.Group>();
  o.add(buildGroup());
  o.add(buildGroup());
  return o;
}

checkUnnamed4423(core.List<api.Group> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroup(o[0]);
  checkGroup(o[1]);
}

core.int buildCounterSearchGroupsResponse = 0;
buildSearchGroupsResponse() {
  var o = new api.SearchGroupsResponse();
  buildCounterSearchGroupsResponse++;
  if (buildCounterSearchGroupsResponse < 3) {
    o.groups = buildUnnamed4423();
    o.nextPageToken = "foo";
  }
  buildCounterSearchGroupsResponse--;
  return o;
}

checkSearchGroupsResponse(api.SearchGroupsResponse o) {
  buildCounterSearchGroupsResponse++;
  if (buildCounterSearchGroupsResponse < 3) {
    checkUnnamed4423(o.groups);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterSearchGroupsResponse--;
}

buildUnnamed4424() {
  var o = new core.List<api.GroupRelation>();
  o.add(buildGroupRelation());
  o.add(buildGroupRelation());
  return o;
}

checkUnnamed4424(core.List<api.GroupRelation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroupRelation(o[0]);
  checkGroupRelation(o[1]);
}

core.int buildCounterSearchTransitiveGroupsResponse = 0;
buildSearchTransitiveGroupsResponse() {
  var o = new api.SearchTransitiveGroupsResponse();
  buildCounterSearchTransitiveGroupsResponse++;
  if (buildCounterSearchTransitiveGroupsResponse < 3) {
    o.memberships = buildUnnamed4424();
    o.nextPageToken = "foo";
  }
  buildCounterSearchTransitiveGroupsResponse--;
  return o;
}

checkSearchTransitiveGroupsResponse(api.SearchTransitiveGroupsResponse o) {
  buildCounterSearchTransitiveGroupsResponse++;
  if (buildCounterSearchTransitiveGroupsResponse < 3) {
    checkUnnamed4424(o.memberships);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterSearchTransitiveGroupsResponse--;
}

buildUnnamed4425() {
  var o = new core.List<api.MemberRelation>();
  o.add(buildMemberRelation());
  o.add(buildMemberRelation());
  return o;
}

checkUnnamed4425(core.List<api.MemberRelation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMemberRelation(o[0]);
  checkMemberRelation(o[1]);
}

core.int buildCounterSearchTransitiveMembershipsResponse = 0;
buildSearchTransitiveMembershipsResponse() {
  var o = new api.SearchTransitiveMembershipsResponse();
  buildCounterSearchTransitiveMembershipsResponse++;
  if (buildCounterSearchTransitiveMembershipsResponse < 3) {
    o.memberships = buildUnnamed4425();
    o.nextPageToken = "foo";
  }
  buildCounterSearchTransitiveMembershipsResponse--;
  return o;
}

checkSearchTransitiveMembershipsResponse(
    api.SearchTransitiveMembershipsResponse o) {
  buildCounterSearchTransitiveMembershipsResponse++;
  if (buildCounterSearchTransitiveMembershipsResponse < 3) {
    checkUnnamed4425(o.memberships);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterSearchTransitiveMembershipsResponse--;
}

buildUnnamed4426() {
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

checkUnnamed4426(core.Map<core.String, core.Object> o) {
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

buildUnnamed4427() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed4426());
  o.add(buildUnnamed4426());
  return o;
}

checkUnnamed4427(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed4426(o[0]);
  checkUnnamed4426(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed4427();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed4427(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterTransitiveMembershipRole = 0;
buildTransitiveMembershipRole() {
  var o = new api.TransitiveMembershipRole();
  buildCounterTransitiveMembershipRole++;
  if (buildCounterTransitiveMembershipRole < 3) {
    o.role = "foo";
  }
  buildCounterTransitiveMembershipRole--;
  return o;
}

checkTransitiveMembershipRole(api.TransitiveMembershipRole o) {
  buildCounterTransitiveMembershipRole++;
  if (buildCounterTransitiveMembershipRole < 3) {
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterTransitiveMembershipRole--;
}

main() {
  unittest.group("obj-schema-CheckTransitiveMembershipResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildCheckTransitiveMembershipResponse();
      var od = new api.CheckTransitiveMembershipResponse.fromJson(o.toJson());
      checkCheckTransitiveMembershipResponse(od);
    });
  });

  unittest.group("obj-schema-EntityKey", () {
    unittest.test("to-json--from-json", () {
      var o = buildEntityKey();
      var od = new api.EntityKey.fromJson(o.toJson());
      checkEntityKey(od);
    });
  });

  unittest.group("obj-schema-GetMembershipGraphResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetMembershipGraphResponse();
      var od = new api.GetMembershipGraphResponse.fromJson(o.toJson());
      checkGetMembershipGraphResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleAppsCloudidentityDevicesV1AndroidAttributes",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleAppsCloudidentityDevicesV1AndroidAttributes();
      var od =
          new api.GoogleAppsCloudidentityDevicesV1AndroidAttributes.fromJson(
              o.toJson());
      checkGoogleAppsCloudidentityDevicesV1AndroidAttributes(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest();
      var od = new api
              .GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest.fromJson(
          o.toJson());
      checkGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse();
      var od = new api
              .GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse.fromJson(
          o.toJson());
      checkGoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest();
      var od = new api
              .GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest.fromJson(
          o.toJson());
      checkGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse();
      var od = new api
              .GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse.fromJson(
          o.toJson());
      checkGoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest();
      var od = new api
              .GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest.fromJson(
          o.toJson());
      checkGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse();
      var od = new api
              .GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse.fromJson(
          o.toJson());
      checkGoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest();
      var od = new api
              .GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest.fromJson(
          o.toJson());
      checkGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse();
      var od = new api
              .GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse.fromJson(
          o.toJson());
      checkGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleAppsCloudidentityDevicesV1ClientState", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleAppsCloudidentityDevicesV1ClientState();
      var od = new api.GoogleAppsCloudidentityDevicesV1ClientState.fromJson(
          o.toJson());
      checkGoogleAppsCloudidentityDevicesV1ClientState(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleAppsCloudidentityDevicesV1CustomAttributeValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleAppsCloudidentityDevicesV1CustomAttributeValue();
      var od =
          new api.GoogleAppsCloudidentityDevicesV1CustomAttributeValue.fromJson(
              o.toJson());
      checkGoogleAppsCloudidentityDevicesV1CustomAttributeValue(od);
    });
  });

  unittest.group("obj-schema-GoogleAppsCloudidentityDevicesV1Device", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleAppsCloudidentityDevicesV1Device();
      var od =
          new api.GoogleAppsCloudidentityDevicesV1Device.fromJson(o.toJson());
      checkGoogleAppsCloudidentityDevicesV1Device(od);
    });
  });

  unittest.group("obj-schema-GoogleAppsCloudidentityDevicesV1DeviceUser", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleAppsCloudidentityDevicesV1DeviceUser();
      var od = new api.GoogleAppsCloudidentityDevicesV1DeviceUser.fromJson(
          o.toJson());
      checkGoogleAppsCloudidentityDevicesV1DeviceUser(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleAppsCloudidentityDevicesV1ListClientStatesResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleAppsCloudidentityDevicesV1ListClientStatesResponse();
      var od = new api
              .GoogleAppsCloudidentityDevicesV1ListClientStatesResponse.fromJson(
          o.toJson());
      checkGoogleAppsCloudidentityDevicesV1ListClientStatesResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse();
      var od = new api
              .GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse.fromJson(
          o.toJson());
      checkGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleAppsCloudidentityDevicesV1ListDevicesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleAppsCloudidentityDevicesV1ListDevicesResponse();
      var od =
          new api.GoogleAppsCloudidentityDevicesV1ListDevicesResponse.fromJson(
              o.toJson());
      checkGoogleAppsCloudidentityDevicesV1ListDevicesResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse();
      var od = new api
              .GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse.fromJson(
          o.toJson());
      checkGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleAppsCloudidentityDevicesV1WipeDeviceRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleAppsCloudidentityDevicesV1WipeDeviceRequest();
      var od =
          new api.GoogleAppsCloudidentityDevicesV1WipeDeviceRequest.fromJson(
              o.toJson());
      checkGoogleAppsCloudidentityDevicesV1WipeDeviceRequest(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleAppsCloudidentityDevicesV1WipeDeviceResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleAppsCloudidentityDevicesV1WipeDeviceResponse();
      var od =
          new api.GoogleAppsCloudidentityDevicesV1WipeDeviceResponse.fromJson(
              o.toJson());
      checkGoogleAppsCloudidentityDevicesV1WipeDeviceResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest();
      var od = new api
              .GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest.fromJson(
          o.toJson());
      checkGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse();
      var od = new api
              .GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse.fromJson(
          o.toJson());
      checkGoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse(od);
    });
  });

  unittest.group("obj-schema-Group", () {
    unittest.test("to-json--from-json", () {
      var o = buildGroup();
      var od = new api.Group.fromJson(o.toJson());
      checkGroup(od);
    });
  });

  unittest.group("obj-schema-GroupRelation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGroupRelation();
      var od = new api.GroupRelation.fromJson(o.toJson());
      checkGroupRelation(od);
    });
  });

  unittest.group("obj-schema-ListGroupsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListGroupsResponse();
      var od = new api.ListGroupsResponse.fromJson(o.toJson());
      checkListGroupsResponse(od);
    });
  });

  unittest.group("obj-schema-ListMembershipsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListMembershipsResponse();
      var od = new api.ListMembershipsResponse.fromJson(o.toJson());
      checkListMembershipsResponse(od);
    });
  });

  unittest.group("obj-schema-LookupGroupNameResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildLookupGroupNameResponse();
      var od = new api.LookupGroupNameResponse.fromJson(o.toJson());
      checkLookupGroupNameResponse(od);
    });
  });

  unittest.group("obj-schema-LookupMembershipNameResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildLookupMembershipNameResponse();
      var od = new api.LookupMembershipNameResponse.fromJson(o.toJson());
      checkLookupMembershipNameResponse(od);
    });
  });

  unittest.group("obj-schema-MemberRelation", () {
    unittest.test("to-json--from-json", () {
      var o = buildMemberRelation();
      var od = new api.MemberRelation.fromJson(o.toJson());
      checkMemberRelation(od);
    });
  });

  unittest.group("obj-schema-Membership", () {
    unittest.test("to-json--from-json", () {
      var o = buildMembership();
      var od = new api.Membership.fromJson(o.toJson());
      checkMembership(od);
    });
  });

  unittest.group("obj-schema-MembershipAdjacencyList", () {
    unittest.test("to-json--from-json", () {
      var o = buildMembershipAdjacencyList();
      var od = new api.MembershipAdjacencyList.fromJson(o.toJson());
      checkMembershipAdjacencyList(od);
    });
  });

  unittest.group("obj-schema-MembershipRole", () {
    unittest.test("to-json--from-json", () {
      var o = buildMembershipRole();
      var od = new api.MembershipRole.fromJson(o.toJson());
      checkMembershipRole(od);
    });
  });

  unittest.group("obj-schema-ModifyMembershipRolesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildModifyMembershipRolesRequest();
      var od = new api.ModifyMembershipRolesRequest.fromJson(o.toJson());
      checkModifyMembershipRolesRequest(od);
    });
  });

  unittest.group("obj-schema-ModifyMembershipRolesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildModifyMembershipRolesResponse();
      var od = new api.ModifyMembershipRolesResponse.fromJson(o.toJson());
      checkModifyMembershipRolesResponse(od);
    });
  });

  unittest.group("obj-schema-Operation", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperation();
      var od = new api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });

  unittest.group("obj-schema-SearchGroupsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchGroupsResponse();
      var od = new api.SearchGroupsResponse.fromJson(o.toJson());
      checkSearchGroupsResponse(od);
    });
  });

  unittest.group("obj-schema-SearchTransitiveGroupsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchTransitiveGroupsResponse();
      var od = new api.SearchTransitiveGroupsResponse.fromJson(o.toJson());
      checkSearchTransitiveGroupsResponse(od);
    });
  });

  unittest.group("obj-schema-SearchTransitiveMembershipsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchTransitiveMembershipsResponse();
      var od = new api.SearchTransitiveMembershipsResponse.fromJson(o.toJson());
      checkSearchTransitiveMembershipsResponse(od);
    });
  });

  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group("obj-schema-TransitiveMembershipRole", () {
    unittest.test("to-json--from-json", () {
      var o = buildTransitiveMembershipRole();
      var od = new api.TransitiveMembershipRole.fromJson(o.toJson());
      checkTransitiveMembershipRole(od);
    });
  });

  unittest.group("resource-DevicesResourceApi", () {
    unittest.test("method--cancelWipe", () {
      var mock = new HttpServerMock();
      api.DevicesResourceApi res = new api.CloudidentityApi(mock).devices;
      var arg_request =
          buildGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
                .GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest.fromJson(
            json);
        checkGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest(obj);

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
          .cancelWipe(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.DevicesResourceApi res = new api.CloudidentityApi(mock).devices;
      var arg_request = buildGoogleAppsCloudidentityDevicesV1Device();
      var arg_customer = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleAppsCloudidentityDevicesV1Device.fromJson(json);
        checkGoogleAppsCloudidentityDevicesV1Device(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("v1/devices"));
        pathOffset += 10;

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
            queryMap["customer"].first, unittest.equals(arg_customer));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, customer: arg_customer, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.DevicesResourceApi res = new api.CloudidentityApi(mock).devices;
      var arg_name = "foo";
      var arg_customer = "foo";
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
            queryMap["customer"].first, unittest.equals(arg_customer));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, customer: arg_customer, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.DevicesResourceApi res = new api.CloudidentityApi(mock).devices;
      var arg_name = "foo";
      var arg_customer = "foo";
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
            queryMap["customer"].first, unittest.equals(arg_customer));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleAppsCloudidentityDevicesV1Device());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, customer: arg_customer, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAppsCloudidentityDevicesV1Device(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.DevicesResourceApi res = new api.CloudidentityApi(mock).devices;
      var arg_customer = "foo";
      var arg_pageToken = "foo";
      var arg_view = "foo";
      var arg_pageSize = 42;
      var arg_orderBy = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("v1/devices"));
        pathOffset += 10;

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
            queryMap["customer"].first, unittest.equals(arg_customer));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleAppsCloudidentityDevicesV1ListDevicesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              customer: arg_customer,
              pageToken: arg_pageToken,
              view: arg_view,
              pageSize: arg_pageSize,
              orderBy: arg_orderBy,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAppsCloudidentityDevicesV1ListDevicesResponse(response);
      })));
    });

    unittest.test("method--wipe", () {
      var mock = new HttpServerMock();
      api.DevicesResourceApi res = new api.CloudidentityApi(mock).devices;
      var arg_request =
          buildGoogleAppsCloudidentityDevicesV1WipeDeviceRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleAppsCloudidentityDevicesV1WipeDeviceRequest.fromJson(
                json);
        checkGoogleAppsCloudidentityDevicesV1WipeDeviceRequest(obj);

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
          .wipe(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-DevicesDeviceUsersResourceApi", () {
    unittest.test("method--approve", () {
      var mock = new HttpServerMock();
      api.DevicesDeviceUsersResourceApi res =
          new api.CloudidentityApi(mock).devices.deviceUsers;
      var arg_request =
          buildGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
                .GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest.fromJson(
            json);
        checkGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest(obj);

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
          .approve(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--block", () {
      var mock = new HttpServerMock();
      api.DevicesDeviceUsersResourceApi res =
          new api.CloudidentityApi(mock).devices.deviceUsers;
      var arg_request =
          buildGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
                .GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest.fromJson(
            json);
        checkGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest(obj);

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
          .block(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--cancelWipe", () {
      var mock = new HttpServerMock();
      api.DevicesDeviceUsersResourceApi res =
          new api.CloudidentityApi(mock).devices.deviceUsers;
      var arg_request =
          buildGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
                .GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest.fromJson(
            json);
        checkGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest(obj);

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
          .cancelWipe(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.DevicesDeviceUsersResourceApi res =
          new api.CloudidentityApi(mock).devices.deviceUsers;
      var arg_name = "foo";
      var arg_customer = "foo";
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
            queryMap["customer"].first, unittest.equals(arg_customer));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, customer: arg_customer, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.DevicesDeviceUsersResourceApi res =
          new api.CloudidentityApi(mock).devices.deviceUsers;
      var arg_name = "foo";
      var arg_customer = "foo";
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
            queryMap["customer"].first, unittest.equals(arg_customer));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleAppsCloudidentityDevicesV1DeviceUser());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, customer: arg_customer, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAppsCloudidentityDevicesV1DeviceUser(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.DevicesDeviceUsersResourceApi res =
          new api.CloudidentityApi(mock).devices.deviceUsers;
      var arg_parent = "foo";
      var arg_customer = "foo";
      var arg_pageSize = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
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
            queryMap["customer"].first, unittest.equals(arg_customer));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(
            buildGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              customer: arg_customer,
              pageSize: arg_pageSize,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse(response);
      })));
    });

    unittest.test("method--lookup", () {
      var mock = new HttpServerMock();
      api.DevicesDeviceUsersResourceApi res =
          new api.CloudidentityApi(mock).devices.deviceUsers;
      var arg_parent = "foo";
      var arg_userId = "foo";
      var arg_androidId = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_rawResourceId = "foo";
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
        unittest.expect(queryMap["userId"].first, unittest.equals(arg_userId));
        unittest.expect(
            queryMap["androidId"].first, unittest.equals(arg_androidId));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["rawResourceId"].first,
            unittest.equals(arg_rawResourceId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(
            buildGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .lookup(arg_parent,
              userId: arg_userId,
              androidId: arg_androidId,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              rawResourceId: arg_rawResourceId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse(
            response);
      })));
    });

    unittest.test("method--wipe", () {
      var mock = new HttpServerMock();
      api.DevicesDeviceUsersResourceApi res =
          new api.CloudidentityApi(mock).devices.deviceUsers;
      var arg_request =
          buildGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
                .GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest.fromJson(
            json);
        checkGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest(obj);

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
          .wipe(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-DevicesDeviceUsersClientStatesResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.DevicesDeviceUsersClientStatesResourceApi res =
          new api.CloudidentityApi(mock).devices.deviceUsers.clientStates;
      var arg_name = "foo";
      var arg_customer = "foo";
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
            queryMap["customer"].first, unittest.equals(arg_customer));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleAppsCloudidentityDevicesV1ClientState());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, customer: arg_customer, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAppsCloudidentityDevicesV1ClientState(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.DevicesDeviceUsersClientStatesResourceApi res =
          new api.CloudidentityApi(mock).devices.deviceUsers.clientStates;
      var arg_parent = "foo";
      var arg_orderBy = "foo";
      var arg_customer = "foo";
      var arg_filter = "foo";
      var arg_pageToken = "foo";
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
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["customer"].first, unittest.equals(arg_customer));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(
            buildGoogleAppsCloudidentityDevicesV1ListClientStatesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              orderBy: arg_orderBy,
              customer: arg_customer,
              filter: arg_filter,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleAppsCloudidentityDevicesV1ListClientStatesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.DevicesDeviceUsersClientStatesResourceApi res =
          new api.CloudidentityApi(mock).devices.deviceUsers.clientStates;
      var arg_request = buildGoogleAppsCloudidentityDevicesV1ClientState();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_customer = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleAppsCloudidentityDevicesV1ClientState.fromJson(json);
        checkGoogleAppsCloudidentityDevicesV1ClientState(obj);

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
        unittest.expect(
            queryMap["customer"].first, unittest.equals(arg_customer));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask,
              customer: arg_customer,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-GroupsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.GroupsResourceApi res = new api.CloudidentityApi(mock).groups;
      var arg_request = buildGroup();
      var arg_initialGroupConfig = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Group.fromJson(json);
        checkGroup(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1/groups"));
        pathOffset += 9;

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
        unittest.expect(queryMap["initialGroupConfig"].first,
            unittest.equals(arg_initialGroupConfig));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request,
              initialGroupConfig: arg_initialGroupConfig, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.GroupsResourceApi res = new api.CloudidentityApi(mock).groups;
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
      api.GroupsResourceApi res = new api.CloudidentityApi(mock).groups;
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
        var resp = convert.json.encode(buildGroup());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGroup(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.GroupsResourceApi res = new api.CloudidentityApi(mock).groups;
      var arg_pageToken = "foo";
      var arg_parent = "foo";
      var arg_view = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1/groups"));
        pathOffset += 9;

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
        unittest.expect(queryMap["parent"].first, unittest.equals(arg_parent));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListGroupsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              pageToken: arg_pageToken,
              parent: arg_parent,
              view: arg_view,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListGroupsResponse(response);
      })));
    });

    unittest.test("method--lookup", () {
      var mock = new HttpServerMock();
      api.GroupsResourceApi res = new api.CloudidentityApi(mock).groups;
      var arg_groupKey_id = "foo";
      var arg_groupKey_namespace = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v1/groups:lookup"));
        pathOffset += 16;

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
            queryMap["groupKey.id"].first, unittest.equals(arg_groupKey_id));
        unittest.expect(queryMap["groupKey.namespace"].first,
            unittest.equals(arg_groupKey_namespace));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildLookupGroupNameResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .lookup(
              groupKey_id: arg_groupKey_id,
              groupKey_namespace: arg_groupKey_namespace,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLookupGroupNameResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.GroupsResourceApi res = new api.CloudidentityApi(mock).groups;
      var arg_request = buildGroup();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Group.fromJson(json);
        checkGroup(obj);

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

    unittest.test("method--search", () {
      var mock = new HttpServerMock();
      api.GroupsResourceApi res = new api.CloudidentityApi(mock).groups;
      var arg_pageSize = 42;
      var arg_view = "foo";
      var arg_query = "foo";
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v1/groups:search"));
        pathOffset += 16;

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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSearchGroupsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .search(
              pageSize: arg_pageSize,
              view: arg_view,
              query: arg_query,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSearchGroupsResponse(response);
      })));
    });
  });

  unittest.group("resource-GroupsMembershipsResourceApi", () {
    unittest.test("method--checkTransitiveMembership", () {
      var mock = new HttpServerMock();
      api.GroupsMembershipsResourceApi res =
          new api.CloudidentityApi(mock).groups.memberships;
      var arg_parent = "foo";
      var arg_query = "foo";
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
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildCheckTransitiveMembershipResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .checkTransitiveMembership(arg_parent,
              query: arg_query, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCheckTransitiveMembershipResponse(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.GroupsMembershipsResourceApi res =
          new api.CloudidentityApi(mock).groups.memberships;
      var arg_request = buildMembership();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Membership.fromJson(json);
        checkMembership(obj);

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
      api.GroupsMembershipsResourceApi res =
          new api.CloudidentityApi(mock).groups.memberships;
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
      api.GroupsMembershipsResourceApi res =
          new api.CloudidentityApi(mock).groups.memberships;
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
        var resp = convert.json.encode(buildMembership());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMembership(response);
      })));
    });

    unittest.test("method--getMembershipGraph", () {
      var mock = new HttpServerMock();
      api.GroupsMembershipsResourceApi res =
          new api.CloudidentityApi(mock).groups.memberships;
      var arg_parent = "foo";
      var arg_query = "foo";
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
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getMembershipGraph(arg_parent,
              query: arg_query, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.GroupsMembershipsResourceApi res =
          new api.CloudidentityApi(mock).groups.memberships;
      var arg_parent = "foo";
      var arg_view = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
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
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListMembershipsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              view: arg_view,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListMembershipsResponse(response);
      })));
    });

    unittest.test("method--lookup", () {
      var mock = new HttpServerMock();
      api.GroupsMembershipsResourceApi res =
          new api.CloudidentityApi(mock).groups.memberships;
      var arg_parent = "foo";
      var arg_memberKey_id = "foo";
      var arg_memberKey_namespace = "foo";
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
            queryMap["memberKey.id"].first, unittest.equals(arg_memberKey_id));
        unittest.expect(queryMap["memberKey.namespace"].first,
            unittest.equals(arg_memberKey_namespace));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildLookupMembershipNameResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .lookup(arg_parent,
              memberKey_id: arg_memberKey_id,
              memberKey_namespace: arg_memberKey_namespace,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLookupMembershipNameResponse(response);
      })));
    });

    unittest.test("method--modifyMembershipRoles", () {
      var mock = new HttpServerMock();
      api.GroupsMembershipsResourceApi res =
          new api.CloudidentityApi(mock).groups.memberships;
      var arg_request = buildModifyMembershipRolesRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ModifyMembershipRolesRequest.fromJson(json);
        checkModifyMembershipRolesRequest(obj);

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
        var resp = convert.json.encode(buildModifyMembershipRolesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .modifyMembershipRoles(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkModifyMembershipRolesResponse(response);
      })));
    });

    unittest.test("method--searchTransitiveGroups", () {
      var mock = new HttpServerMock();
      api.GroupsMembershipsResourceApi res =
          new api.CloudidentityApi(mock).groups.memberships;
      var arg_parent = "foo";
      var arg_pageSize = 42;
      var arg_query = "foo";
      var arg_pageToken = "foo";
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSearchTransitiveGroupsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .searchTransitiveGroups(arg_parent,
              pageSize: arg_pageSize,
              query: arg_query,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSearchTransitiveGroupsResponse(response);
      })));
    });

    unittest.test("method--searchTransitiveMemberships", () {
      var mock = new HttpServerMock();
      api.GroupsMembershipsResourceApi res =
          new api.CloudidentityApi(mock).groups.memberships;
      var arg_parent = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildSearchTransitiveMembershipsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .searchTransitiveMemberships(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSearchTransitiveMembershipsResponse(response);
      })));
    });
  });
}
