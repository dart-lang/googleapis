// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: directives_ordering
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

library googleapis.dns.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/dns/v1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Future<http.StreamedResponse> Function(
      http.BaseRequest bob, core.Object foo) _callback;
  core.bool _expectJson;

  void register(
    core.Future<http.StreamedResponse> Function(
      http.BaseRequest bob,
      core.Object foo,
    )
        callback,
    core.bool expectJson,
  ) {
    _callback = callback;
    _expectJson = expectJson;
  }

  @core.override
  async.Future<http.StreamedResponse> send(http.BaseRequest request) async {
    if (_expectJson) {
      final jsonString =
          await request.finalize().transform(convert.utf8.decoder).join('');
      if (jsonString.isEmpty) {
        return _callback(request, null);
      } else {
        return _callback(request, convert.json.decode(jsonString));
      }
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        final data = await stream.toBytes();
        return _callback(request, data);
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = async.Stream.fromIterable([convert.utf8.encode(body)]);
  return http.StreamedResponse(stream, status, headers: headers);
}

core.List<api.ResourceRecordSet> buildUnnamed1787() {
  var o = <api.ResourceRecordSet>[];
  o.add(buildResourceRecordSet());
  o.add(buildResourceRecordSet());
  return o;
}

void checkUnnamed1787(core.List<api.ResourceRecordSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceRecordSet(o[0]);
  checkResourceRecordSet(o[1]);
}

core.List<api.ResourceRecordSet> buildUnnamed1788() {
  var o = <api.ResourceRecordSet>[];
  o.add(buildResourceRecordSet());
  o.add(buildResourceRecordSet());
  return o;
}

void checkUnnamed1788(core.List<api.ResourceRecordSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceRecordSet(o[0]);
  checkResourceRecordSet(o[1]);
}

core.int buildCounterChange = 0;
api.Change buildChange() {
  var o = api.Change();
  buildCounterChange++;
  if (buildCounterChange < 3) {
    o.additions = buildUnnamed1787();
    o.deletions = buildUnnamed1788();
    o.id = 'foo';
    o.isServing = true;
    o.kind = 'foo';
    o.startTime = 'foo';
    o.status = 'foo';
  }
  buildCounterChange--;
  return o;
}

void checkChange(api.Change o) {
  buildCounterChange++;
  if (buildCounterChange < 3) {
    checkUnnamed1787(o.additions);
    checkUnnamed1788(o.deletions);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.isServing, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterChange--;
}

core.List<api.Change> buildUnnamed1789() {
  var o = <api.Change>[];
  o.add(buildChange());
  o.add(buildChange());
  return o;
}

void checkUnnamed1789(core.List<api.Change> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChange(o[0]);
  checkChange(o[1]);
}

core.int buildCounterChangesListResponse = 0;
api.ChangesListResponse buildChangesListResponse() {
  var o = api.ChangesListResponse();
  buildCounterChangesListResponse++;
  if (buildCounterChangesListResponse < 3) {
    o.changes = buildUnnamed1789();
    o.header = buildResponseHeader();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterChangesListResponse--;
  return o;
}

void checkChangesListResponse(api.ChangesListResponse o) {
  buildCounterChangesListResponse++;
  if (buildCounterChangesListResponse < 3) {
    checkUnnamed1789(o.changes);
    checkResponseHeader(o.header);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterChangesListResponse--;
}

core.List<api.DnsKeyDigest> buildUnnamed1790() {
  var o = <api.DnsKeyDigest>[];
  o.add(buildDnsKeyDigest());
  o.add(buildDnsKeyDigest());
  return o;
}

void checkUnnamed1790(core.List<api.DnsKeyDigest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDnsKeyDigest(o[0]);
  checkDnsKeyDigest(o[1]);
}

core.int buildCounterDnsKey = 0;
api.DnsKey buildDnsKey() {
  var o = api.DnsKey();
  buildCounterDnsKey++;
  if (buildCounterDnsKey < 3) {
    o.algorithm = 'foo';
    o.creationTime = 'foo';
    o.description = 'foo';
    o.digests = buildUnnamed1790();
    o.id = 'foo';
    o.isActive = true;
    o.keyLength = 42;
    o.keyTag = 42;
    o.kind = 'foo';
    o.publicKey = 'foo';
    o.type = 'foo';
  }
  buildCounterDnsKey--;
  return o;
}

void checkDnsKey(api.DnsKey o) {
  buildCounterDnsKey++;
  if (buildCounterDnsKey < 3) {
    unittest.expect(o.algorithm, unittest.equals('foo'));
    unittest.expect(o.creationTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed1790(o.digests);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.isActive, unittest.isTrue);
    unittest.expect(o.keyLength, unittest.equals(42));
    unittest.expect(o.keyTag, unittest.equals(42));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.publicKey, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterDnsKey--;
}

core.int buildCounterDnsKeyDigest = 0;
api.DnsKeyDigest buildDnsKeyDigest() {
  var o = api.DnsKeyDigest();
  buildCounterDnsKeyDigest++;
  if (buildCounterDnsKeyDigest < 3) {
    o.digest = 'foo';
    o.type = 'foo';
  }
  buildCounterDnsKeyDigest--;
  return o;
}

void checkDnsKeyDigest(api.DnsKeyDigest o) {
  buildCounterDnsKeyDigest++;
  if (buildCounterDnsKeyDigest < 3) {
    unittest.expect(o.digest, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterDnsKeyDigest--;
}

core.int buildCounterDnsKeySpec = 0;
api.DnsKeySpec buildDnsKeySpec() {
  var o = api.DnsKeySpec();
  buildCounterDnsKeySpec++;
  if (buildCounterDnsKeySpec < 3) {
    o.algorithm = 'foo';
    o.keyLength = 42;
    o.keyType = 'foo';
    o.kind = 'foo';
  }
  buildCounterDnsKeySpec--;
  return o;
}

void checkDnsKeySpec(api.DnsKeySpec o) {
  buildCounterDnsKeySpec++;
  if (buildCounterDnsKeySpec < 3) {
    unittest.expect(o.algorithm, unittest.equals('foo'));
    unittest.expect(o.keyLength, unittest.equals(42));
    unittest.expect(o.keyType, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterDnsKeySpec--;
}

core.List<api.DnsKey> buildUnnamed1791() {
  var o = <api.DnsKey>[];
  o.add(buildDnsKey());
  o.add(buildDnsKey());
  return o;
}

void checkUnnamed1791(core.List<api.DnsKey> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDnsKey(o[0]);
  checkDnsKey(o[1]);
}

core.int buildCounterDnsKeysListResponse = 0;
api.DnsKeysListResponse buildDnsKeysListResponse() {
  var o = api.DnsKeysListResponse();
  buildCounterDnsKeysListResponse++;
  if (buildCounterDnsKeysListResponse < 3) {
    o.dnsKeys = buildUnnamed1791();
    o.header = buildResponseHeader();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterDnsKeysListResponse--;
  return o;
}

void checkDnsKeysListResponse(api.DnsKeysListResponse o) {
  buildCounterDnsKeysListResponse++;
  if (buildCounterDnsKeysListResponse < 3) {
    checkUnnamed1791(o.dnsKeys);
    checkResponseHeader(o.header);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterDnsKeysListResponse--;
}

core.Map<core.String, core.String> buildUnnamed1792() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed1792(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed1793() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1793(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterManagedZone = 0;
api.ManagedZone buildManagedZone() {
  var o = api.ManagedZone();
  buildCounterManagedZone++;
  if (buildCounterManagedZone < 3) {
    o.creationTime = 'foo';
    o.description = 'foo';
    o.dnsName = 'foo';
    o.dnssecConfig = buildManagedZoneDnsSecConfig();
    o.forwardingConfig = buildManagedZoneForwardingConfig();
    o.id = 'foo';
    o.kind = 'foo';
    o.labels = buildUnnamed1792();
    o.name = 'foo';
    o.nameServerSet = 'foo';
    o.nameServers = buildUnnamed1793();
    o.peeringConfig = buildManagedZonePeeringConfig();
    o.privateVisibilityConfig = buildManagedZonePrivateVisibilityConfig();
    o.reverseLookupConfig = buildManagedZoneReverseLookupConfig();
    o.visibility = 'foo';
  }
  buildCounterManagedZone--;
  return o;
}

void checkManagedZone(api.ManagedZone o) {
  buildCounterManagedZone++;
  if (buildCounterManagedZone < 3) {
    unittest.expect(o.creationTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.dnsName, unittest.equals('foo'));
    checkManagedZoneDnsSecConfig(o.dnssecConfig);
    checkManagedZoneForwardingConfig(o.forwardingConfig);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed1792(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.nameServerSet, unittest.equals('foo'));
    checkUnnamed1793(o.nameServers);
    checkManagedZonePeeringConfig(o.peeringConfig);
    checkManagedZonePrivateVisibilityConfig(o.privateVisibilityConfig);
    checkManagedZoneReverseLookupConfig(o.reverseLookupConfig);
    unittest.expect(o.visibility, unittest.equals('foo'));
  }
  buildCounterManagedZone--;
}

core.List<api.DnsKeySpec> buildUnnamed1794() {
  var o = <api.DnsKeySpec>[];
  o.add(buildDnsKeySpec());
  o.add(buildDnsKeySpec());
  return o;
}

void checkUnnamed1794(core.List<api.DnsKeySpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDnsKeySpec(o[0]);
  checkDnsKeySpec(o[1]);
}

core.int buildCounterManagedZoneDnsSecConfig = 0;
api.ManagedZoneDnsSecConfig buildManagedZoneDnsSecConfig() {
  var o = api.ManagedZoneDnsSecConfig();
  buildCounterManagedZoneDnsSecConfig++;
  if (buildCounterManagedZoneDnsSecConfig < 3) {
    o.defaultKeySpecs = buildUnnamed1794();
    o.kind = 'foo';
    o.nonExistence = 'foo';
    o.state = 'foo';
  }
  buildCounterManagedZoneDnsSecConfig--;
  return o;
}

void checkManagedZoneDnsSecConfig(api.ManagedZoneDnsSecConfig o) {
  buildCounterManagedZoneDnsSecConfig++;
  if (buildCounterManagedZoneDnsSecConfig < 3) {
    checkUnnamed1794(o.defaultKeySpecs);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nonExistence, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterManagedZoneDnsSecConfig--;
}

core.List<api.ManagedZoneForwardingConfigNameServerTarget> buildUnnamed1795() {
  var o = <api.ManagedZoneForwardingConfigNameServerTarget>[];
  o.add(buildManagedZoneForwardingConfigNameServerTarget());
  o.add(buildManagedZoneForwardingConfigNameServerTarget());
  return o;
}

void checkUnnamed1795(
    core.List<api.ManagedZoneForwardingConfigNameServerTarget> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedZoneForwardingConfigNameServerTarget(o[0]);
  checkManagedZoneForwardingConfigNameServerTarget(o[1]);
}

core.int buildCounterManagedZoneForwardingConfig = 0;
api.ManagedZoneForwardingConfig buildManagedZoneForwardingConfig() {
  var o = api.ManagedZoneForwardingConfig();
  buildCounterManagedZoneForwardingConfig++;
  if (buildCounterManagedZoneForwardingConfig < 3) {
    o.kind = 'foo';
    o.targetNameServers = buildUnnamed1795();
  }
  buildCounterManagedZoneForwardingConfig--;
  return o;
}

void checkManagedZoneForwardingConfig(api.ManagedZoneForwardingConfig o) {
  buildCounterManagedZoneForwardingConfig++;
  if (buildCounterManagedZoneForwardingConfig < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed1795(o.targetNameServers);
  }
  buildCounterManagedZoneForwardingConfig--;
}

core.int buildCounterManagedZoneForwardingConfigNameServerTarget = 0;
api.ManagedZoneForwardingConfigNameServerTarget
    buildManagedZoneForwardingConfigNameServerTarget() {
  var o = api.ManagedZoneForwardingConfigNameServerTarget();
  buildCounterManagedZoneForwardingConfigNameServerTarget++;
  if (buildCounterManagedZoneForwardingConfigNameServerTarget < 3) {
    o.forwardingPath = 'foo';
    o.ipv4Address = 'foo';
    o.kind = 'foo';
  }
  buildCounterManagedZoneForwardingConfigNameServerTarget--;
  return o;
}

void checkManagedZoneForwardingConfigNameServerTarget(
    api.ManagedZoneForwardingConfigNameServerTarget o) {
  buildCounterManagedZoneForwardingConfigNameServerTarget++;
  if (buildCounterManagedZoneForwardingConfigNameServerTarget < 3) {
    unittest.expect(o.forwardingPath, unittest.equals('foo'));
    unittest.expect(o.ipv4Address, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterManagedZoneForwardingConfigNameServerTarget--;
}

core.List<api.Operation> buildUnnamed1796() {
  var o = <api.Operation>[];
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

void checkUnnamed1796(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterManagedZoneOperationsListResponse = 0;
api.ManagedZoneOperationsListResponse buildManagedZoneOperationsListResponse() {
  var o = api.ManagedZoneOperationsListResponse();
  buildCounterManagedZoneOperationsListResponse++;
  if (buildCounterManagedZoneOperationsListResponse < 3) {
    o.header = buildResponseHeader();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed1796();
  }
  buildCounterManagedZoneOperationsListResponse--;
  return o;
}

void checkManagedZoneOperationsListResponse(
    api.ManagedZoneOperationsListResponse o) {
  buildCounterManagedZoneOperationsListResponse++;
  if (buildCounterManagedZoneOperationsListResponse < 3) {
    checkResponseHeader(o.header);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed1796(o.operations);
  }
  buildCounterManagedZoneOperationsListResponse--;
}

core.int buildCounterManagedZonePeeringConfig = 0;
api.ManagedZonePeeringConfig buildManagedZonePeeringConfig() {
  var o = api.ManagedZonePeeringConfig();
  buildCounterManagedZonePeeringConfig++;
  if (buildCounterManagedZonePeeringConfig < 3) {
    o.kind = 'foo';
    o.targetNetwork = buildManagedZonePeeringConfigTargetNetwork();
  }
  buildCounterManagedZonePeeringConfig--;
  return o;
}

void checkManagedZonePeeringConfig(api.ManagedZonePeeringConfig o) {
  buildCounterManagedZonePeeringConfig++;
  if (buildCounterManagedZonePeeringConfig < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkManagedZonePeeringConfigTargetNetwork(o.targetNetwork);
  }
  buildCounterManagedZonePeeringConfig--;
}

core.int buildCounterManagedZonePeeringConfigTargetNetwork = 0;
api.ManagedZonePeeringConfigTargetNetwork
    buildManagedZonePeeringConfigTargetNetwork() {
  var o = api.ManagedZonePeeringConfigTargetNetwork();
  buildCounterManagedZonePeeringConfigTargetNetwork++;
  if (buildCounterManagedZonePeeringConfigTargetNetwork < 3) {
    o.deactivateTime = 'foo';
    o.kind = 'foo';
    o.networkUrl = 'foo';
  }
  buildCounterManagedZonePeeringConfigTargetNetwork--;
  return o;
}

void checkManagedZonePeeringConfigTargetNetwork(
    api.ManagedZonePeeringConfigTargetNetwork o) {
  buildCounterManagedZonePeeringConfigTargetNetwork++;
  if (buildCounterManagedZonePeeringConfigTargetNetwork < 3) {
    unittest.expect(o.deactivateTime, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.networkUrl, unittest.equals('foo'));
  }
  buildCounterManagedZonePeeringConfigTargetNetwork--;
}

core.List<api.ManagedZonePrivateVisibilityConfigNetwork> buildUnnamed1797() {
  var o = <api.ManagedZonePrivateVisibilityConfigNetwork>[];
  o.add(buildManagedZonePrivateVisibilityConfigNetwork());
  o.add(buildManagedZonePrivateVisibilityConfigNetwork());
  return o;
}

void checkUnnamed1797(
    core.List<api.ManagedZonePrivateVisibilityConfigNetwork> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedZonePrivateVisibilityConfigNetwork(o[0]);
  checkManagedZonePrivateVisibilityConfigNetwork(o[1]);
}

core.int buildCounterManagedZonePrivateVisibilityConfig = 0;
api.ManagedZonePrivateVisibilityConfig
    buildManagedZonePrivateVisibilityConfig() {
  var o = api.ManagedZonePrivateVisibilityConfig();
  buildCounterManagedZonePrivateVisibilityConfig++;
  if (buildCounterManagedZonePrivateVisibilityConfig < 3) {
    o.kind = 'foo';
    o.networks = buildUnnamed1797();
  }
  buildCounterManagedZonePrivateVisibilityConfig--;
  return o;
}

void checkManagedZonePrivateVisibilityConfig(
    api.ManagedZonePrivateVisibilityConfig o) {
  buildCounterManagedZonePrivateVisibilityConfig++;
  if (buildCounterManagedZonePrivateVisibilityConfig < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed1797(o.networks);
  }
  buildCounterManagedZonePrivateVisibilityConfig--;
}

core.int buildCounterManagedZonePrivateVisibilityConfigNetwork = 0;
api.ManagedZonePrivateVisibilityConfigNetwork
    buildManagedZonePrivateVisibilityConfigNetwork() {
  var o = api.ManagedZonePrivateVisibilityConfigNetwork();
  buildCounterManagedZonePrivateVisibilityConfigNetwork++;
  if (buildCounterManagedZonePrivateVisibilityConfigNetwork < 3) {
    o.kind = 'foo';
    o.networkUrl = 'foo';
  }
  buildCounterManagedZonePrivateVisibilityConfigNetwork--;
  return o;
}

void checkManagedZonePrivateVisibilityConfigNetwork(
    api.ManagedZonePrivateVisibilityConfigNetwork o) {
  buildCounterManagedZonePrivateVisibilityConfigNetwork++;
  if (buildCounterManagedZonePrivateVisibilityConfigNetwork < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.networkUrl, unittest.equals('foo'));
  }
  buildCounterManagedZonePrivateVisibilityConfigNetwork--;
}

core.int buildCounterManagedZoneReverseLookupConfig = 0;
api.ManagedZoneReverseLookupConfig buildManagedZoneReverseLookupConfig() {
  var o = api.ManagedZoneReverseLookupConfig();
  buildCounterManagedZoneReverseLookupConfig++;
  if (buildCounterManagedZoneReverseLookupConfig < 3) {
    o.kind = 'foo';
  }
  buildCounterManagedZoneReverseLookupConfig--;
  return o;
}

void checkManagedZoneReverseLookupConfig(api.ManagedZoneReverseLookupConfig o) {
  buildCounterManagedZoneReverseLookupConfig++;
  if (buildCounterManagedZoneReverseLookupConfig < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterManagedZoneReverseLookupConfig--;
}

core.List<api.ManagedZone> buildUnnamed1798() {
  var o = <api.ManagedZone>[];
  o.add(buildManagedZone());
  o.add(buildManagedZone());
  return o;
}

void checkUnnamed1798(core.List<api.ManagedZone> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedZone(o[0]);
  checkManagedZone(o[1]);
}

core.int buildCounterManagedZonesListResponse = 0;
api.ManagedZonesListResponse buildManagedZonesListResponse() {
  var o = api.ManagedZonesListResponse();
  buildCounterManagedZonesListResponse++;
  if (buildCounterManagedZonesListResponse < 3) {
    o.header = buildResponseHeader();
    o.kind = 'foo';
    o.managedZones = buildUnnamed1798();
    o.nextPageToken = 'foo';
  }
  buildCounterManagedZonesListResponse--;
  return o;
}

void checkManagedZonesListResponse(api.ManagedZonesListResponse o) {
  buildCounterManagedZonesListResponse++;
  if (buildCounterManagedZonesListResponse < 3) {
    checkResponseHeader(o.header);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed1798(o.managedZones);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterManagedZonesListResponse--;
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  var o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.dnsKeyContext = buildOperationDnsKeyContext();
    o.id = 'foo';
    o.kind = 'foo';
    o.startTime = 'foo';
    o.status = 'foo';
    o.type = 'foo';
    o.user = 'foo';
    o.zoneContext = buildOperationManagedZoneContext();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    checkOperationDnsKeyContext(o.dnsKeyContext);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.user, unittest.equals('foo'));
    checkOperationManagedZoneContext(o.zoneContext);
  }
  buildCounterOperation--;
}

core.int buildCounterOperationDnsKeyContext = 0;
api.OperationDnsKeyContext buildOperationDnsKeyContext() {
  var o = api.OperationDnsKeyContext();
  buildCounterOperationDnsKeyContext++;
  if (buildCounterOperationDnsKeyContext < 3) {
    o.newValue = buildDnsKey();
    o.oldValue = buildDnsKey();
  }
  buildCounterOperationDnsKeyContext--;
  return o;
}

void checkOperationDnsKeyContext(api.OperationDnsKeyContext o) {
  buildCounterOperationDnsKeyContext++;
  if (buildCounterOperationDnsKeyContext < 3) {
    checkDnsKey(o.newValue);
    checkDnsKey(o.oldValue);
  }
  buildCounterOperationDnsKeyContext--;
}

core.int buildCounterOperationManagedZoneContext = 0;
api.OperationManagedZoneContext buildOperationManagedZoneContext() {
  var o = api.OperationManagedZoneContext();
  buildCounterOperationManagedZoneContext++;
  if (buildCounterOperationManagedZoneContext < 3) {
    o.newValue = buildManagedZone();
    o.oldValue = buildManagedZone();
  }
  buildCounterOperationManagedZoneContext--;
  return o;
}

void checkOperationManagedZoneContext(api.OperationManagedZoneContext o) {
  buildCounterOperationManagedZoneContext++;
  if (buildCounterOperationManagedZoneContext < 3) {
    checkManagedZone(o.newValue);
    checkManagedZone(o.oldValue);
  }
  buildCounterOperationManagedZoneContext--;
}

core.List<api.Policy> buildUnnamed1799() {
  var o = <api.Policy>[];
  o.add(buildPolicy());
  o.add(buildPolicy());
  return o;
}

void checkUnnamed1799(core.List<api.Policy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicy(o[0]);
  checkPolicy(o[1]);
}

core.int buildCounterPoliciesListResponse = 0;
api.PoliciesListResponse buildPoliciesListResponse() {
  var o = api.PoliciesListResponse();
  buildCounterPoliciesListResponse++;
  if (buildCounterPoliciesListResponse < 3) {
    o.header = buildResponseHeader();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.policies = buildUnnamed1799();
  }
  buildCounterPoliciesListResponse--;
  return o;
}

void checkPoliciesListResponse(api.PoliciesListResponse o) {
  buildCounterPoliciesListResponse++;
  if (buildCounterPoliciesListResponse < 3) {
    checkResponseHeader(o.header);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed1799(o.policies);
  }
  buildCounterPoliciesListResponse--;
}

core.int buildCounterPoliciesPatchResponse = 0;
api.PoliciesPatchResponse buildPoliciesPatchResponse() {
  var o = api.PoliciesPatchResponse();
  buildCounterPoliciesPatchResponse++;
  if (buildCounterPoliciesPatchResponse < 3) {
    o.header = buildResponseHeader();
    o.policy = buildPolicy();
  }
  buildCounterPoliciesPatchResponse--;
  return o;
}

void checkPoliciesPatchResponse(api.PoliciesPatchResponse o) {
  buildCounterPoliciesPatchResponse++;
  if (buildCounterPoliciesPatchResponse < 3) {
    checkResponseHeader(o.header);
    checkPolicy(o.policy);
  }
  buildCounterPoliciesPatchResponse--;
}

core.int buildCounterPoliciesUpdateResponse = 0;
api.PoliciesUpdateResponse buildPoliciesUpdateResponse() {
  var o = api.PoliciesUpdateResponse();
  buildCounterPoliciesUpdateResponse++;
  if (buildCounterPoliciesUpdateResponse < 3) {
    o.header = buildResponseHeader();
    o.policy = buildPolicy();
  }
  buildCounterPoliciesUpdateResponse--;
  return o;
}

void checkPoliciesUpdateResponse(api.PoliciesUpdateResponse o) {
  buildCounterPoliciesUpdateResponse++;
  if (buildCounterPoliciesUpdateResponse < 3) {
    checkResponseHeader(o.header);
    checkPolicy(o.policy);
  }
  buildCounterPoliciesUpdateResponse--;
}

core.List<api.PolicyNetwork> buildUnnamed1800() {
  var o = <api.PolicyNetwork>[];
  o.add(buildPolicyNetwork());
  o.add(buildPolicyNetwork());
  return o;
}

void checkUnnamed1800(core.List<api.PolicyNetwork> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicyNetwork(o[0]);
  checkPolicyNetwork(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  var o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.alternativeNameServerConfig = buildPolicyAlternativeNameServerConfig();
    o.description = 'foo';
    o.enableInboundForwarding = true;
    o.enableLogging = true;
    o.id = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.networks = buildUnnamed1800();
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkPolicyAlternativeNameServerConfig(o.alternativeNameServerConfig);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.enableInboundForwarding, unittest.isTrue);
    unittest.expect(o.enableLogging, unittest.isTrue);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed1800(o.networks);
  }
  buildCounterPolicy--;
}

core.List<api.PolicyAlternativeNameServerConfigTargetNameServer>
    buildUnnamed1801() {
  var o = <api.PolicyAlternativeNameServerConfigTargetNameServer>[];
  o.add(buildPolicyAlternativeNameServerConfigTargetNameServer());
  o.add(buildPolicyAlternativeNameServerConfigTargetNameServer());
  return o;
}

void checkUnnamed1801(
    core.List<api.PolicyAlternativeNameServerConfigTargetNameServer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicyAlternativeNameServerConfigTargetNameServer(o[0]);
  checkPolicyAlternativeNameServerConfigTargetNameServer(o[1]);
}

core.int buildCounterPolicyAlternativeNameServerConfig = 0;
api.PolicyAlternativeNameServerConfig buildPolicyAlternativeNameServerConfig() {
  var o = api.PolicyAlternativeNameServerConfig();
  buildCounterPolicyAlternativeNameServerConfig++;
  if (buildCounterPolicyAlternativeNameServerConfig < 3) {
    o.kind = 'foo';
    o.targetNameServers = buildUnnamed1801();
  }
  buildCounterPolicyAlternativeNameServerConfig--;
  return o;
}

void checkPolicyAlternativeNameServerConfig(
    api.PolicyAlternativeNameServerConfig o) {
  buildCounterPolicyAlternativeNameServerConfig++;
  if (buildCounterPolicyAlternativeNameServerConfig < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed1801(o.targetNameServers);
  }
  buildCounterPolicyAlternativeNameServerConfig--;
}

core.int buildCounterPolicyAlternativeNameServerConfigTargetNameServer = 0;
api.PolicyAlternativeNameServerConfigTargetNameServer
    buildPolicyAlternativeNameServerConfigTargetNameServer() {
  var o = api.PolicyAlternativeNameServerConfigTargetNameServer();
  buildCounterPolicyAlternativeNameServerConfigTargetNameServer++;
  if (buildCounterPolicyAlternativeNameServerConfigTargetNameServer < 3) {
    o.forwardingPath = 'foo';
    o.ipv4Address = 'foo';
    o.kind = 'foo';
  }
  buildCounterPolicyAlternativeNameServerConfigTargetNameServer--;
  return o;
}

void checkPolicyAlternativeNameServerConfigTargetNameServer(
    api.PolicyAlternativeNameServerConfigTargetNameServer o) {
  buildCounterPolicyAlternativeNameServerConfigTargetNameServer++;
  if (buildCounterPolicyAlternativeNameServerConfigTargetNameServer < 3) {
    unittest.expect(o.forwardingPath, unittest.equals('foo'));
    unittest.expect(o.ipv4Address, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterPolicyAlternativeNameServerConfigTargetNameServer--;
}

core.int buildCounterPolicyNetwork = 0;
api.PolicyNetwork buildPolicyNetwork() {
  var o = api.PolicyNetwork();
  buildCounterPolicyNetwork++;
  if (buildCounterPolicyNetwork < 3) {
    o.kind = 'foo';
    o.networkUrl = 'foo';
  }
  buildCounterPolicyNetwork--;
  return o;
}

void checkPolicyNetwork(api.PolicyNetwork o) {
  buildCounterPolicyNetwork++;
  if (buildCounterPolicyNetwork < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.networkUrl, unittest.equals('foo'));
  }
  buildCounterPolicyNetwork--;
}

core.int buildCounterProject = 0;
api.Project buildProject() {
  var o = api.Project();
  buildCounterProject++;
  if (buildCounterProject < 3) {
    o.id = 'foo';
    o.kind = 'foo';
    o.number = 'foo';
    o.quota = buildQuota();
  }
  buildCounterProject--;
  return o;
}

void checkProject(api.Project o) {
  buildCounterProject++;
  if (buildCounterProject < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.number, unittest.equals('foo'));
    checkQuota(o.quota);
  }
  buildCounterProject--;
}

core.List<api.DnsKeySpec> buildUnnamed1802() {
  var o = <api.DnsKeySpec>[];
  o.add(buildDnsKeySpec());
  o.add(buildDnsKeySpec());
  return o;
}

void checkUnnamed1802(core.List<api.DnsKeySpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDnsKeySpec(o[0]);
  checkDnsKeySpec(o[1]);
}

core.int buildCounterQuota = 0;
api.Quota buildQuota() {
  var o = api.Quota();
  buildCounterQuota++;
  if (buildCounterQuota < 3) {
    o.dnsKeysPerManagedZone = 42;
    o.kind = 'foo';
    o.managedZones = 42;
    o.managedZonesPerNetwork = 42;
    o.networksPerManagedZone = 42;
    o.networksPerPolicy = 42;
    o.policies = 42;
    o.resourceRecordsPerRrset = 42;
    o.rrsetAdditionsPerChange = 42;
    o.rrsetDeletionsPerChange = 42;
    o.rrsetsPerManagedZone = 42;
    o.targetNameServersPerManagedZone = 42;
    o.targetNameServersPerPolicy = 42;
    o.totalRrdataSizePerChange = 42;
    o.whitelistedKeySpecs = buildUnnamed1802();
  }
  buildCounterQuota--;
  return o;
}

void checkQuota(api.Quota o) {
  buildCounterQuota++;
  if (buildCounterQuota < 3) {
    unittest.expect(o.dnsKeysPerManagedZone, unittest.equals(42));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.managedZones, unittest.equals(42));
    unittest.expect(o.managedZonesPerNetwork, unittest.equals(42));
    unittest.expect(o.networksPerManagedZone, unittest.equals(42));
    unittest.expect(o.networksPerPolicy, unittest.equals(42));
    unittest.expect(o.policies, unittest.equals(42));
    unittest.expect(o.resourceRecordsPerRrset, unittest.equals(42));
    unittest.expect(o.rrsetAdditionsPerChange, unittest.equals(42));
    unittest.expect(o.rrsetDeletionsPerChange, unittest.equals(42));
    unittest.expect(o.rrsetsPerManagedZone, unittest.equals(42));
    unittest.expect(o.targetNameServersPerManagedZone, unittest.equals(42));
    unittest.expect(o.targetNameServersPerPolicy, unittest.equals(42));
    unittest.expect(o.totalRrdataSizePerChange, unittest.equals(42));
    checkUnnamed1802(o.whitelistedKeySpecs);
  }
  buildCounterQuota--;
}

core.List<core.String> buildUnnamed1803() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1803(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed1804() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1804(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterResourceRecordSet = 0;
api.ResourceRecordSet buildResourceRecordSet() {
  var o = api.ResourceRecordSet();
  buildCounterResourceRecordSet++;
  if (buildCounterResourceRecordSet < 3) {
    o.kind = 'foo';
    o.name = 'foo';
    o.rrdatas = buildUnnamed1803();
    o.signatureRrdatas = buildUnnamed1804();
    o.ttl = 42;
    o.type = 'foo';
  }
  buildCounterResourceRecordSet--;
  return o;
}

void checkResourceRecordSet(api.ResourceRecordSet o) {
  buildCounterResourceRecordSet++;
  if (buildCounterResourceRecordSet < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed1803(o.rrdatas);
    checkUnnamed1804(o.signatureRrdatas);
    unittest.expect(o.ttl, unittest.equals(42));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterResourceRecordSet--;
}

core.List<api.ResourceRecordSet> buildUnnamed1805() {
  var o = <api.ResourceRecordSet>[];
  o.add(buildResourceRecordSet());
  o.add(buildResourceRecordSet());
  return o;
}

void checkUnnamed1805(core.List<api.ResourceRecordSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceRecordSet(o[0]);
  checkResourceRecordSet(o[1]);
}

core.int buildCounterResourceRecordSetsListResponse = 0;
api.ResourceRecordSetsListResponse buildResourceRecordSetsListResponse() {
  var o = api.ResourceRecordSetsListResponse();
  buildCounterResourceRecordSetsListResponse++;
  if (buildCounterResourceRecordSetsListResponse < 3) {
    o.header = buildResponseHeader();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.rrsets = buildUnnamed1805();
  }
  buildCounterResourceRecordSetsListResponse--;
  return o;
}

void checkResourceRecordSetsListResponse(api.ResourceRecordSetsListResponse o) {
  buildCounterResourceRecordSetsListResponse++;
  if (buildCounterResourceRecordSetsListResponse < 3) {
    checkResponseHeader(o.header);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed1805(o.rrsets);
  }
  buildCounterResourceRecordSetsListResponse--;
}

core.int buildCounterResponseHeader = 0;
api.ResponseHeader buildResponseHeader() {
  var o = api.ResponseHeader();
  buildCounterResponseHeader++;
  if (buildCounterResponseHeader < 3) {
    o.operationId = 'foo';
  }
  buildCounterResponseHeader--;
  return o;
}

void checkResponseHeader(api.ResponseHeader o) {
  buildCounterResponseHeader++;
  if (buildCounterResponseHeader < 3) {
    unittest.expect(o.operationId, unittest.equals('foo'));
  }
  buildCounterResponseHeader--;
}

void main() {
  unittest.group('obj-schema-Change', () {
    unittest.test('to-json--from-json', () {
      var o = buildChange();
      var od = api.Change.fromJson(o.toJson());
      checkChange(od);
    });
  });

  unittest.group('obj-schema-ChangesListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildChangesListResponse();
      var od = api.ChangesListResponse.fromJson(o.toJson());
      checkChangesListResponse(od);
    });
  });

  unittest.group('obj-schema-DnsKey', () {
    unittest.test('to-json--from-json', () {
      var o = buildDnsKey();
      var od = api.DnsKey.fromJson(o.toJson());
      checkDnsKey(od);
    });
  });

  unittest.group('obj-schema-DnsKeyDigest', () {
    unittest.test('to-json--from-json', () {
      var o = buildDnsKeyDigest();
      var od = api.DnsKeyDigest.fromJson(o.toJson());
      checkDnsKeyDigest(od);
    });
  });

  unittest.group('obj-schema-DnsKeySpec', () {
    unittest.test('to-json--from-json', () {
      var o = buildDnsKeySpec();
      var od = api.DnsKeySpec.fromJson(o.toJson());
      checkDnsKeySpec(od);
    });
  });

  unittest.group('obj-schema-DnsKeysListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildDnsKeysListResponse();
      var od = api.DnsKeysListResponse.fromJson(o.toJson());
      checkDnsKeysListResponse(od);
    });
  });

  unittest.group('obj-schema-ManagedZone', () {
    unittest.test('to-json--from-json', () {
      var o = buildManagedZone();
      var od = api.ManagedZone.fromJson(o.toJson());
      checkManagedZone(od);
    });
  });

  unittest.group('obj-schema-ManagedZoneDnsSecConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildManagedZoneDnsSecConfig();
      var od = api.ManagedZoneDnsSecConfig.fromJson(o.toJson());
      checkManagedZoneDnsSecConfig(od);
    });
  });

  unittest.group('obj-schema-ManagedZoneForwardingConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildManagedZoneForwardingConfig();
      var od = api.ManagedZoneForwardingConfig.fromJson(o.toJson());
      checkManagedZoneForwardingConfig(od);
    });
  });

  unittest.group('obj-schema-ManagedZoneForwardingConfigNameServerTarget', () {
    unittest.test('to-json--from-json', () {
      var o = buildManagedZoneForwardingConfigNameServerTarget();
      var od =
          api.ManagedZoneForwardingConfigNameServerTarget.fromJson(o.toJson());
      checkManagedZoneForwardingConfigNameServerTarget(od);
    });
  });

  unittest.group('obj-schema-ManagedZoneOperationsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildManagedZoneOperationsListResponse();
      var od = api.ManagedZoneOperationsListResponse.fromJson(o.toJson());
      checkManagedZoneOperationsListResponse(od);
    });
  });

  unittest.group('obj-schema-ManagedZonePeeringConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildManagedZonePeeringConfig();
      var od = api.ManagedZonePeeringConfig.fromJson(o.toJson());
      checkManagedZonePeeringConfig(od);
    });
  });

  unittest.group('obj-schema-ManagedZonePeeringConfigTargetNetwork', () {
    unittest.test('to-json--from-json', () {
      var o = buildManagedZonePeeringConfigTargetNetwork();
      var od = api.ManagedZonePeeringConfigTargetNetwork.fromJson(o.toJson());
      checkManagedZonePeeringConfigTargetNetwork(od);
    });
  });

  unittest.group('obj-schema-ManagedZonePrivateVisibilityConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildManagedZonePrivateVisibilityConfig();
      var od = api.ManagedZonePrivateVisibilityConfig.fromJson(o.toJson());
      checkManagedZonePrivateVisibilityConfig(od);
    });
  });

  unittest.group('obj-schema-ManagedZonePrivateVisibilityConfigNetwork', () {
    unittest.test('to-json--from-json', () {
      var o = buildManagedZonePrivateVisibilityConfigNetwork();
      var od =
          api.ManagedZonePrivateVisibilityConfigNetwork.fromJson(o.toJson());
      checkManagedZonePrivateVisibilityConfigNetwork(od);
    });
  });

  unittest.group('obj-schema-ManagedZoneReverseLookupConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildManagedZoneReverseLookupConfig();
      var od = api.ManagedZoneReverseLookupConfig.fromJson(o.toJson());
      checkManagedZoneReverseLookupConfig(od);
    });
  });

  unittest.group('obj-schema-ManagedZonesListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildManagedZonesListResponse();
      var od = api.ManagedZonesListResponse.fromJson(o.toJson());
      checkManagedZonesListResponse(od);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperation();
      var od = api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-OperationDnsKeyContext', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperationDnsKeyContext();
      var od = api.OperationDnsKeyContext.fromJson(o.toJson());
      checkOperationDnsKeyContext(od);
    });
  });

  unittest.group('obj-schema-OperationManagedZoneContext', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperationManagedZoneContext();
      var od = api.OperationManagedZoneContext.fromJson(o.toJson());
      checkOperationManagedZoneContext(od);
    });
  });

  unittest.group('obj-schema-PoliciesListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildPoliciesListResponse();
      var od = api.PoliciesListResponse.fromJson(o.toJson());
      checkPoliciesListResponse(od);
    });
  });

  unittest.group('obj-schema-PoliciesPatchResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildPoliciesPatchResponse();
      var od = api.PoliciesPatchResponse.fromJson(o.toJson());
      checkPoliciesPatchResponse(od);
    });
  });

  unittest.group('obj-schema-PoliciesUpdateResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildPoliciesUpdateResponse();
      var od = api.PoliciesUpdateResponse.fromJson(o.toJson());
      checkPoliciesUpdateResponse(od);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () {
      var o = buildPolicy();
      var od = api.Policy.fromJson(o.toJson());
      checkPolicy(od);
    });
  });

  unittest.group('obj-schema-PolicyAlternativeNameServerConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildPolicyAlternativeNameServerConfig();
      var od = api.PolicyAlternativeNameServerConfig.fromJson(o.toJson());
      checkPolicyAlternativeNameServerConfig(od);
    });
  });

  unittest.group('obj-schema-PolicyAlternativeNameServerConfigTargetNameServer',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildPolicyAlternativeNameServerConfigTargetNameServer();
      var od = api.PolicyAlternativeNameServerConfigTargetNameServer.fromJson(
          o.toJson());
      checkPolicyAlternativeNameServerConfigTargetNameServer(od);
    });
  });

  unittest.group('obj-schema-PolicyNetwork', () {
    unittest.test('to-json--from-json', () {
      var o = buildPolicyNetwork();
      var od = api.PolicyNetwork.fromJson(o.toJson());
      checkPolicyNetwork(od);
    });
  });

  unittest.group('obj-schema-Project', () {
    unittest.test('to-json--from-json', () {
      var o = buildProject();
      var od = api.Project.fromJson(o.toJson());
      checkProject(od);
    });
  });

  unittest.group('obj-schema-Quota', () {
    unittest.test('to-json--from-json', () {
      var o = buildQuota();
      var od = api.Quota.fromJson(o.toJson());
      checkQuota(od);
    });
  });

  unittest.group('obj-schema-ResourceRecordSet', () {
    unittest.test('to-json--from-json', () {
      var o = buildResourceRecordSet();
      var od = api.ResourceRecordSet.fromJson(o.toJson());
      checkResourceRecordSet(od);
    });
  });

  unittest.group('obj-schema-ResourceRecordSetsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildResourceRecordSetsListResponse();
      var od = api.ResourceRecordSetsListResponse.fromJson(o.toJson());
      checkResourceRecordSetsListResponse(od);
    });
  });

  unittest.group('obj-schema-ResponseHeader', () {
    unittest.test('to-json--from-json', () {
      var o = buildResponseHeader();
      var od = api.ResponseHeader.fromJson(o.toJson());
      checkResponseHeader(od);
    });
  });

  unittest.group('resource-ChangesResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DnsApi(mock).changes;
      var arg_request = buildChange();
      var arg_project = 'foo';
      var arg_managedZone = 'foo';
      var arg_clientOperationId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Change.fromJson(json);
        checkChange(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("dns/v1/projects/"));
        pathOffset += 16;
        index = path.indexOf('/managedZones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_project'));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/managedZones/"));
        pathOffset += 14;
        index = path.indexOf('/changes', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_managedZone'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/changes"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["clientOperationId"].first,
            unittest.equals(arg_clientOperationId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildChange());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_project, arg_managedZone,
              clientOperationId: arg_clientOperationId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkChange(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DnsApi(mock).changes;
      var arg_project = 'foo';
      var arg_managedZone = 'foo';
      var arg_changeId = 'foo';
      var arg_clientOperationId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("dns/v1/projects/"));
        pathOffset += 16;
        index = path.indexOf('/managedZones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_project'));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/managedZones/"));
        pathOffset += 14;
        index = path.indexOf('/changes/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_managedZone'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/changes/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_changeId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["clientOperationId"].first,
            unittest.equals(arg_clientOperationId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildChange());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_managedZone, arg_changeId,
              clientOperationId: arg_clientOperationId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkChange(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DnsApi(mock).changes;
      var arg_project = 'foo';
      var arg_managedZone = 'foo';
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_sortBy = 'foo';
      var arg_sortOrder = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("dns/v1/projects/"));
        pathOffset += 16;
        index = path.indexOf('/managedZones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_project'));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/managedZones/"));
        pathOffset += 14;
        index = path.indexOf('/changes', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_managedZone'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/changes"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["sortBy"].first, unittest.equals(arg_sortBy));
        unittest.expect(
            queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildChangesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project, arg_managedZone,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              sortBy: arg_sortBy,
              sortOrder: arg_sortOrder,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkChangesListResponse(response);
      })));
    });
  });

  unittest.group('resource-DnsKeysResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DnsApi(mock).dnsKeys;
      var arg_project = 'foo';
      var arg_managedZone = 'foo';
      var arg_dnsKeyId = 'foo';
      var arg_clientOperationId = 'foo';
      var arg_digestType = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("dns/v1/projects/"));
        pathOffset += 16;
        index = path.indexOf('/managedZones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_project'));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/managedZones/"));
        pathOffset += 14;
        index = path.indexOf('/dnsKeys/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_managedZone'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/dnsKeys/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_dnsKeyId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["clientOperationId"].first,
            unittest.equals(arg_clientOperationId));
        unittest.expect(
            queryMap["digestType"].first, unittest.equals(arg_digestType));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDnsKey());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_managedZone, arg_dnsKeyId,
              clientOperationId: arg_clientOperationId,
              digestType: arg_digestType,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDnsKey(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DnsApi(mock).dnsKeys;
      var arg_project = 'foo';
      var arg_managedZone = 'foo';
      var arg_digestType = 'foo';
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("dns/v1/projects/"));
        pathOffset += 16;
        index = path.indexOf('/managedZones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_project'));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/managedZones/"));
        pathOffset += 14;
        index = path.indexOf('/dnsKeys', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_managedZone'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/dnsKeys"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["digestType"].first, unittest.equals(arg_digestType));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDnsKeysListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project, arg_managedZone,
              digestType: arg_digestType,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDnsKeysListResponse(response);
      })));
    });
  });

  unittest.group('resource-ManagedZoneOperationsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DnsApi(mock).managedZoneOperations;
      var arg_project = 'foo';
      var arg_managedZone = 'foo';
      var arg_operation = 'foo';
      var arg_clientOperationId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("dns/v1/projects/"));
        pathOffset += 16;
        index = path.indexOf('/managedZones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_project'));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/managedZones/"));
        pathOffset += 14;
        index = path.indexOf('/operations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_managedZone'));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/operations/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_operation'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["clientOperationId"].first,
            unittest.equals(arg_clientOperationId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_managedZone, arg_operation,
              clientOperationId: arg_clientOperationId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DnsApi(mock).managedZoneOperations;
      var arg_project = 'foo';
      var arg_managedZone = 'foo';
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_sortBy = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("dns/v1/projects/"));
        pathOffset += 16;
        index = path.indexOf('/managedZones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_project'));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/managedZones/"));
        pathOffset += 14;
        index = path.indexOf('/operations', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_managedZone'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/operations"));
        pathOffset += 11;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["sortBy"].first, unittest.equals(arg_sortBy));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildManagedZoneOperationsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project, arg_managedZone,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              sortBy: arg_sortBy,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkManagedZoneOperationsListResponse(response);
      })));
    });
  });

  unittest.group('resource-ManagedZonesResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DnsApi(mock).managedZones;
      var arg_request = buildManagedZone();
      var arg_project = 'foo';
      var arg_clientOperationId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ManagedZone.fromJson(json);
        checkManagedZone(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("dns/v1/projects/"));
        pathOffset += 16;
        index = path.indexOf('/managedZones', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_project'));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/managedZones"));
        pathOffset += 13;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["clientOperationId"].first,
            unittest.equals(arg_clientOperationId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildManagedZone());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_project,
              clientOperationId: arg_clientOperationId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkManagedZone(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DnsApi(mock).managedZones;
      var arg_project = 'foo';
      var arg_managedZone = 'foo';
      var arg_clientOperationId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("dns/v1/projects/"));
        pathOffset += 16;
        index = path.indexOf('/managedZones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_project'));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/managedZones/"));
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_managedZone'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["clientOperationId"].first,
            unittest.equals(arg_clientOperationId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_project, arg_managedZone,
              clientOperationId: arg_clientOperationId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DnsApi(mock).managedZones;
      var arg_project = 'foo';
      var arg_managedZone = 'foo';
      var arg_clientOperationId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("dns/v1/projects/"));
        pathOffset += 16;
        index = path.indexOf('/managedZones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_project'));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/managedZones/"));
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_managedZone'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["clientOperationId"].first,
            unittest.equals(arg_clientOperationId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildManagedZone());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_managedZone,
              clientOperationId: arg_clientOperationId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkManagedZone(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DnsApi(mock).managedZones;
      var arg_project = 'foo';
      var arg_dnsName = 'foo';
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("dns/v1/projects/"));
        pathOffset += 16;
        index = path.indexOf('/managedZones', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_project'));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/managedZones"));
        pathOffset += 13;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["dnsName"].first, unittest.equals(arg_dnsName));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildManagedZonesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project,
              dnsName: arg_dnsName,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkManagedZonesListResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DnsApi(mock).managedZones;
      var arg_request = buildManagedZone();
      var arg_project = 'foo';
      var arg_managedZone = 'foo';
      var arg_clientOperationId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ManagedZone.fromJson(json);
        checkManagedZone(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("dns/v1/projects/"));
        pathOffset += 16;
        index = path.indexOf('/managedZones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_project'));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/managedZones/"));
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_managedZone'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["clientOperationId"].first,
            unittest.equals(arg_clientOperationId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_project, arg_managedZone,
              clientOperationId: arg_clientOperationId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.DnsApi(mock).managedZones;
      var arg_request = buildManagedZone();
      var arg_project = 'foo';
      var arg_managedZone = 'foo';
      var arg_clientOperationId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ManagedZone.fromJson(json);
        checkManagedZone(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("dns/v1/projects/"));
        pathOffset += 16;
        index = path.indexOf('/managedZones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_project'));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/managedZones/"));
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_managedZone'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["clientOperationId"].first,
            unittest.equals(arg_clientOperationId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_project, arg_managedZone,
              clientOperationId: arg_clientOperationId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group('resource-PoliciesResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DnsApi(mock).policies;
      var arg_request = buildPolicy();
      var arg_project = 'foo';
      var arg_clientOperationId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Policy.fromJson(json);
        checkPolicy(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("dns/v1/projects/"));
        pathOffset += 16;
        index = path.indexOf('/policies', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_project'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/policies"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["clientOperationId"].first,
            unittest.equals(arg_clientOperationId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_project,
              clientOperationId: arg_clientOperationId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DnsApi(mock).policies;
      var arg_project = 'foo';
      var arg_policy = 'foo';
      var arg_clientOperationId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("dns/v1/projects/"));
        pathOffset += 16;
        index = path.indexOf('/policies/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_project'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/policies/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_policy'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["clientOperationId"].first,
            unittest.equals(arg_clientOperationId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_project, arg_policy,
              clientOperationId: arg_clientOperationId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DnsApi(mock).policies;
      var arg_project = 'foo';
      var arg_policy = 'foo';
      var arg_clientOperationId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("dns/v1/projects/"));
        pathOffset += 16;
        index = path.indexOf('/policies/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_project'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/policies/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_policy'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["clientOperationId"].first,
            unittest.equals(arg_clientOperationId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_policy,
              clientOperationId: arg_clientOperationId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DnsApi(mock).policies;
      var arg_project = 'foo';
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("dns/v1/projects/"));
        pathOffset += 16;
        index = path.indexOf('/policies', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_project'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/policies"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPoliciesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPoliciesListResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DnsApi(mock).policies;
      var arg_request = buildPolicy();
      var arg_project = 'foo';
      var arg_policy = 'foo';
      var arg_clientOperationId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Policy.fromJson(json);
        checkPolicy(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("dns/v1/projects/"));
        pathOffset += 16;
        index = path.indexOf('/policies/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_project'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/policies/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_policy'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["clientOperationId"].first,
            unittest.equals(arg_clientOperationId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPoliciesPatchResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_project, arg_policy,
              clientOperationId: arg_clientOperationId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPoliciesPatchResponse(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.DnsApi(mock).policies;
      var arg_request = buildPolicy();
      var arg_project = 'foo';
      var arg_policy = 'foo';
      var arg_clientOperationId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Policy.fromJson(json);
        checkPolicy(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("dns/v1/projects/"));
        pathOffset += 16;
        index = path.indexOf('/policies/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_project'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/policies/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_policy'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["clientOperationId"].first,
            unittest.equals(arg_clientOperationId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPoliciesUpdateResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_project, arg_policy,
              clientOperationId: arg_clientOperationId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPoliciesUpdateResponse(response);
      })));
    });
  });

  unittest.group('resource-ProjectsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DnsApi(mock).projects;
      var arg_project = 'foo';
      var arg_clientOperationId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("dns/v1/projects/"));
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_project'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["clientOperationId"].first,
            unittest.equals(arg_clientOperationId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildProject());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project,
              clientOperationId: arg_clientOperationId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProject(response);
      })));
    });
  });

  unittest.group('resource-ResourceRecordSetsResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DnsApi(mock).resourceRecordSets;
      var arg_project = 'foo';
      var arg_managedZone = 'foo';
      var arg_maxResults = 42;
      var arg_name = 'foo';
      var arg_pageToken = 'foo';
      var arg_type = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("dns/v1/projects/"));
        pathOffset += 16;
        index = path.indexOf('/managedZones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_project'));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/managedZones/"));
        pathOffset += 14;
        index = path.indexOf('/rrsets', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_managedZone'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/rrsets"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["name"].first, unittest.equals(arg_name));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["type"].first, unittest.equals(arg_type));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildResourceRecordSetsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project, arg_managedZone,
              maxResults: arg_maxResults,
              name: arg_name,
              pageToken: arg_pageToken,
              type: arg_type,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkResourceRecordSetsListResponse(response);
      })));
    });
  });
}
