// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.serviceuser.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http_1;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client serviceuser/v1';

/// Enables services that service consumers want to use on Google Cloud
/// Platform, lists the available or enabled services, or disables services that
/// service consumers no longer use.
class ServiceuserApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  /// View your data across Google Cloud Platform services
  static const CloudPlatformReadOnlyScope =
      "https://www.googleapis.com/auth/cloud-platform.read-only";

  /// Manage your Google API service configuration
  static const ServiceManagementScope =
      "https://www.googleapis.com/auth/service.management";

  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);
  ServicesResourceApi get services => new ServicesResourceApi(_requester);

  ServiceuserApi(http_1.Client client,
      {core.String rootUrl: "https://serviceuser.googleapis.com/",
      core.String servicePath: ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsServicesResourceApi get services =>
      new ProjectsServicesResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;
}

class ProjectsServicesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsServicesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Disable a service so it can no longer be used with a
  /// project. This prevents unintended usage that may cause unexpected billing
  /// charges or security leaks.
  ///
  /// Operation<response: google.protobuf.Empty>
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the consumer and the service to disable for that
  /// consumer.
  ///
  /// The Service User implementation accepts the following forms for consumer:
  /// - "project:<project_id>"
  ///
  /// A valid path would be:
  /// - projects/my-project/services/servicemanagement.googleapis.com
  /// Value must have pattern "^projects/[^/]+/services/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Operation> disable(
      DisableServiceRequest request, core.String name,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':disable';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Enable a service so it can be used with a project.
  /// See [Cloud Auth Guide](https://cloud.google.com/docs/authentication) for
  /// more information.
  ///
  /// Operation<response: google.protobuf.Empty>
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the consumer and the service to enable for that consumer.
  ///
  /// A valid path would be:
  /// - projects/my-project/services/servicemanagement.googleapis.com
  /// Value must have pattern "^projects/[^/]+/services/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Operation> enable(EnableServiceRequest request, core.String name,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':enable';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// List enabled services for the specified consumer.
  ///
  /// Request parameters:
  ///
  /// [parent] - List enabled services for the specified parent.
  ///
  /// An example valid parent would be:
  /// - projects/my-project
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [pageToken] - Token identifying which result to start with; returned by a
  /// previous list
  /// call.
  ///
  /// [pageSize] - Requested size of the next page of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListEnabledServicesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<ListEnabledServicesResponse> list(core.String parent,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/services';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListEnabledServicesResponse.fromJson(data));
  }
}

class ServicesResourceApi {
  final commons.ApiRequester _requester;

  ServicesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Search available services.
  ///
  /// When no filter is specified, returns all accessible services. For
  /// authenticated users, also returns all services the calling user has
  /// "servicemanagement.services.bind" permission for.
  ///
  /// Request parameters:
  ///
  /// [pageToken] - Token identifying which result to start with; returned by a
  /// previous list
  /// call.
  ///
  /// [pageSize] - Requested size of the next page of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchServicesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<SearchServicesResponse> search(
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/services:search';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new SearchServicesResponse.fromJson(data));
  }
}

/// Api is a light-weight descriptor for an API Interface.
///
/// Interfaces are also described as "protocol buffer services" in some
/// contexts,
/// such as by the "service" keyword in a .proto file, but they are different
/// from API Services, which represent a concrete implementation of an interface
/// as opposed to simply a description of methods and bindings. They are also
/// sometimes simply referred to as "APIs" in other contexts, such as the name
/// of
/// this message itself. See https://cloud.google.com/apis/design/glossary for
/// detailed terminology.
class Api {
  /// The methods of this interface, in unspecified order.
  core.List<Method> methods;

  /// Included interfaces. See Mixin.
  core.List<Mixin> mixins;

  /// The fully qualified name of this interface, including package name
  /// followed by the interface's simple name.
  core.String name;

  /// Any metadata attached to the interface.
  core.List<Option> options;

  /// Source context for the protocol buffer service represented by this
  /// message.
  SourceContext sourceContext;

  /// The source syntax of the service.
  /// Possible string values are:
  /// - "SYNTAX_PROTO2" : Syntax `proto2`.
  /// - "SYNTAX_PROTO3" : Syntax `proto3`.
  core.String syntax;

  /// A version string for this interface. If specified, must have the form
  /// `major-version.minor-version`, as in `1.10`. If the minor version is
  /// omitted, it defaults to zero. If the entire version field is empty, the
  /// major version is derived from the package name, as outlined below. If the
  /// field is not empty, the version in the package name will be verified to be
  /// consistent with what is provided here.
  ///
  /// The versioning schema uses [semantic
  /// versioning](http://semver.org) where the major version number
  /// indicates a breaking change and the minor version an additive,
  /// non-breaking change. Both version numbers are signals to users
  /// what to expect from different versions, and should be carefully
  /// chosen based on the product plan.
  ///
  /// The major version is also reflected in the package name of the
  /// interface, which must end in `v<major-version>`, as in
  /// `google.feature.v1`. For major versions 0 and 1, the suffix can
  /// be omitted. Zero major versions must only be used for
  /// experimental, non-GA interfaces.
  core.String version;

  Api();

  Api.fromJson(core.Map _json) {
    if (_json.containsKey("methods")) {
      methods = (_json["methods"] as core.List)
          .map<Method>((value) => new Method.fromJson(value))
          .toList();
    }
    if (_json.containsKey("mixins")) {
      mixins = (_json["mixins"] as core.List)
          .map<Mixin>((value) => new Mixin.fromJson(value))
          .toList();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("options")) {
      options = (_json["options"] as core.List)
          .map<Option>((value) => new Option.fromJson(value))
          .toList();
    }
    if (_json.containsKey("sourceContext")) {
      sourceContext = new SourceContext.fromJson(_json["sourceContext"]);
    }
    if (_json.containsKey("syntax")) {
      syntax = _json["syntax"];
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (methods != null) {
      _json["methods"] = methods.map((value) => (value).toJson()).toList();
    }
    if (mixins != null) {
      _json["mixins"] = mixins.map((value) => (value).toJson()).toList();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (options != null) {
      _json["options"] = options.map((value) => (value).toJson()).toList();
    }
    if (sourceContext != null) {
      _json["sourceContext"] = (sourceContext).toJson();
    }
    if (syntax != null) {
      _json["syntax"] = syntax;
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}

/// Configuration for an anthentication provider, including support for
/// [JSON Web Token
/// (JWT)](https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32).
class AuthProvider {
  /// The list of JWT
  /// [audiences](https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32#section-4.1.3).
  /// that are allowed to access. A JWT containing any of these audiences will
  /// be accepted. When this setting is absent, only JWTs with audience
  /// "https://Service_name/API_name"
  /// will be accepted. For example, if no audiences are in the setting,
  /// LibraryService API will only accept JWTs with the following audience
  /// "https://library-example.googleapis.com/google.example.library.v1.LibraryService".
  ///
  /// Example:
  ///
  ///     audiences: bookstore_android.apps.googleusercontent.com,
  ///                bookstore_web.apps.googleusercontent.com
  core.String audiences;

  /// Redirect URL if JWT token is required but no present or is expired.
  /// Implement authorizationUrl of securityDefinitions in OpenAPI spec.
  core.String authorizationUrl;

  /// The unique identifier of the auth provider. It will be referred to by
  /// `AuthRequirement.provider_id`.
  ///
  /// Example: "bookstore_auth".
  core.String id;

  /// Identifies the principal that issued the JWT. See
  /// https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32#section-4.1.1
  /// Usually a URL or an email address.
  ///
  /// Example: https://securetoken.google.com
  /// Example: 1234567-compute@developer.gserviceaccount.com
  core.String issuer;

  /// URL of the provider's public key set to validate signature of the JWT. See
  /// [OpenID
  /// Discovery](https://openid.net/specs/openid-connect-discovery-1_0.html#ProviderMetadata).
  /// Optional if the key set document:
  ///  - can be retrieved from
  /// [OpenID
  /// Discovery](https://openid.net/specs/openid-connect-discovery-1_0.html
  ///    of the issuer.
  /// - can be inferred from the email domain of the issuer (e.g. a Google
  /// service account).
  ///
  /// Example: https://www.googleapis.com/oauth2/v1/certs
  core.String jwksUri;

  AuthProvider();

  AuthProvider.fromJson(core.Map _json) {
    if (_json.containsKey("audiences")) {
      audiences = _json["audiences"];
    }
    if (_json.containsKey("authorizationUrl")) {
      authorizationUrl = _json["authorizationUrl"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("issuer")) {
      issuer = _json["issuer"];
    }
    if (_json.containsKey("jwksUri")) {
      jwksUri = _json["jwksUri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (audiences != null) {
      _json["audiences"] = audiences;
    }
    if (authorizationUrl != null) {
      _json["authorizationUrl"] = authorizationUrl;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (issuer != null) {
      _json["issuer"] = issuer;
    }
    if (jwksUri != null) {
      _json["jwksUri"] = jwksUri;
    }
    return _json;
  }
}

/// User-defined authentication requirements, including support for
/// [JSON Web Token
/// (JWT)](https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32).
class AuthRequirement {
  /// NOTE: This will be deprecated soon, once AuthProvider.audiences is
  /// implemented and accepted in all the runtime components.
  ///
  /// The list of JWT
  /// [audiences](https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32#section-4.1.3).
  /// that are allowed to access. A JWT containing any of these audiences will
  /// be accepted. When this setting is absent, only JWTs with audience
  /// "https://Service_name/API_name"
  /// will be accepted. For example, if no audiences are in the setting,
  /// LibraryService API will only accept JWTs with the following audience
  /// "https://library-example.googleapis.com/google.example.library.v1.LibraryService".
  ///
  /// Example:
  ///
  ///     audiences: bookstore_android.apps.googleusercontent.com,
  ///                bookstore_web.apps.googleusercontent.com
  core.String audiences;

  /// id from authentication provider.
  ///
  /// Example:
  ///
  ///     provider_id: bookstore_auth
  core.String providerId;

  AuthRequirement();

  AuthRequirement.fromJson(core.Map _json) {
    if (_json.containsKey("audiences")) {
      audiences = _json["audiences"];
    }
    if (_json.containsKey("providerId")) {
      providerId = _json["providerId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (audiences != null) {
      _json["audiences"] = audiences;
    }
    if (providerId != null) {
      _json["providerId"] = providerId;
    }
    return _json;
  }
}

/// `Authentication` defines the authentication configuration for an API.
///
/// Example for an API targeted for external use:
///
///     name: calendar.googleapis.com
///     authentication:
///       providers:
///       - id: google_calendar_auth
///         jwks_uri: https://www.googleapis.com/oauth2/v1/certs
///         issuer: https://securetoken.google.com
///       rules:
///       - selector: "*"
///         requirements:
///           provider_id: google_calendar_auth
class Authentication {
  /// Defines a set of authentication providers that a service supports.
  core.List<AuthProvider> providers;

  /// A list of authentication rules that apply to individual API methods.
  ///
  /// **NOTE:** All service configuration rules follow "last one wins" order.
  core.List<AuthenticationRule> rules;

  Authentication();

  Authentication.fromJson(core.Map _json) {
    if (_json.containsKey("providers")) {
      providers = (_json["providers"] as core.List)
          .map<AuthProvider>((value) => new AuthProvider.fromJson(value))
          .toList();
    }
    if (_json.containsKey("rules")) {
      rules = (_json["rules"] as core.List)
          .map<AuthenticationRule>(
              (value) => new AuthenticationRule.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (providers != null) {
      _json["providers"] = providers.map((value) => (value).toJson()).toList();
    }
    if (rules != null) {
      _json["rules"] = rules.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Authentication rules for the service.
///
/// By default, if a method has any authentication requirements, every request
/// must include a valid credential matching one of the requirements.
/// It's an error to include more than one kind of credential in a single
/// request.
///
/// If a method doesn't have any auth requirements, request credentials will be
/// ignored.
class AuthenticationRule {
  /// If true, the service accepts API keys without any other credential.
  core.bool allowWithoutCredential;

  /// The requirements for OAuth credentials.
  OAuthRequirements oauth;

  /// Requirements for additional authentication providers.
  core.List<AuthRequirement> requirements;

  /// Selects the methods to which this rule applies.
  ///
  /// Refer to selector for syntax details.
  core.String selector;

  AuthenticationRule();

  AuthenticationRule.fromJson(core.Map _json) {
    if (_json.containsKey("allowWithoutCredential")) {
      allowWithoutCredential = _json["allowWithoutCredential"];
    }
    if (_json.containsKey("oauth")) {
      oauth = new OAuthRequirements.fromJson(_json["oauth"]);
    }
    if (_json.containsKey("requirements")) {
      requirements = (_json["requirements"] as core.List)
          .map<AuthRequirement>((value) => new AuthRequirement.fromJson(value))
          .toList();
    }
    if (_json.containsKey("selector")) {
      selector = _json["selector"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (allowWithoutCredential != null) {
      _json["allowWithoutCredential"] = allowWithoutCredential;
    }
    if (oauth != null) {
      _json["oauth"] = (oauth).toJson();
    }
    if (requirements != null) {
      _json["requirements"] =
          requirements.map((value) => (value).toJson()).toList();
    }
    if (selector != null) {
      _json["selector"] = selector;
    }
    return _json;
  }
}

/// Configuration of authorization.
///
/// This section determines the authorization provider, if unspecified, then no
/// authorization check will be done.
///
/// Example:
///
///     experimental:
///       authorization:
///         provider: firebaserules.googleapis.com
class AuthorizationConfig {
  /// The name of the authorization provider, such as
  /// firebaserules.googleapis.com.
  core.String provider;

  AuthorizationConfig();

  AuthorizationConfig.fromJson(core.Map _json) {
    if (_json.containsKey("provider")) {
      provider = _json["provider"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (provider != null) {
      _json["provider"] = provider;
    }
    return _json;
  }
}

/// `Backend` defines the backend configuration for a service.
class Backend {
  /// A list of API backend rules that apply to individual API methods.
  ///
  /// **NOTE:** All service configuration rules follow "last one wins" order.
  core.List<BackendRule> rules;

  Backend();

  Backend.fromJson(core.Map _json) {
    if (_json.containsKey("rules")) {
      rules = (_json["rules"] as core.List)
          .map<BackendRule>((value) => new BackendRule.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (rules != null) {
      _json["rules"] = rules.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A backend rule provides configuration for an individual API element.
class BackendRule {
  /// The address of the API backend.
  core.String address;

  /// The number of seconds to wait for a response from a request.  The default
  /// deadline for gRPC is infinite (no deadline) and HTTP requests is 5
  /// seconds.
  core.double deadline;

  /// Minimum deadline in seconds needed for this method. Calls having deadline
  /// value lower than this will be rejected.
  core.double minDeadline;

  /// Selects the methods to which this rule applies.
  ///
  /// Refer to selector for syntax details.
  core.String selector;

  BackendRule();

  BackendRule.fromJson(core.Map _json) {
    if (_json.containsKey("address")) {
      address = _json["address"];
    }
    if (_json.containsKey("deadline")) {
      deadline = _json["deadline"].toDouble();
    }
    if (_json.containsKey("minDeadline")) {
      minDeadline = _json["minDeadline"].toDouble();
    }
    if (_json.containsKey("selector")) {
      selector = _json["selector"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (address != null) {
      _json["address"] = address;
    }
    if (deadline != null) {
      _json["deadline"] = deadline;
    }
    if (minDeadline != null) {
      _json["minDeadline"] = minDeadline;
    }
    if (selector != null) {
      _json["selector"] = selector;
    }
    return _json;
  }
}

/// Billing related configuration of the service.
///
/// The following example shows how to configure monitored resources and metrics
/// for billing:
///
///     monitored_resources:
///     - type: library.googleapis.com/branch
///       labels:
///       - key: /city
///         description: The city where the library branch is located in.
///       - key: /name
///         description: The name of the branch.
///     metrics:
///     - name: library.googleapis.com/book/borrowed_count
///       metric_kind: DELTA
///       value_type: INT64
///     billing:
///       consumer_destinations:
///       - monitored_resource: library.googleapis.com/branch
///         metrics:
///         - library.googleapis.com/book/borrowed_count
class Billing {
  /// Billing configurations for sending metrics to the consumer project.
  /// There can be multiple consumer destinations per service, each one must
  /// have
  /// a different monitored resource type. A metric can be used in at most
  /// one consumer destination.
  core.List<BillingDestination> consumerDestinations;

  Billing();

  Billing.fromJson(core.Map _json) {
    if (_json.containsKey("consumerDestinations")) {
      consumerDestinations = (_json["consumerDestinations"] as core.List)
          .map<BillingDestination>(
              (value) => new BillingDestination.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (consumerDestinations != null) {
      _json["consumerDestinations"] =
          consumerDestinations.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Configuration of a specific billing destination (Currently only support
/// bill against consumer project).
class BillingDestination {
  /// Names of the metrics to report to this billing destination.
  /// Each name must be defined in Service.metrics section.
  core.List<core.String> metrics;

  /// The monitored resource type. The type must be defined in
  /// Service.monitored_resources section.
  core.String monitoredResource;

  BillingDestination();

  BillingDestination.fromJson(core.Map _json) {
    if (_json.containsKey("metrics")) {
      metrics = (_json["metrics"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("monitoredResource")) {
      monitoredResource = _json["monitoredResource"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (metrics != null) {
      _json["metrics"] = metrics;
    }
    if (monitoredResource != null) {
      _json["monitoredResource"] = monitoredResource;
    }
    return _json;
  }
}

/// `Context` defines which contexts an API requests.
///
/// Example:
///
///     context:
///       rules:
///       - selector: "*"
///         requested:
///         - google.rpc.context.ProjectContext
///         - google.rpc.context.OriginContext
///
/// The above specifies that all methods in the API request
/// `google.rpc.context.ProjectContext` and
/// `google.rpc.context.OriginContext`.
///
/// Available context types are defined in package
/// `google.rpc.context`.
///
/// This also provides mechanism to whitelist any protobuf message extension
/// that
/// can be sent in grpc metadata using “x-goog-ext-<extension_id>-bin” and
/// “x-goog-ext-<extension_id>-jspb” format. For example, list any service
/// specific protobuf types that can appear in grpc metadata as follows in your
/// yaml file:
///
/// Example:
///
///     context:
///       rules:
///        - selector: "google.example.library.v1.LibraryService.CreateBook"
///          allowed_request_extensions:
///          - google.foo.v1.NewExtension
///          allowed_response_extensions:
///          - google.foo.v1.NewExtension
///
/// You can also specify extension ID instead of fully qualified extension name
/// here.
class Context {
  /// A list of RPC context rules that apply to individual API methods.
  ///
  /// **NOTE:** All service configuration rules follow "last one wins" order.
  core.List<ContextRule> rules;

  Context();

  Context.fromJson(core.Map _json) {
    if (_json.containsKey("rules")) {
      rules = (_json["rules"] as core.List)
          .map<ContextRule>((value) => new ContextRule.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (rules != null) {
      _json["rules"] = rules.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A context rule provides information about the context for an individual API
/// element.
class ContextRule {
  /// A list of full type names or extension IDs of extensions allowed in grpc
  /// side channel from client to backend.
  core.List<core.String> allowedRequestExtensions;

  /// A list of full type names or extension IDs of extensions allowed in grpc
  /// side channel from backend to client.
  core.List<core.String> allowedResponseExtensions;

  /// A list of full type names of provided contexts.
  core.List<core.String> provided;

  /// A list of full type names of requested contexts.
  core.List<core.String> requested;

  /// Selects the methods to which this rule applies.
  ///
  /// Refer to selector for syntax details.
  core.String selector;

  ContextRule();

  ContextRule.fromJson(core.Map _json) {
    if (_json.containsKey("allowedRequestExtensions")) {
      allowedRequestExtensions =
          (_json["allowedRequestExtensions"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("allowedResponseExtensions")) {
      allowedResponseExtensions =
          (_json["allowedResponseExtensions"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("provided")) {
      provided = (_json["provided"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("requested")) {
      requested = (_json["requested"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("selector")) {
      selector = _json["selector"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (allowedRequestExtensions != null) {
      _json["allowedRequestExtensions"] = allowedRequestExtensions;
    }
    if (allowedResponseExtensions != null) {
      _json["allowedResponseExtensions"] = allowedResponseExtensions;
    }
    if (provided != null) {
      _json["provided"] = provided;
    }
    if (requested != null) {
      _json["requested"] = requested;
    }
    if (selector != null) {
      _json["selector"] = selector;
    }
    return _json;
  }
}

/// Selects and configures the service controller used by the service.  The
/// service controller handles features like abuse, quota, billing, logging,
/// monitoring, etc.
class Control {
  /// The service control environment to use. If empty, no control plane
  /// feature (like quota and billing) will be enabled.
  core.String environment;

  Control();

  Control.fromJson(core.Map _json) {
    if (_json.containsKey("environment")) {
      environment = _json["environment"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (environment != null) {
      _json["environment"] = environment;
    }
    return _json;
  }
}

/// Customize service error responses.  For example, list any service
/// specific protobuf types that can appear in error detail lists of
/// error responses.
///
/// Example:
///
///     custom_error:
///       types:
///       - google.foo.v1.CustomError
///       - google.foo.v1.AnotherError
class CustomError {
  /// The list of custom error rules that apply to individual API messages.
  ///
  /// **NOTE:** All service configuration rules follow "last one wins" order.
  core.List<CustomErrorRule> rules;

  /// The list of custom error detail types, e.g. 'google.foo.v1.CustomError'.
  core.List<core.String> types;

  CustomError();

  CustomError.fromJson(core.Map _json) {
    if (_json.containsKey("rules")) {
      rules = (_json["rules"] as core.List)
          .map<CustomErrorRule>((value) => new CustomErrorRule.fromJson(value))
          .toList();
    }
    if (_json.containsKey("types")) {
      types = (_json["types"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (rules != null) {
      _json["rules"] = rules.map((value) => (value).toJson()).toList();
    }
    if (types != null) {
      _json["types"] = types;
    }
    return _json;
  }
}

/// A custom error rule.
class CustomErrorRule {
  /// Mark this message as possible payload in error response.  Otherwise,
  /// objects of this type will be filtered when they appear in error payload.
  core.bool isErrorType;

  /// Selects messages to which this rule applies.
  ///
  /// Refer to selector for syntax details.
  core.String selector;

  CustomErrorRule();

  CustomErrorRule.fromJson(core.Map _json) {
    if (_json.containsKey("isErrorType")) {
      isErrorType = _json["isErrorType"];
    }
    if (_json.containsKey("selector")) {
      selector = _json["selector"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (isErrorType != null) {
      _json["isErrorType"] = isErrorType;
    }
    if (selector != null) {
      _json["selector"] = selector;
    }
    return _json;
  }
}

/// A custom pattern is used for defining custom HTTP verb.
class CustomHttpPattern {
  /// The name of this custom HTTP verb.
  core.String kind;

  /// The path matched by this custom verb.
  core.String path;

  CustomHttpPattern();

  CustomHttpPattern.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("path")) {
      path = _json["path"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (path != null) {
      _json["path"] = path;
    }
    return _json;
  }
}

/// Request message for DisableService method.
class DisableServiceRequest {
  DisableServiceRequest();

  DisableServiceRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// `Documentation` provides the information for describing a service.
///
/// Example:
/// <pre><code>documentation:
///   summary: >
///     The Google Calendar API gives access
///     to most calendar features.
///   pages:
///   - name: Overview
///     content: &#40;== include google/foo/overview.md ==&#41;
///   - name: Tutorial
///     content: &#40;== include google/foo/tutorial.md ==&#41;
///     subpages;
///     - name: Java
///       content: &#40;== include google/foo/tutorial_java.md ==&#41;
///   rules:
///   - selector: google.calendar.Calendar.Get
///     description: >
///       ...
///   - selector: google.calendar.Calendar.Put
///     description: >
///       ...
/// </code></pre>
/// Documentation is provided in markdown syntax. In addition to
/// standard markdown features, definition lists, tables and fenced
/// code blocks are supported. Section headers can be provided and are
/// interpreted relative to the section nesting of the context where
/// a documentation fragment is embedded.
///
/// Documentation from the IDL is merged with documentation defined
/// via the config at normalization time, where documentation provided
/// by config rules overrides IDL provided.
///
/// A number of constructs specific to the API platform are supported
/// in documentation text.
///
/// In order to reference a proto element, the following
/// notation can be used:
/// <pre><code>&#91;fully.qualified.proto.name]&#91;]</code></pre>
/// To override the display text used for the link, this can be used:
/// <pre><code>&#91;display text]&#91;fully.qualified.proto.name]</code></pre>
/// Text can be excluded from doc using the following notation:
/// <pre><code>&#40;-- internal comment --&#41;</code></pre>
///
/// A few directives are available in documentation. Note that
/// directives must appear on a single line to be properly
/// identified. The `include` directive includes a markdown file from
/// an external source:
/// <pre><code>&#40;== include path/to/file ==&#41;</code></pre>
/// The `resource_for` directive marks a message to be the resource of
/// a collection in REST view. If it is not specified, tools attempt
/// to infer the resource from the operations in a collection:
/// <pre><code>&#40;== resource_for v1.shelves.books ==&#41;</code></pre>
/// The directive `suppress_warning` does not directly affect documentation
/// and is documented together with service config validation.
class Documentation {
  /// The URL to the root of documentation.
  core.String documentationRootUrl;

  /// Declares a single overview page. For example:
  /// <pre><code>documentation:
  ///   summary: ...
  ///   overview: &#40;== include overview.md ==&#41;
  /// </code></pre>
  /// This is a shortcut for the following declaration (using pages style):
  /// <pre><code>documentation:
  ///   summary: ...
  ///   pages:
  ///   - name: Overview
  ///     content: &#40;== include overview.md ==&#41;
  /// </code></pre>
  /// Note: you cannot specify both `overview` field and `pages` field.
  core.String overview;

  /// The top level pages for the documentation set.
  core.List<Page> pages;

  /// A list of documentation rules that apply to individual API elements.
  ///
  /// **NOTE:** All service configuration rules follow "last one wins" order.
  core.List<DocumentationRule> rules;

  /// A short summary of what the service does. Can only be provided by
  /// plain text.
  core.String summary;

  Documentation();

  Documentation.fromJson(core.Map _json) {
    if (_json.containsKey("documentationRootUrl")) {
      documentationRootUrl = _json["documentationRootUrl"];
    }
    if (_json.containsKey("overview")) {
      overview = _json["overview"];
    }
    if (_json.containsKey("pages")) {
      pages = (_json["pages"] as core.List)
          .map<Page>((value) => new Page.fromJson(value))
          .toList();
    }
    if (_json.containsKey("rules")) {
      rules = (_json["rules"] as core.List)
          .map<DocumentationRule>(
              (value) => new DocumentationRule.fromJson(value))
          .toList();
    }
    if (_json.containsKey("summary")) {
      summary = _json["summary"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (documentationRootUrl != null) {
      _json["documentationRootUrl"] = documentationRootUrl;
    }
    if (overview != null) {
      _json["overview"] = overview;
    }
    if (pages != null) {
      _json["pages"] = pages.map((value) => (value).toJson()).toList();
    }
    if (rules != null) {
      _json["rules"] = rules.map((value) => (value).toJson()).toList();
    }
    if (summary != null) {
      _json["summary"] = summary;
    }
    return _json;
  }
}

/// A documentation rule provides information about individual API elements.
class DocumentationRule {
  /// Deprecation description of the selected element(s). It can be provided if
  /// an
  /// element is marked as `deprecated`.
  core.String deprecationDescription;

  /// Description of the selected API(s).
  core.String description;

  /// The selector is a comma-separated list of patterns. Each pattern is a
  /// qualified name of the element which may end in "*", indicating a wildcard.
  /// Wildcards are only allowed at the end and for a whole component of the
  /// qualified name, i.e. "foo.*" is ok, but not "foo.b*" or "foo.*.bar". To
  /// specify a default for all applicable elements, the whole pattern "*"
  /// is used.
  core.String selector;

  DocumentationRule();

  DocumentationRule.fromJson(core.Map _json) {
    if (_json.containsKey("deprecationDescription")) {
      deprecationDescription = _json["deprecationDescription"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("selector")) {
      selector = _json["selector"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (deprecationDescription != null) {
      _json["deprecationDescription"] = deprecationDescription;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (selector != null) {
      _json["selector"] = selector;
    }
    return _json;
  }
}

/// Request message for EnableService method.
class EnableServiceRequest {
  EnableServiceRequest();

  EnableServiceRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// `Endpoint` describes a network endpoint that serves a set of APIs.
/// A service may expose any number of endpoints, and all endpoints share the
/// same service configuration, such as quota configuration and monitoring
/// configuration.
///
/// Example service configuration:
///
///     name: library-example.googleapis.com
///     endpoints:
///       # Below entry makes 'google.example.library.v1.Library'
///       # API be served from endpoint address library-example.googleapis.com.
///       # It also allows HTTP OPTIONS calls to be passed to the backend, for
///       # it to decide whether the subsequent cross-origin request is
///       # allowed to proceed.
///     - name: library-example.googleapis.com
///       allow_cors: true
class Endpoint {
  /// DEPRECATED: This field is no longer supported. Instead of using aliases,
  /// please specify multiple google.api.Endpoint for each of the intended
  /// aliases.
  ///
  /// Additional names that this endpoint will be hosted on.
  core.List<core.String> aliases;

  /// Allowing
  /// [CORS](https://en.wikipedia.org/wiki/Cross-origin_resource_sharing), aka
  /// cross-domain traffic, would allow the backends served from this endpoint
  /// to
  /// receive and respond to HTTP OPTIONS requests. The response will be used by
  /// the browser to determine whether the subsequent cross-origin request is
  /// allowed to proceed.
  core.bool allowCors;

  /// The list of features enabled on this endpoint.
  core.List<core.String> features;

  /// The canonical name of this endpoint.
  core.String name;

  /// The specification of an Internet routable address of API frontend that
  /// will
  /// handle requests to this [API
  /// Endpoint](https://cloud.google.com/apis/design/glossary).
  /// It should be either a valid IPv4 address or a fully-qualified domain name.
  /// For example, "8.8.8.8" or "myservice.appspot.com".
  core.String target;

  Endpoint();

  Endpoint.fromJson(core.Map _json) {
    if (_json.containsKey("aliases")) {
      aliases = (_json["aliases"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("allowCors")) {
      allowCors = _json["allowCors"];
    }
    if (_json.containsKey("features")) {
      features = (_json["features"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("target")) {
      target = _json["target"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (aliases != null) {
      _json["aliases"] = aliases;
    }
    if (allowCors != null) {
      _json["allowCors"] = allowCors;
    }
    if (features != null) {
      _json["features"] = features;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (target != null) {
      _json["target"] = target;
    }
    return _json;
  }
}

/// Enum type definition.
class Enum {
  /// Enum value definitions.
  core.List<EnumValue> enumvalue;

  /// Enum type name.
  core.String name;

  /// Protocol buffer options.
  core.List<Option> options;

  /// The source context.
  SourceContext sourceContext;

  /// The source syntax.
  /// Possible string values are:
  /// - "SYNTAX_PROTO2" : Syntax `proto2`.
  /// - "SYNTAX_PROTO3" : Syntax `proto3`.
  core.String syntax;

  Enum();

  Enum.fromJson(core.Map _json) {
    if (_json.containsKey("enumvalue")) {
      enumvalue = (_json["enumvalue"] as core.List)
          .map<EnumValue>((value) => new EnumValue.fromJson(value))
          .toList();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("options")) {
      options = (_json["options"] as core.List)
          .map<Option>((value) => new Option.fromJson(value))
          .toList();
    }
    if (_json.containsKey("sourceContext")) {
      sourceContext = new SourceContext.fromJson(_json["sourceContext"]);
    }
    if (_json.containsKey("syntax")) {
      syntax = _json["syntax"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (enumvalue != null) {
      _json["enumvalue"] = enumvalue.map((value) => (value).toJson()).toList();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (options != null) {
      _json["options"] = options.map((value) => (value).toJson()).toList();
    }
    if (sourceContext != null) {
      _json["sourceContext"] = (sourceContext).toJson();
    }
    if (syntax != null) {
      _json["syntax"] = syntax;
    }
    return _json;
  }
}

/// Enum value definition.
class EnumValue {
  /// Enum value name.
  core.String name;

  /// Enum value number.
  core.int number;

  /// Protocol buffer options.
  core.List<Option> options;

  EnumValue();

  EnumValue.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("number")) {
      number = _json["number"];
    }
    if (_json.containsKey("options")) {
      options = (_json["options"] as core.List)
          .map<Option>((value) => new Option.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    if (number != null) {
      _json["number"] = number;
    }
    if (options != null) {
      _json["options"] = options.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Experimental service configuration. These configuration options can
/// only be used by whitelisted users.
class Experimental {
  /// Authorization configuration.
  AuthorizationConfig authorization;

  Experimental();

  Experimental.fromJson(core.Map _json) {
    if (_json.containsKey("authorization")) {
      authorization = new AuthorizationConfig.fromJson(_json["authorization"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (authorization != null) {
      _json["authorization"] = (authorization).toJson();
    }
    return _json;
  }
}

/// A single field of a message type.
class Field {
  /// The field cardinality.
  /// Possible string values are:
  /// - "CARDINALITY_UNKNOWN" : For fields with unknown cardinality.
  /// - "CARDINALITY_OPTIONAL" : For optional fields.
  /// - "CARDINALITY_REQUIRED" : For required fields. Proto2 syntax only.
  /// - "CARDINALITY_REPEATED" : For repeated fields.
  core.String cardinality;

  /// The string value of the default value of this field. Proto2 syntax only.
  core.String defaultValue;

  /// The field JSON name.
  core.String jsonName;

  /// The field type.
  /// Possible string values are:
  /// - "TYPE_UNKNOWN" : Field type unknown.
  /// - "TYPE_DOUBLE" : Field type double.
  /// - "TYPE_FLOAT" : Field type float.
  /// - "TYPE_INT64" : Field type int64.
  /// - "TYPE_UINT64" : Field type uint64.
  /// - "TYPE_INT32" : Field type int32.
  /// - "TYPE_FIXED64" : Field type fixed64.
  /// - "TYPE_FIXED32" : Field type fixed32.
  /// - "TYPE_BOOL" : Field type bool.
  /// - "TYPE_STRING" : Field type string.
  /// - "TYPE_GROUP" : Field type group. Proto2 syntax only, and deprecated.
  /// - "TYPE_MESSAGE" : Field type message.
  /// - "TYPE_BYTES" : Field type bytes.
  /// - "TYPE_UINT32" : Field type uint32.
  /// - "TYPE_ENUM" : Field type enum.
  /// - "TYPE_SFIXED32" : Field type sfixed32.
  /// - "TYPE_SFIXED64" : Field type sfixed64.
  /// - "TYPE_SINT32" : Field type sint32.
  /// - "TYPE_SINT64" : Field type sint64.
  core.String kind;

  /// The field name.
  core.String name;

  /// The field number.
  core.int number;

  /// The index of the field type in `Type.oneofs`, for message or enumeration
  /// types. The first type has index 1; zero means the type is not in the list.
  core.int oneofIndex;

  /// The protocol buffer options.
  core.List<Option> options;

  /// Whether to use alternative packed wire representation.
  core.bool packed;

  /// The field type URL, without the scheme, for message or enumeration
  /// types. Example: `"type.googleapis.com/google.protobuf.Timestamp"`.
  core.String typeUrl;

  Field();

  Field.fromJson(core.Map _json) {
    if (_json.containsKey("cardinality")) {
      cardinality = _json["cardinality"];
    }
    if (_json.containsKey("defaultValue")) {
      defaultValue = _json["defaultValue"];
    }
    if (_json.containsKey("jsonName")) {
      jsonName = _json["jsonName"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("number")) {
      number = _json["number"];
    }
    if (_json.containsKey("oneofIndex")) {
      oneofIndex = _json["oneofIndex"];
    }
    if (_json.containsKey("options")) {
      options = (_json["options"] as core.List)
          .map<Option>((value) => new Option.fromJson(value))
          .toList();
    }
    if (_json.containsKey("packed")) {
      packed = _json["packed"];
    }
    if (_json.containsKey("typeUrl")) {
      typeUrl = _json["typeUrl"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cardinality != null) {
      _json["cardinality"] = cardinality;
    }
    if (defaultValue != null) {
      _json["defaultValue"] = defaultValue;
    }
    if (jsonName != null) {
      _json["jsonName"] = jsonName;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (number != null) {
      _json["number"] = number;
    }
    if (oneofIndex != null) {
      _json["oneofIndex"] = oneofIndex;
    }
    if (options != null) {
      _json["options"] = options.map((value) => (value).toJson()).toList();
    }
    if (packed != null) {
      _json["packed"] = packed;
    }
    if (typeUrl != null) {
      _json["typeUrl"] = typeUrl;
    }
    return _json;
  }
}

/// Defines the HTTP configuration for an API service. It contains a list of
/// HttpRule, each specifying the mapping of an RPC method
/// to one or more HTTP REST API methods.
class Http {
  /// When set to true, URL path parmeters will be fully URI-decoded except in
  /// cases of single segment matches in reserved expansion, where "%2F" will be
  /// left encoded.
  ///
  /// The default behavior is to not decode RFC 6570 reserved characters in
  /// multi
  /// segment matches.
  core.bool fullyDecodeReservedExpansion;

  /// A list of HTTP configuration rules that apply to individual API methods.
  ///
  /// **NOTE:** All service configuration rules follow "last one wins" order.
  core.List<HttpRule> rules;

  Http();

  Http.fromJson(core.Map _json) {
    if (_json.containsKey("fullyDecodeReservedExpansion")) {
      fullyDecodeReservedExpansion = _json["fullyDecodeReservedExpansion"];
    }
    if (_json.containsKey("rules")) {
      rules = (_json["rules"] as core.List)
          .map<HttpRule>((value) => new HttpRule.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fullyDecodeReservedExpansion != null) {
      _json["fullyDecodeReservedExpansion"] = fullyDecodeReservedExpansion;
    }
    if (rules != null) {
      _json["rules"] = rules.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// `HttpRule` defines the mapping of an RPC method to one or more HTTP
/// REST API methods. The mapping specifies how different portions of the RPC
/// request message are mapped to URL path, URL query parameters, and
/// HTTP request body. The mapping is typically specified as an
/// `google.api.http` annotation on the RPC method,
/// see "google/api/annotations.proto" for details.
///
/// The mapping consists of a field specifying the path template and
/// method kind.  The path template can refer to fields in the request
/// message, as in the example below which describes a REST GET
/// operation on a resource collection of messages:
///
///
///     service Messaging {
///       rpc GetMessage(GetMessageRequest) returns (Message) {
/// option (google.api.http).get = "/v1/messages/{message_id}/{sub.subfield}";
///       }
///     }
///     message GetMessageRequest {
///       message SubMessage {
///         string subfield = 1;
///       }
///       string message_id = 1; // mapped to the URL
///       SubMessage sub = 2;    // `sub.subfield` is url-mapped
///     }
///     message Message {
///       string text = 1; // content of the resource
///     }
///
/// The same http annotation can alternatively be expressed inside the
/// `GRPC API Configuration` YAML file.
///
///     http:
///       rules:
///         - selector: <proto_package_name>.Messaging.GetMessage
///           get: /v1/messages/{message_id}/{sub.subfield}
///
/// This definition enables an automatic, bidrectional mapping of HTTP
/// JSON to RPC. Example:
///
/// HTTP | RPC
/// -----|-----
/// `GET /v1/messages/123456/foo`  | `GetMessage(message_id: "123456" sub:
/// SubMessage(subfield: "foo"))`
///
/// In general, not only fields but also field paths can be referenced
/// from a path pattern. Fields mapped to the path pattern cannot be
/// repeated and must have a primitive (non-message) type.
///
/// Any fields in the request message which are not bound by the path
/// pattern automatically become (optional) HTTP query
/// parameters. Assume the following definition of the request message:
///
///
///     service Messaging {
///       rpc GetMessage(GetMessageRequest) returns (Message) {
///         option (google.api.http).get = "/v1/messages/{message_id}";
///       }
///     }
///     message GetMessageRequest {
///       message SubMessage {
///         string subfield = 1;
///       }
///       string message_id = 1; // mapped to the URL
///       int64 revision = 2;    // becomes a parameter
///       SubMessage sub = 3;    // `sub.subfield` becomes a parameter
///     }
///
///
/// This enables a HTTP JSON to RPC mapping as below:
///
/// HTTP | RPC
/// -----|-----
/// `GET /v1/messages/123456?revision=2&sub.subfield=foo` |
/// `GetMessage(message_id: "123456" revision: 2 sub: SubMessage(subfield:
/// "foo"))`
///
/// Note that fields which are mapped to HTTP parameters must have a
/// primitive type or a repeated primitive type. Message types are not
/// allowed. In the case of a repeated type, the parameter can be
/// repeated in the URL, as in `...?param=A&param=B`.
///
/// For HTTP method kinds which allow a request body, the `body` field
/// specifies the mapping. Consider a REST update method on the
/// message resource collection:
///
///
///     service Messaging {
///       rpc UpdateMessage(UpdateMessageRequest) returns (Message) {
///         option (google.api.http) = {
///           put: "/v1/messages/{message_id}"
///           body: "message"
///         };
///       }
///     }
///     message UpdateMessageRequest {
///       string message_id = 1; // mapped to the URL
///       Message message = 2;   // mapped to the body
///     }
///
///
/// The following HTTP JSON to RPC mapping is enabled, where the
/// representation of the JSON in the request body is determined by
/// protos JSON encoding:
///
/// HTTP | RPC
/// -----|-----
/// `PUT /v1/messages/123456 { "text": "Hi!" }` | `UpdateMessage(message_id:
/// "123456" message { text: "Hi!" })`
///
/// The special name `*` can be used in the body mapping to define that
/// every field not bound by the path template should be mapped to the
/// request body.  This enables the following alternative definition of
/// the update method:
///
///     service Messaging {
///       rpc UpdateMessage(Message) returns (Message) {
///         option (google.api.http) = {
///           put: "/v1/messages/{message_id}"
///           body: "*"
///         };
///       }
///     }
///     message Message {
///       string message_id = 1;
///       string text = 2;
///     }
///
///
/// The following HTTP JSON to RPC mapping is enabled:
///
/// HTTP | RPC
/// -----|-----
/// `PUT /v1/messages/123456 { "text": "Hi!" }` | `UpdateMessage(message_id:
/// "123456" text: "Hi!")`
///
/// Note that when using `*` in the body mapping, it is not possible to
/// have HTTP parameters, as all fields not bound by the path end in
/// the body. This makes this option more rarely used in practice of
/// defining REST APIs. The common usage of `*` is in custom methods
/// which don't use the URL at all for transferring data.
///
/// It is possible to define multiple HTTP methods for one RPC by using
/// the `additional_bindings` option. Example:
///
///     service Messaging {
///       rpc GetMessage(GetMessageRequest) returns (Message) {
///         option (google.api.http) = {
///           get: "/v1/messages/{message_id}"
///           additional_bindings {
///             get: "/v1/users/{user_id}/messages/{message_id}"
///           }
///         };
///       }
///     }
///     message GetMessageRequest {
///       string message_id = 1;
///       string user_id = 2;
///     }
///
///
/// This enables the following two alternative HTTP JSON to RPC
/// mappings:
///
/// HTTP | RPC
/// -----|-----
/// `GET /v1/messages/123456` | `GetMessage(message_id: "123456")`
/// `GET /v1/users/me/messages/123456` | `GetMessage(user_id: "me" message_id:
/// "123456")`
///
/// # Rules for HTTP mapping
///
/// The rules for mapping HTTP path, query parameters, and body fields
/// to the request message are as follows:
///
/// 1. The `body` field specifies either `*` or a field path, or is
///    omitted. If omitted, it indicates there is no HTTP request body.
/// 2. Leaf fields (recursive expansion of nested messages in the
///    request) can be classified into three types:
///     (a) Matched in the URL template.
///     (b) Covered by body (if body is `*`, everything except (a) fields;
///         else everything under the body field)
///     (c) All other fields.
/// 3. URL query parameters found in the HTTP request are mapped to (c) fields.
/// 4. Any body sent with an HTTP request can contain only (b) fields.
///
/// The syntax of the path template is as follows:
///
///     Template = "/" Segments [ Verb ] ;
///     Segments = Segment { "/" Segment } ;
///     Segment  = "*" | "**" | LITERAL | Variable ;
///     Variable = "{" FieldPath [ "=" Segments ] "}" ;
///     FieldPath = IDENT { "." IDENT } ;
///     Verb     = ":" LITERAL ;
///
/// The syntax `*` matches a single path segment. The syntax `**` matches zero
/// or more path segments, which must be the last part of the path except the
/// `Verb`. The syntax `LITERAL` matches literal text in the path.
///
/// The syntax `Variable` matches part of the URL path as specified by its
/// template. A variable template must not contain other variables. If a
/// variable
/// matches a single path segment, its template may be omitted, e.g. `{var}`
/// is equivalent to `{var=*}`.
///
/// If a variable contains exactly one path segment, such as `"{var}"` or
/// `"{var=*}"`, when such a variable is expanded into a URL path, all
/// characters
/// except `[-_.~0-9a-zA-Z]` are percent-encoded. Such variables show up in the
/// Discovery Document as `{var}`.
///
/// If a variable contains one or more path segments, such as `"{var=foo / * }"`
/// or `"{var=**}"`, when such a variable is expanded into a URL path, all
/// characters except `[-_.~/0-9a-zA-Z]` are percent-encoded. Such variables
/// show up in the Discovery Document as `{+var}`.
///
/// NOTE: While the single segment variable matches the semantics of
/// [RFC 6570](https://tools.ietf.org/html/rfc6570) Section 3.2.2
/// Simple String Expansion, the multi segment variable **does not** match
/// RFC 6570 Reserved Expansion. The reason is that the Reserved Expansion
/// does not expand special characters like `?` and `#`, which would lead
/// to invalid URLs.
///
/// NOTE: the field paths in variables and in the `body` must not refer to
/// repeated fields or map fields.
class HttpRule {
  /// Additional HTTP bindings for the selector. Nested bindings must
  /// not contain an `additional_bindings` field themselves (that is,
  /// the nesting may only be one level deep).
  core.List<HttpRule> additionalBindings;

  /// The name of the request field whose value is mapped to the HTTP body, or
  /// `*` for mapping all fields not captured by the path pattern to the HTTP
  /// body. NOTE: the referred field must not be a repeated field and must be
  /// present at the top-level of request message type.
  core.String body;

  /// The custom pattern is used for specifying an HTTP method that is not
  /// included in the `pattern` field, such as HEAD, or "*" to leave the
  /// HTTP method unspecified for this rule. The wild-card rule is useful
  /// for services that provide content to Web (HTML) clients.
  CustomHttpPattern custom;

  /// Used for deleting a resource.
  core.String delete;

  /// Used for listing and getting information about resources.
  core.String get;

  /// Use this only for Scotty Requests. Do not use this for bytestream methods.
  /// For media support, add instead [][google.bytestream.RestByteStream] as an
  /// API to your configuration.
  MediaDownload mediaDownload;

  /// Use this only for Scotty Requests. Do not use this for media support using
  /// Bytestream, add instead
  /// [][google.bytestream.RestByteStream] as an API to your
  /// configuration for Bytestream methods.
  MediaUpload mediaUpload;

  /// Used for updating a resource.
  core.String patch;

  /// Used for creating a resource.
  core.String post;

  /// Used for updating a resource.
  core.String put;

  /// Selects methods to which this rule applies.
  ///
  /// Refer to selector for syntax details.
  core.String selector;

  HttpRule();

  HttpRule.fromJson(core.Map _json) {
    if (_json.containsKey("additionalBindings")) {
      additionalBindings = (_json["additionalBindings"] as core.List)
          .map<HttpRule>((value) => new HttpRule.fromJson(value))
          .toList();
    }
    if (_json.containsKey("body")) {
      body = _json["body"];
    }
    if (_json.containsKey("custom")) {
      custom = new CustomHttpPattern.fromJson(_json["custom"]);
    }
    if (_json.containsKey("delete")) {
      delete = _json["delete"];
    }
    if (_json.containsKey("get")) {
      get = _json["get"];
    }
    if (_json.containsKey("mediaDownload")) {
      mediaDownload = new MediaDownload.fromJson(_json["mediaDownload"]);
    }
    if (_json.containsKey("mediaUpload")) {
      mediaUpload = new MediaUpload.fromJson(_json["mediaUpload"]);
    }
    if (_json.containsKey("patch")) {
      patch = _json["patch"];
    }
    if (_json.containsKey("post")) {
      post = _json["post"];
    }
    if (_json.containsKey("put")) {
      put = _json["put"];
    }
    if (_json.containsKey("selector")) {
      selector = _json["selector"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (additionalBindings != null) {
      _json["additionalBindings"] =
          additionalBindings.map((value) => (value).toJson()).toList();
    }
    if (body != null) {
      _json["body"] = body;
    }
    if (custom != null) {
      _json["custom"] = (custom).toJson();
    }
    if (delete != null) {
      _json["delete"] = delete;
    }
    if (get != null) {
      _json["get"] = get;
    }
    if (mediaDownload != null) {
      _json["mediaDownload"] = (mediaDownload).toJson();
    }
    if (mediaUpload != null) {
      _json["mediaUpload"] = (mediaUpload).toJson();
    }
    if (patch != null) {
      _json["patch"] = patch;
    }
    if (post != null) {
      _json["post"] = post;
    }
    if (put != null) {
      _json["put"] = put;
    }
    if (selector != null) {
      _json["selector"] = selector;
    }
    return _json;
  }
}

/// A description of a label.
class LabelDescriptor {
  /// A human-readable description for the label.
  core.String description;

  /// The label key.
  core.String key;

  /// The type of data that can be assigned to the label.
  /// Possible string values are:
  /// - "STRING" : A variable-length string. This is the default.
  /// - "BOOL" : Boolean; true or false.
  /// - "INT64" : A 64-bit signed integer.
  core.String valueType;

  LabelDescriptor();

  LabelDescriptor.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("valueType")) {
      valueType = _json["valueType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (key != null) {
      _json["key"] = key;
    }
    if (valueType != null) {
      _json["valueType"] = valueType;
    }
    return _json;
  }
}

/// Response message for `ListEnabledServices` method.
class ListEnabledServicesResponse {
  /// Token that can be passed to `ListEnabledServices` to resume a paginated
  /// query.
  core.String nextPageToken;

  /// Services enabled for the specified parent.
  core.List<PublishedService> services;

  ListEnabledServicesResponse();

  ListEnabledServicesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("services")) {
      services = (_json["services"] as core.List)
          .map<PublishedService>(
              (value) => new PublishedService.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (services != null) {
      _json["services"] = services.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A description of a log type. Example in YAML format:
///
///     - name: library.googleapis.com/activity_history
///       description: The history of borrowing and returning library items.
///       display_name: Activity
///       labels:
///       - key: /customer_id
///         description: Identifier of a library customer
class LogDescriptor {
  /// A human-readable description of this log. This information appears in
  /// the documentation and can contain details.
  core.String description;

  /// The human-readable name for this log. This information appears on
  /// the user interface and should be concise.
  core.String displayName;

  /// The set of labels that are available to describe a specific log entry.
  /// Runtime requests that contain labels not specified here are
  /// considered invalid.
  core.List<LabelDescriptor> labels;

  /// The name of the log. It must be less than 512 characters long and can
  /// include the following characters: upper- and lower-case alphanumeric
  /// characters [A-Za-z0-9], and punctuation characters including
  /// slash, underscore, hyphen, period [/_-.].
  core.String name;

  LogDescriptor();

  LogDescriptor.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.List)
          .map<LabelDescriptor>((value) => new LabelDescriptor.fromJson(value))
          .toList();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (labels != null) {
      _json["labels"] = labels.map((value) => (value).toJson()).toList();
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/// Logging configuration of the service.
///
/// The following example shows how to configure logs to be sent to the
/// producer and consumer projects. In the example, the `activity_history`
/// log is sent to both the producer and consumer projects, whereas the
/// `purchase_history` log is only sent to the producer project.
///
///     monitored_resources:
///     - type: library.googleapis.com/branch
///       labels:
///       - key: /city
///         description: The city where the library branch is located in.
///       - key: /name
///         description: The name of the branch.
///     logs:
///     - name: activity_history
///       labels:
///       - key: /customer_id
///     - name: purchase_history
///     logging:
///       producer_destinations:
///       - monitored_resource: library.googleapis.com/branch
///         logs:
///         - activity_history
///         - purchase_history
///       consumer_destinations:
///       - monitored_resource: library.googleapis.com/branch
///         logs:
///         - activity_history
class Logging {
  /// Logging configurations for sending logs to the consumer project.
  /// There can be multiple consumer destinations, each one must have a
  /// different monitored resource type. A log can be used in at most
  /// one consumer destination.
  core.List<LoggingDestination> consumerDestinations;

  /// Logging configurations for sending logs to the producer project.
  /// There can be multiple producer destinations, each one must have a
  /// different monitored resource type. A log can be used in at most
  /// one producer destination.
  core.List<LoggingDestination> producerDestinations;

  Logging();

  Logging.fromJson(core.Map _json) {
    if (_json.containsKey("consumerDestinations")) {
      consumerDestinations = (_json["consumerDestinations"] as core.List)
          .map<LoggingDestination>(
              (value) => new LoggingDestination.fromJson(value))
          .toList();
    }
    if (_json.containsKey("producerDestinations")) {
      producerDestinations = (_json["producerDestinations"] as core.List)
          .map<LoggingDestination>(
              (value) => new LoggingDestination.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (consumerDestinations != null) {
      _json["consumerDestinations"] =
          consumerDestinations.map((value) => (value).toJson()).toList();
    }
    if (producerDestinations != null) {
      _json["producerDestinations"] =
          producerDestinations.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Configuration of a specific logging destination (the producer project
/// or the consumer project).
class LoggingDestination {
  /// Names of the logs to be sent to this destination. Each name must
  /// be defined in the Service.logs section. If the log name is
  /// not a domain scoped name, it will be automatically prefixed with
  /// the service name followed by "/".
  core.List<core.String> logs;

  /// The monitored resource type. The type must be defined in the
  /// Service.monitored_resources section.
  core.String monitoredResource;

  LoggingDestination();

  LoggingDestination.fromJson(core.Map _json) {
    if (_json.containsKey("logs")) {
      logs = (_json["logs"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("monitoredResource")) {
      monitoredResource = _json["monitoredResource"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (logs != null) {
      _json["logs"] = logs;
    }
    if (monitoredResource != null) {
      _json["monitoredResource"] = monitoredResource;
    }
    return _json;
  }
}

/// Defines the Media configuration for a service in case of a download.
/// Use this only for Scotty Requests. Do not use this for media support using
/// Bytestream, add instead [][google.bytestream.RestByteStream] as an API to
/// your configuration for Bytestream methods.
class MediaDownload {
  /// A boolean that determines whether a notification for the completion of a
  /// download should be sent to the backend.
  core.bool completeNotification;

  /// DO NOT USE FIELDS BELOW THIS LINE UNTIL THIS WARNING IS REMOVED.
  ///
  /// Specify name of the download service if one is used for download.
  core.String downloadService;

  /// Name of the Scotty dropzone to use for the current API.
  core.String dropzone;

  /// Whether download is enabled.
  core.bool enabled;

  /// Optional maximum acceptable size for direct download.
  /// The size is specified in bytes.
  core.String maxDirectDownloadSize;

  /// A boolean that determines if direct download from ESF should be used for
  /// download of this media.
  core.bool useDirectDownload;

  MediaDownload();

  MediaDownload.fromJson(core.Map _json) {
    if (_json.containsKey("completeNotification")) {
      completeNotification = _json["completeNotification"];
    }
    if (_json.containsKey("downloadService")) {
      downloadService = _json["downloadService"];
    }
    if (_json.containsKey("dropzone")) {
      dropzone = _json["dropzone"];
    }
    if (_json.containsKey("enabled")) {
      enabled = _json["enabled"];
    }
    if (_json.containsKey("maxDirectDownloadSize")) {
      maxDirectDownloadSize = _json["maxDirectDownloadSize"];
    }
    if (_json.containsKey("useDirectDownload")) {
      useDirectDownload = _json["useDirectDownload"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (completeNotification != null) {
      _json["completeNotification"] = completeNotification;
    }
    if (downloadService != null) {
      _json["downloadService"] = downloadService;
    }
    if (dropzone != null) {
      _json["dropzone"] = dropzone;
    }
    if (enabled != null) {
      _json["enabled"] = enabled;
    }
    if (maxDirectDownloadSize != null) {
      _json["maxDirectDownloadSize"] = maxDirectDownloadSize;
    }
    if (useDirectDownload != null) {
      _json["useDirectDownload"] = useDirectDownload;
    }
    return _json;
  }
}

/// Defines the Media configuration for a service in case of an upload.
/// Use this only for Scotty Requests. Do not use this for media support using
/// Bytestream, add instead [][google.bytestream.RestByteStream] as an API to
/// your configuration for Bytestream methods.
class MediaUpload {
  /// A boolean that determines whether a notification for the completion of an
  /// upload should be sent to the backend. These notifications will not be seen
  /// by the client and will not consume quota.
  core.bool completeNotification;

  /// Name of the Scotty dropzone to use for the current API.
  core.String dropzone;

  /// Whether upload is enabled.
  core.bool enabled;

  /// Optional maximum acceptable size for an upload.
  /// The size is specified in bytes.
  core.String maxSize;

  /// An array of mimetype patterns. Esf will only accept uploads that match one
  /// of the given patterns.
  core.List<core.String> mimeTypes;

  /// Whether to receive a notification for progress changes of media upload.
  core.bool progressNotification;

  /// Whether to receive a notification on the start of media upload.
  core.bool startNotification;

  /// DO NOT USE FIELDS BELOW THIS LINE UNTIL THIS WARNING IS REMOVED.
  ///
  /// Specify name of the upload service if one is used for upload.
  core.String uploadService;

  MediaUpload();

  MediaUpload.fromJson(core.Map _json) {
    if (_json.containsKey("completeNotification")) {
      completeNotification = _json["completeNotification"];
    }
    if (_json.containsKey("dropzone")) {
      dropzone = _json["dropzone"];
    }
    if (_json.containsKey("enabled")) {
      enabled = _json["enabled"];
    }
    if (_json.containsKey("maxSize")) {
      maxSize = _json["maxSize"];
    }
    if (_json.containsKey("mimeTypes")) {
      mimeTypes = (_json["mimeTypes"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("progressNotification")) {
      progressNotification = _json["progressNotification"];
    }
    if (_json.containsKey("startNotification")) {
      startNotification = _json["startNotification"];
    }
    if (_json.containsKey("uploadService")) {
      uploadService = _json["uploadService"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (completeNotification != null) {
      _json["completeNotification"] = completeNotification;
    }
    if (dropzone != null) {
      _json["dropzone"] = dropzone;
    }
    if (enabled != null) {
      _json["enabled"] = enabled;
    }
    if (maxSize != null) {
      _json["maxSize"] = maxSize;
    }
    if (mimeTypes != null) {
      _json["mimeTypes"] = mimeTypes;
    }
    if (progressNotification != null) {
      _json["progressNotification"] = progressNotification;
    }
    if (startNotification != null) {
      _json["startNotification"] = startNotification;
    }
    if (uploadService != null) {
      _json["uploadService"] = uploadService;
    }
    return _json;
  }
}

/// Method represents a method of an API interface.
class Method {
  /// The simple name of this method.
  core.String name;

  /// Any metadata attached to the method.
  core.List<Option> options;

  /// If true, the request is streamed.
  core.bool requestStreaming;

  /// A URL of the input message type.
  core.String requestTypeUrl;

  /// If true, the response is streamed.
  core.bool responseStreaming;

  /// The URL of the output message type.
  core.String responseTypeUrl;

  /// The source syntax of this method.
  /// Possible string values are:
  /// - "SYNTAX_PROTO2" : Syntax `proto2`.
  /// - "SYNTAX_PROTO3" : Syntax `proto3`.
  core.String syntax;

  Method();

  Method.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("options")) {
      options = (_json["options"] as core.List)
          .map<Option>((value) => new Option.fromJson(value))
          .toList();
    }
    if (_json.containsKey("requestStreaming")) {
      requestStreaming = _json["requestStreaming"];
    }
    if (_json.containsKey("requestTypeUrl")) {
      requestTypeUrl = _json["requestTypeUrl"];
    }
    if (_json.containsKey("responseStreaming")) {
      responseStreaming = _json["responseStreaming"];
    }
    if (_json.containsKey("responseTypeUrl")) {
      responseTypeUrl = _json["responseTypeUrl"];
    }
    if (_json.containsKey("syntax")) {
      syntax = _json["syntax"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    if (options != null) {
      _json["options"] = options.map((value) => (value).toJson()).toList();
    }
    if (requestStreaming != null) {
      _json["requestStreaming"] = requestStreaming;
    }
    if (requestTypeUrl != null) {
      _json["requestTypeUrl"] = requestTypeUrl;
    }
    if (responseStreaming != null) {
      _json["responseStreaming"] = responseStreaming;
    }
    if (responseTypeUrl != null) {
      _json["responseTypeUrl"] = responseTypeUrl;
    }
    if (syntax != null) {
      _json["syntax"] = syntax;
    }
    return _json;
  }
}

/// Defines a metric type and its schema. Once a metric descriptor is created,
/// deleting or altering it stops data collection and makes the metric type's
/// existing data unusable.
class MetricDescriptor {
  /// A detailed description of the metric, which can be used in documentation.
  core.String description;

  /// A concise name for the metric, which can be displayed in user interfaces.
  /// Use sentence case without an ending period, for example "Request count".
  /// This field is optional but it is recommended to be set for any metrics
  /// associated with user-visible concepts, such as Quota.
  core.String displayName;

  /// The set of labels that can be used to describe a specific
  /// instance of this metric type. For example, the
  /// `appengine.googleapis.com/http/server/response_latencies` metric
  /// type has a label for the HTTP response code, `response_code`, so
  /// you can look at latencies for successful responses or just
  /// for responses that failed.
  core.List<LabelDescriptor> labels;

  /// Optional. Metadata which can be used to guide usage of the metric.
  MetricDescriptorMetadata metadata;

  /// Whether the metric records instantaneous values, changes to a value, etc.
  /// Some combinations of `metric_kind` and `value_type` might not be
  /// supported.
  /// Possible string values are:
  /// - "METRIC_KIND_UNSPECIFIED" : Do not use this default value.
  /// - "GAUGE" : An instantaneous measurement of a value.
  /// - "DELTA" : The change in a value during a time interval.
  /// - "CUMULATIVE" : A value accumulated over a time interval.  Cumulative
  /// measurements in a time series should have the same start time
  /// and increasing end times, until an event resets the cumulative
  /// value to zero and sets a new start time for the following
  /// points.
  core.String metricKind;

  /// The resource name of the metric descriptor.
  core.String name;

  /// The metric type, including its DNS name prefix. The type is not
  /// URL-encoded.  All user-defined metric types have the DNS name
  /// `custom.googleapis.com` or `external.googleapis.com`.  Metric types should
  /// use a natural hierarchical grouping. For example:
  ///
  ///     "custom.googleapis.com/invoice/paid/amount"
  ///     "external.googleapis.com/prometheus/up"
  ///     "appengine.googleapis.com/http/server/response_latencies"
  core.String type;

  /// The unit in which the metric value is reported. It is only applicable
  /// if the `value_type` is `INT64`, `DOUBLE`, or `DISTRIBUTION`. The
  /// supported units are a subset of [The Unified Code for Units of
  /// Measure](http://unitsofmeasure.org/ucum.html) standard:
  ///
  /// **Basic units (UNIT)**
  ///
  /// * `bit`   bit
  /// * `By`    byte
  /// * `s`     second
  /// * `min`   minute
  /// * `h`     hour
  /// * `d`     day
  ///
  /// **Prefixes (PREFIX)**
  ///
  /// * `k`     kilo    (10**3)
  /// * `M`     mega    (10**6)
  /// * `G`     giga    (10**9)
  /// * `T`     tera    (10**12)
  /// * `P`     peta    (10**15)
  /// * `E`     exa     (10**18)
  /// * `Z`     zetta   (10**21)
  /// * `Y`     yotta   (10**24)
  /// * `m`     milli   (10**-3)
  /// * `u`     micro   (10**-6)
  /// * `n`     nano    (10**-9)
  /// * `p`     pico    (10**-12)
  /// * `f`     femto   (10**-15)
  /// * `a`     atto    (10**-18)
  /// * `z`     zepto   (10**-21)
  /// * `y`     yocto   (10**-24)
  /// * `Ki`    kibi    (2**10)
  /// * `Mi`    mebi    (2**20)
  /// * `Gi`    gibi    (2**30)
  /// * `Ti`    tebi    (2**40)
  ///
  /// **Grammar**
  ///
  /// The grammar also includes these connectors:
  ///
  /// * `/`    division (as an infix operator, e.g. `1/s`).
  /// * `.`    multiplication (as an infix operator, e.g. `GBy.d`)
  ///
  /// The grammar for a unit is as follows:
  ///
  ///     Expression = Component { "." Component } { "/" Component } ;
  ///
  ///     Component = ( [ PREFIX ] UNIT | "%" ) [ Annotation ]
  ///               | Annotation
  ///               | "1"
  ///               ;
  ///
  ///     Annotation = "{" NAME "}" ;
  ///
  /// Notes:
  ///
  /// * `Annotation` is just a comment if it follows a `UNIT` and is
  ///    equivalent to `1` if it is used alone. For examples,
  ///    `{requests}/s == 1/s`, `By{transmitted}/s == By/s`.
  /// * `NAME` is a sequence of non-blank printable ASCII characters not
  ///    containing '{' or '}'.
  /// * `1` represents dimensionless value 1, such as in `1/s`.
  /// * `%` represents dimensionless value 1/100, and annotates values giving
  ///    a percentage.
  core.String unit;

  /// Whether the measurement is an integer, a floating-point number, etc.
  /// Some combinations of `metric_kind` and `value_type` might not be
  /// supported.
  /// Possible string values are:
  /// - "VALUE_TYPE_UNSPECIFIED" : Do not use this default value.
  /// - "BOOL" : The value is a boolean.
  /// This value type can be used only if the metric kind is `GAUGE`.
  /// - "INT64" : The value is a signed 64-bit integer.
  /// - "DOUBLE" : The value is a double precision floating point number.
  /// - "STRING" : The value is a text string.
  /// This value type can be used only if the metric kind is `GAUGE`.
  /// - "DISTRIBUTION" : The value is a `Distribution`.
  /// - "MONEY" : The value is money.
  core.String valueType;

  MetricDescriptor();

  MetricDescriptor.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.List)
          .map<LabelDescriptor>((value) => new LabelDescriptor.fromJson(value))
          .toList();
    }
    if (_json.containsKey("metadata")) {
      metadata = new MetricDescriptorMetadata.fromJson(_json["metadata"]);
    }
    if (_json.containsKey("metricKind")) {
      metricKind = _json["metricKind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("unit")) {
      unit = _json["unit"];
    }
    if (_json.containsKey("valueType")) {
      valueType = _json["valueType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (labels != null) {
      _json["labels"] = labels.map((value) => (value).toJson()).toList();
    }
    if (metadata != null) {
      _json["metadata"] = (metadata).toJson();
    }
    if (metricKind != null) {
      _json["metricKind"] = metricKind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (unit != null) {
      _json["unit"] = unit;
    }
    if (valueType != null) {
      _json["valueType"] = valueType;
    }
    return _json;
  }
}

/// Additional annotations that can be used to guide the usage of a metric.
class MetricDescriptorMetadata {
  /// The delay of data points caused by ingestion. Data points older than this
  /// age are guaranteed to be ingested and available to be read, excluding
  /// data loss due to errors.
  core.String ingestDelay;

  /// The launch stage of the metric definition.
  /// Possible string values are:
  /// - "LAUNCH_STAGE_UNSPECIFIED" : Do not use this default value.
  /// - "EARLY_ACCESS" : Early Access features are limited to a closed group of
  /// testers. To use
  /// these features, you must sign up in advance and sign a Trusted Tester
  /// agreement (which includes confidentiality provisions). These features may
  /// be unstable, changed in backward-incompatible ways, and are not
  /// guaranteed to be released.
  /// - "ALPHA" : Alpha is a limited availability test for releases before they
  /// are cleared
  /// for widespread use. By Alpha, all significant design issues are resolved
  /// and we are in the process of verifying functionality. Alpha customers
  /// need to apply for access, agree to applicable terms, and have their
  /// projects whitelisted. Alpha releases don’t have to be feature complete,
  /// no SLAs are provided, and there are no technical support obligations, but
  /// they will be far enough along that customers can actually use them in
  /// test environments or for limited-use tests -- just like they would in
  /// normal production cases.
  /// - "BETA" : Beta is the point at which we are ready to open a release for
  /// any
  /// customer to use. There are no SLA or technical support obligations in a
  /// Beta release. Products will be complete from a feature perspective, but
  /// may have some open outstanding issues. Beta releases are suitable for
  /// limited production use cases.
  /// - "GA" : GA features are open to all developers and are considered stable
  /// and
  /// fully qualified for production use.
  /// - "DEPRECATED" : Deprecated features are scheduled to be shut down and
  /// removed. For more
  /// information, see the “Deprecation Policy” section of our [Terms of
  /// Service](https://cloud.google.com/terms/)
  /// and the [Google Cloud Platform Subject to the Deprecation
  /// Policy](https://cloud.google.com/terms/deprecation) documentation.
  core.String launchStage;

  /// The sampling period of metric data points. For metrics which are written
  /// periodically, consecutive data points are stored at this time interval,
  /// excluding data loss due to errors. Metrics with a higher granularity have
  /// a smaller sampling period.
  core.String samplePeriod;

  MetricDescriptorMetadata();

  MetricDescriptorMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("ingestDelay")) {
      ingestDelay = _json["ingestDelay"];
    }
    if (_json.containsKey("launchStage")) {
      launchStage = _json["launchStage"];
    }
    if (_json.containsKey("samplePeriod")) {
      samplePeriod = _json["samplePeriod"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (ingestDelay != null) {
      _json["ingestDelay"] = ingestDelay;
    }
    if (launchStage != null) {
      _json["launchStage"] = launchStage;
    }
    if (samplePeriod != null) {
      _json["samplePeriod"] = samplePeriod;
    }
    return _json;
  }
}

/// Bind API methods to metrics. Binding a method to a metric causes that
/// metric's configured quota behaviors to apply to the method call.
class MetricRule {
  /// Metrics to update when the selected methods are called, and the associated
  /// cost applied to each metric.
  ///
  /// The key of the map is the metric name, and the values are the amount
  /// increased for the metric against which the quota limits are defined.
  /// The value must not be negative.
  core.Map<core.String, core.String> metricCosts;

  /// Selects the methods to which this rule applies.
  ///
  /// Refer to selector for syntax details.
  core.String selector;

  MetricRule();

  MetricRule.fromJson(core.Map _json) {
    if (_json.containsKey("metricCosts")) {
      metricCosts =
          (_json["metricCosts"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("selector")) {
      selector = _json["selector"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (metricCosts != null) {
      _json["metricCosts"] = metricCosts;
    }
    if (selector != null) {
      _json["selector"] = selector;
    }
    return _json;
  }
}

/// Declares an API Interface to be included in this interface. The including
/// interface must redeclare all the methods from the included interface, but
/// documentation and options are inherited as follows:
///
/// - If after comment and whitespace stripping, the documentation
///   string of the redeclared method is empty, it will be inherited
///   from the original method.
///
/// - Each annotation belonging to the service config (http,
///   visibility) which is not set in the redeclared method will be
///   inherited.
///
/// - If an http annotation is inherited, the path pattern will be
///   modified as follows. Any version prefix will be replaced by the
///   version of the including interface plus the root path if
///   specified.
///
/// Example of a simple mixin:
///
///     package google.acl.v1;
///     service AccessControl {
///       // Get the underlying ACL object.
///       rpc GetAcl(GetAclRequest) returns (Acl) {
///         option (google.api.http).get = "/v1/{resource=**}:getAcl";
///       }
///     }
///
///     package google.storage.v2;
///     service Storage {
///       //       rpc GetAcl(GetAclRequest) returns (Acl);
///
///       // Get a data record.
///       rpc GetData(GetDataRequest) returns (Data) {
///         option (google.api.http).get = "/v2/{resource=**}";
///       }
///     }
///
/// Example of a mixin configuration:
///
///     apis:
///     - name: google.storage.v2.Storage
///       mixins:
///       - name: google.acl.v1.AccessControl
///
/// The mixin construct implies that all methods in `AccessControl` are
/// also declared with same name and request/response types in
/// `Storage`. A documentation generator or annotation processor will
/// see the effective `Storage.GetAcl` method after inherting
/// documentation and annotations as follows:
///
///     service Storage {
///       // Get the underlying ACL object.
///       rpc GetAcl(GetAclRequest) returns (Acl) {
///         option (google.api.http).get = "/v2/{resource=**}:getAcl";
///       }
///       ...
///     }
///
/// Note how the version in the path pattern changed from `v1` to `v2`.
///
/// If the `root` field in the mixin is specified, it should be a
/// relative path under which inherited HTTP paths are placed. Example:
///
///     apis:
///     - name: google.storage.v2.Storage
///       mixins:
///       - name: google.acl.v1.AccessControl
///         root: acls
///
/// This implies the following inherited HTTP annotation:
///
///     service Storage {
///       // Get the underlying ACL object.
///       rpc GetAcl(GetAclRequest) returns (Acl) {
///         option (google.api.http).get = "/v2/acls/{resource=**}:getAcl";
///       }
///       ...
///     }
class Mixin {
  /// The fully qualified name of the interface which is included.
  core.String name;

  /// If non-empty specifies a path under which inherited HTTP paths
  /// are rooted.
  core.String root;

  Mixin();

  Mixin.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("root")) {
      root = _json["root"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    if (root != null) {
      _json["root"] = root;
    }
    return _json;
  }
}

/// An object that describes the schema of a MonitoredResource object using a
/// type name and a set of labels.  For example, the monitored resource
/// descriptor for Google Compute Engine VM instances has a type of
/// `"gce_instance"` and specifies the use of the labels `"instance_id"` and
/// `"zone"` to identify particular VM instances.
///
/// Different APIs can support different monitored resource types. APIs
/// generally
/// provide a `list` method that returns the monitored resource descriptors used
/// by the API.
class MonitoredResourceDescriptor {
  /// Optional. A detailed description of the monitored resource type that might
  /// be used in documentation.
  core.String description;

  /// Optional. A concise name for the monitored resource type that might be
  /// displayed in user interfaces. It should be a Title Cased Noun Phrase,
  /// without any article or other determiners. For example,
  /// `"Google Cloud SQL Database"`.
  core.String displayName;

  /// Required. A set of labels used to describe instances of this monitored
  /// resource type. For example, an individual Google Cloud SQL database is
  /// identified by values for the labels `"database_id"` and `"zone"`.
  core.List<LabelDescriptor> labels;

  /// Optional. The resource name of the monitored resource descriptor:
  /// `"projects/{project_id}/monitoredResourceDescriptors/{type}"` where
  /// {type} is the value of the `type` field in this object and
  /// {project_id} is a project ID that provides API-specific context for
  /// accessing the type.  APIs that do not use project information can use the
  /// resource name format `"monitoredResourceDescriptors/{type}"`.
  core.String name;

  /// Required. The monitored resource type. For example, the type
  /// `"cloudsql_database"` represents databases in Google Cloud SQL.
  /// The maximum length of this value is 256 characters.
  core.String type;

  MonitoredResourceDescriptor();

  MonitoredResourceDescriptor.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.List)
          .map<LabelDescriptor>((value) => new LabelDescriptor.fromJson(value))
          .toList();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (labels != null) {
      _json["labels"] = labels.map((value) => (value).toJson()).toList();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Monitoring configuration of the service.
///
/// The example below shows how to configure monitored resources and metrics
/// for monitoring. In the example, a monitored resource and two metrics are
/// defined. The `library.googleapis.com/book/returned_count` metric is sent
/// to both producer and consumer projects, whereas the
/// `library.googleapis.com/book/overdue_count` metric is only sent to the
/// consumer project.
///
///     monitored_resources:
///     - type: library.googleapis.com/branch
///       labels:
///       - key: /city
///         description: The city where the library branch is located in.
///       - key: /name
///         description: The name of the branch.
///     metrics:
///     - name: library.googleapis.com/book/returned_count
///       metric_kind: DELTA
///       value_type: INT64
///       labels:
///       - key: /customer_id
///     - name: library.googleapis.com/book/overdue_count
///       metric_kind: GAUGE
///       value_type: INT64
///       labels:
///       - key: /customer_id
///     monitoring:
///       producer_destinations:
///       - monitored_resource: library.googleapis.com/branch
///         metrics:
///         - library.googleapis.com/book/returned_count
///       consumer_destinations:
///       - monitored_resource: library.googleapis.com/branch
///         metrics:
///         - library.googleapis.com/book/returned_count
///         - library.googleapis.com/book/overdue_count
class Monitoring {
  /// Monitoring configurations for sending metrics to the consumer project.
  /// There can be multiple consumer destinations, each one must have a
  /// different monitored resource type. A metric can be used in at most
  /// one consumer destination.
  core.List<MonitoringDestination> consumerDestinations;

  /// Monitoring configurations for sending metrics to the producer project.
  /// There can be multiple producer destinations, each one must have a
  /// different monitored resource type. A metric can be used in at most
  /// one producer destination.
  core.List<MonitoringDestination> producerDestinations;

  Monitoring();

  Monitoring.fromJson(core.Map _json) {
    if (_json.containsKey("consumerDestinations")) {
      consumerDestinations = (_json["consumerDestinations"] as core.List)
          .map<MonitoringDestination>(
              (value) => new MonitoringDestination.fromJson(value))
          .toList();
    }
    if (_json.containsKey("producerDestinations")) {
      producerDestinations = (_json["producerDestinations"] as core.List)
          .map<MonitoringDestination>(
              (value) => new MonitoringDestination.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (consumerDestinations != null) {
      _json["consumerDestinations"] =
          consumerDestinations.map((value) => (value).toJson()).toList();
    }
    if (producerDestinations != null) {
      _json["producerDestinations"] =
          producerDestinations.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Configuration of a specific monitoring destination (the producer project
/// or the consumer project).
class MonitoringDestination {
  /// Names of the metrics to report to this monitoring destination.
  /// Each name must be defined in Service.metrics section.
  core.List<core.String> metrics;

  /// The monitored resource type. The type must be defined in
  /// Service.monitored_resources section.
  core.String monitoredResource;

  MonitoringDestination();

  MonitoringDestination.fromJson(core.Map _json) {
    if (_json.containsKey("metrics")) {
      metrics = (_json["metrics"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("monitoredResource")) {
      monitoredResource = _json["monitoredResource"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (metrics != null) {
      _json["metrics"] = metrics;
    }
    if (monitoredResource != null) {
      _json["monitoredResource"] = monitoredResource;
    }
    return _json;
  }
}

/// OAuth scopes are a way to define data and permissions on data. For example,
/// there are scopes defined for "Read-only access to Google Calendar" and
/// "Access to Cloud Platform". Users can consent to a scope for an application,
/// giving it permission to access that data on their behalf.
///
/// OAuth scope specifications should be fairly coarse grained; a user will need
/// to see and understand the text description of what your scope means.
///
/// In most cases: use one or at most two OAuth scopes for an entire family of
/// products. If your product has multiple APIs, you should probably be sharing
/// the OAuth scope across all of those APIs.
///
/// When you need finer grained OAuth consent screens: talk with your product
/// management about how developers will use them in practice.
///
/// Please note that even though each of the canonical scopes is enough for a
/// request to be accepted and passed to the backend, a request can still fail
/// due to the backend requiring additional scopes or permissions.
class OAuthRequirements {
  /// The list of publicly documented OAuth scopes that are allowed access. An
  /// OAuth token containing any of these scopes will be accepted.
  ///
  /// Example:
  ///
  ///      canonical_scopes: https://www.googleapis.com/auth/calendar,
  ///                        https://www.googleapis.com/auth/calendar.read
  core.String canonicalScopes;

  OAuthRequirements();

  OAuthRequirements.fromJson(core.Map _json) {
    if (_json.containsKey("canonicalScopes")) {
      canonicalScopes = _json["canonicalScopes"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (canonicalScopes != null) {
      _json["canonicalScopes"] = canonicalScopes;
    }
    return _json;
  }
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is `false`, it means the operation is still in progress.
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool done;

  /// The error result of the operation in case of failure or cancellation.
  Status error;

  /// Service-specific metadata associated with the operation.  It typically
  /// contains progress information and common metadata such as create time.
  /// Some services might not provide such metadata.  Any method that returns a
  /// long-running operation should document the metadata type, if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that
  /// originally returns it. If you use the default HTTP mapping, the
  /// `name` should have the format of `operations/some/unique/name`.
  core.String name;

  /// The normal response of the operation in case of success.  If the original
  /// method returns no data on success, such as `Delete`, the response is
  /// `google.protobuf.Empty`.  If the original method is standard
  /// `Get`/`Create`/`Update`, the response should be the resource.  For other
  /// methods, the response should have the type `XxxResponse`, where `Xxx`
  /// is the original method name.  For example, if the original method name
  /// is `TakeSnapshot()`, the inferred response type is
  /// `TakeSnapshotResponse`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> response;

  Operation();

  Operation.fromJson(core.Map _json) {
    if (_json.containsKey("done")) {
      done = _json["done"];
    }
    if (_json.containsKey("error")) {
      error = new Status.fromJson(_json["error"]);
    }
    if (_json.containsKey("metadata")) {
      metadata =
          (_json["metadata"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("response")) {
      response =
          (_json["response"] as core.Map).cast<core.String, core.Object>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (done != null) {
      _json["done"] = done;
    }
    if (error != null) {
      _json["error"] = (error).toJson();
    }
    if (metadata != null) {
      _json["metadata"] = metadata;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (response != null) {
      _json["response"] = response;
    }
    return _json;
  }
}

/// The metadata associated with a long running operation resource.
class OperationMetadata {
  /// Percentage of completion of this operation, ranging from 0 to 100.
  core.int progressPercentage;

  /// The full name of the resources that this operation is directly
  /// associated with.
  core.List<core.String> resourceNames;

  /// The start time of the operation.
  core.String startTime;

  /// Detailed status information for each step. The order is undetermined.
  core.List<Step> steps;

  OperationMetadata();

  OperationMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("progressPercentage")) {
      progressPercentage = _json["progressPercentage"];
    }
    if (_json.containsKey("resourceNames")) {
      resourceNames = (_json["resourceNames"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
    if (_json.containsKey("steps")) {
      steps = (_json["steps"] as core.List)
          .map<Step>((value) => new Step.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (progressPercentage != null) {
      _json["progressPercentage"] = progressPercentage;
    }
    if (resourceNames != null) {
      _json["resourceNames"] = resourceNames;
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    if (steps != null) {
      _json["steps"] = steps.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A protocol buffer option, which can be attached to a message, field,
/// enumeration, etc.
class Option {
  /// The option's name. For protobuf built-in options (options defined in
  /// descriptor.proto), this is the short name. For example, `"map_entry"`.
  /// For custom options, it should be the fully-qualified name. For example,
  /// `"google.api.http"`.
  core.String name;

  /// The option's value packed in an Any message. If the value is a primitive,
  /// the corresponding wrapper type defined in google/protobuf/wrappers.proto
  /// should be used. If the value is an enum, it should be stored as an int32
  /// value using the google.protobuf.Int32Value type.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> value;

  Option();

  Option.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("value")) {
      value = (_json["value"] as core.Map).cast<core.String, core.Object>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// Represents a documentation page. A page can contain subpages to represent
/// nested documentation set structure.
class Page {
  /// The Markdown content of the page. You can use <code>&#40;== include {path}
  /// ==&#41;</code>
  /// to include content from a Markdown file.
  core.String content;

  /// The name of the page. It will be used as an identity of the page to
  /// generate URI of the page, text of the link to this page in navigation,
  /// etc. The full page name (start from the root page name to this page
  /// concatenated with `.`) can be used as reference to the page in your
  /// documentation. For example:
  /// <pre><code>pages:
  /// - name: Tutorial
  ///   content: &#40;== include tutorial.md ==&#41;
  ///   subpages:
  ///   - name: Java
  ///     content: &#40;== include tutorial_java.md ==&#41;
  /// </code></pre>
  /// You can reference `Java` page using Markdown reference link syntax:
  /// `Java`.
  core.String name;

  /// Subpages of this page. The order of subpages specified here will be
  /// honored in the generated docset.
  core.List<Page> subpages;

  Page();

  Page.fromJson(core.Map _json) {
    if (_json.containsKey("content")) {
      content = _json["content"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("subpages")) {
      subpages = (_json["subpages"] as core.List)
          .map<Page>((value) => new Page.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (content != null) {
      _json["content"] = content;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (subpages != null) {
      _json["subpages"] = subpages.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The published version of a Service that is managed by
/// Google Service Management.
class PublishedService {
  /// The resource name of the service.
  ///
  /// A valid name would be:
  /// - services/serviceuser.googleapis.com
  core.String name;

  /// The service's published configuration.
  Service service;

  PublishedService();

  PublishedService.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("service")) {
      service = new Service.fromJson(_json["service"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    if (service != null) {
      _json["service"] = (service).toJson();
    }
    return _json;
  }
}

/// Quota configuration helps to achieve fairness and budgeting in service
/// usage.
///
/// The quota configuration works this way:
/// - The service configuration defines a set of metrics.
/// - For API calls, the quota.metric_rules maps methods to metrics with
///   corresponding costs.
/// - The quota.limits defines limits on the metrics, which will be used for
///   quota checks at runtime.
///
/// An example quota configuration in yaml format:
///
///    quota:
///
///      - name: apiWriteQpsPerProject
///        metric: library.googleapis.com/write_calls
///        unit: "1/min/{project}"  # rate limit for consumer projects
///        values:
///          STANDARD: 10000
///
///
///      # The metric rules bind all methods to the read_calls metric,
///      # except for the UpdateBook and DeleteBook methods. These two methods
///      # are mapped to the write_calls metric, with the UpdateBook method
///      # consuming at twice rate as the DeleteBook method.
///      metric_rules:
///      - selector: "*"
///        metric_costs:
///          library.googleapis.com/read_calls: 1
///      - selector: google.example.library.v1.LibraryService.UpdateBook
///        metric_costs:
///          library.googleapis.com/write_calls: 2
///      - selector: google.example.library.v1.LibraryService.DeleteBook
///        metric_costs:
///          library.googleapis.com/write_calls: 1
///
///  Corresponding Metric definition:
///
///      metrics:
///      - name: library.googleapis.com/read_calls
///        display_name: Read requests
///        metric_kind: DELTA
///        value_type: INT64
///
///      - name: library.googleapis.com/write_calls
///        display_name: Write requests
///        metric_kind: DELTA
///        value_type: INT64
class Quota {
  /// List of `QuotaLimit` definitions for the service.
  core.List<QuotaLimit> limits;

  /// List of `MetricRule` definitions, each one mapping a selected method to
  /// one
  /// or more metrics.
  core.List<MetricRule> metricRules;

  Quota();

  Quota.fromJson(core.Map _json) {
    if (_json.containsKey("limits")) {
      limits = (_json["limits"] as core.List)
          .map<QuotaLimit>((value) => new QuotaLimit.fromJson(value))
          .toList();
    }
    if (_json.containsKey("metricRules")) {
      metricRules = (_json["metricRules"] as core.List)
          .map<MetricRule>((value) => new MetricRule.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (limits != null) {
      _json["limits"] = limits.map((value) => (value).toJson()).toList();
    }
    if (metricRules != null) {
      _json["metricRules"] =
          metricRules.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// `QuotaLimit` defines a specific limit that applies over a specified duration
/// for a limit type. There can be at most one limit for a duration and limit
/// type combination defined within a `QuotaGroup`.
class QuotaLimit {
  /// Default number of tokens that can be consumed during the specified
  /// duration. This is the number of tokens assigned when a client
  /// application developer activates the service for his/her project.
  ///
  /// Specifying a value of 0 will block all requests. This can be used if you
  /// are provisioning quota to selected consumers and blocking others.
  /// Similarly, a value of -1 will indicate an unlimited quota. No other
  /// negative values are allowed.
  ///
  /// Used by group-based quotas only.
  core.String defaultLimit;

  /// Optional. User-visible, extended description for this quota limit.
  /// Should be used only when more context is needed to understand this limit
  /// than provided by the limit's display name (see: `display_name`).
  core.String description;

  /// User-visible display name for this limit.
  /// Optional. If not set, the UI will provide a default display name based on
  /// the quota configuration. This field can be used to override the default
  /// display name generated from the configuration.
  core.String displayName;

  /// Duration of this limit in textual notation. Example: "100s", "24h", "1d".
  /// For duration longer than a day, only multiple of days is supported. We
  /// support only "100s" and "1d" for now. Additional support will be added in
  /// the future. "0" indicates indefinite duration.
  ///
  /// Used by group-based quotas only.
  core.String duration;

  /// Free tier value displayed in the Developers Console for this limit.
  /// The free tier is the number of tokens that will be subtracted from the
  /// billed amount when billing is enabled.
  /// This field can only be set on a limit with duration "1d", in a billable
  /// group; it is invalid on any other limit. If this field is not set, it
  /// defaults to 0, indicating that there is no free tier for this service.
  ///
  /// Used by group-based quotas only.
  core.String freeTier;

  /// Maximum number of tokens that can be consumed during the specified
  /// duration. Client application developers can override the default limit up
  /// to this maximum. If specified, this value cannot be set to a value less
  /// than the default limit. If not specified, it is set to the default limit.
  ///
  /// To allow clients to apply overrides with no upper bound, set this to -1,
  /// indicating unlimited maximum quota.
  ///
  /// Used by group-based quotas only.
  core.String maxLimit;

  /// The name of the metric this quota limit applies to. The quota limits with
  /// the same metric will be checked together during runtime. The metric must
  /// be
  /// defined within the service config.
  core.String metric;

  /// Name of the quota limit.
  ///
  /// The name must be provided, and it must be unique within the service. The
  /// name can only include alphanumeric characters as well as '-'.
  ///
  /// The maximum length of the limit name is 64 characters.
  core.String name;

  /// Specify the unit of the quota limit. It uses the same syntax as
  /// Metric.unit. The supported unit kinds are determined by the quota
  /// backend system.
  ///
  /// Here are some examples:
  /// * "1/min/{project}" for quota per minute per project.
  ///
  /// Note: the order of unit components is insignificant.
  /// The "1" at the beginning is required to follow the metric unit syntax.
  core.String unit;

  /// Tiered limit values. You must specify this as a key:value pair, with an
  /// integer value that is the maximum number of requests allowed for the
  /// specified unit. Currently only STANDARD is supported.
  core.Map<core.String, core.String> values;

  QuotaLimit();

  QuotaLimit.fromJson(core.Map _json) {
    if (_json.containsKey("defaultLimit")) {
      defaultLimit = _json["defaultLimit"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("duration")) {
      duration = _json["duration"];
    }
    if (_json.containsKey("freeTier")) {
      freeTier = _json["freeTier"];
    }
    if (_json.containsKey("maxLimit")) {
      maxLimit = _json["maxLimit"];
    }
    if (_json.containsKey("metric")) {
      metric = _json["metric"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("unit")) {
      unit = _json["unit"];
    }
    if (_json.containsKey("values")) {
      values = (_json["values"] as core.Map).cast<core.String, core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (defaultLimit != null) {
      _json["defaultLimit"] = defaultLimit;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (duration != null) {
      _json["duration"] = duration;
    }
    if (freeTier != null) {
      _json["freeTier"] = freeTier;
    }
    if (maxLimit != null) {
      _json["maxLimit"] = maxLimit;
    }
    if (metric != null) {
      _json["metric"] = metric;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (unit != null) {
      _json["unit"] = unit;
    }
    if (values != null) {
      _json["values"] = values;
    }
    return _json;
  }
}

/// Response message for SearchServices method.
class SearchServicesResponse {
  /// Token that can be passed to `ListAvailableServices` to resume a paginated
  /// query.
  core.String nextPageToken;

  /// Services available publicly or available to the authenticated caller.
  core.List<PublishedService> services;

  SearchServicesResponse();

  SearchServicesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("services")) {
      services = (_json["services"] as core.List)
          .map<PublishedService>(
              (value) => new PublishedService.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (services != null) {
      _json["services"] = services.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// `Service` is the root object of Google service configuration schema. It
/// describes basic information about a service, such as the name and the
/// title, and delegates other aspects to sub-sections. Each sub-section is
/// either a proto message or a repeated proto message that configures a
/// specific aspect, such as auth. See each proto message definition for
/// details.
///
/// Example:
///
///     type: google.api.Service
///     config_version: 3
///     name: calendar.googleapis.com
///     title: Google Calendar API
///     apis:
///     - name: google.calendar.v3.Calendar
///     authentication:
///       providers:
///       - id: google_calendar_auth
///         jwks_uri: https://www.googleapis.com/oauth2/v1/certs
///         issuer: https://securetoken.google.com
///       rules:
///       - selector: "*"
///         requirements:
///           provider_id: google_calendar_auth
class Service {
  /// A list of API interfaces exported by this service. Only the `name` field
  /// of the google.protobuf.Api needs to be provided by the configuration
  /// author, as the remaining fields will be derived from the IDL during the
  /// normalization process. It is an error to specify an API interface here
  /// which cannot be resolved against the associated IDL files.
  core.List<Api> apis;

  /// Auth configuration.
  Authentication authentication;

  /// API backend configuration.
  Backend backend;

  /// Billing configuration.
  Billing billing;

  /// The semantic version of the service configuration. The config version
  /// affects the interpretation of the service configuration. For example,
  /// certain features are enabled by default for certain config versions.
  /// The latest config version is `3`.
  core.int configVersion;

  /// Context configuration.
  Context context;

  /// Configuration for the service control plane.
  Control control;

  /// Custom error configuration.
  CustomError customError;

  /// Additional API documentation.
  Documentation documentation;

  /// Configuration for network endpoints.  If this is empty, then an endpoint
  /// with the same name as the service is automatically generated to service
  /// all
  /// defined APIs.
  core.List<Endpoint> endpoints;

  /// A list of all enum types included in this API service.  Enums
  /// referenced directly or indirectly by the `apis` are automatically
  /// included.  Enums which are not referenced but shall be included
  /// should be listed here by name. Example:
  ///
  ///     enums:
  ///     - name: google.someapi.v1.SomeEnum
  core.List<Enum> enums;

  /// Experimental configuration.
  Experimental experimental;

  /// HTTP configuration.
  Http http;

  /// A unique ID for a specific instance of this message, typically assigned
  /// by the client for tracking purpose. If empty, the server may choose to
  /// generate one instead.
  core.String id;

  /// Logging configuration.
  Logging logging;

  /// Defines the logs used by this service.
  core.List<LogDescriptor> logs;

  /// Defines the metrics used by this service.
  core.List<MetricDescriptor> metrics;

  /// Defines the monitored resources used by this service. This is required
  /// by the Service.monitoring and Service.logging configurations.
  core.List<MonitoredResourceDescriptor> monitoredResources;

  /// Monitoring configuration.
  Monitoring monitoring;

  /// The DNS address at which this service is available,
  /// e.g. `calendar.googleapis.com`.
  core.String name;

  /// The Google project that owns this service.
  core.String producerProjectId;

  /// Quota configuration.
  Quota quota;

  /// Output only. The source information for this configuration if available.
  SourceInfo sourceInfo;

  /// System parameter configuration.
  SystemParameters systemParameters;

  /// A list of all proto message types included in this API service.
  /// It serves similar purpose as [google.api.Service.types], except that
  /// these types are not needed by user-defined APIs. Therefore, they will not
  /// show up in the generated discovery doc. This field should only be used
  /// to define system APIs in ESF.
  core.List<Type> systemTypes;

  /// The product title for this service.
  core.String title;

  /// A list of all proto message types included in this API service.
  /// Types referenced directly or indirectly by the `apis` are
  /// automatically included.  Messages which are not referenced but
  /// shall be included, such as types used by the `google.protobuf.Any` type,
  /// should be listed here by name. Example:
  ///
  ///     types:
  ///     - name: google.protobuf.Int32
  core.List<Type> types;

  /// Configuration controlling usage of this service.
  Usage usage;

  Service();

  Service.fromJson(core.Map _json) {
    if (_json.containsKey("apis")) {
      apis = (_json["apis"] as core.List)
          .map<Api>((value) => new Api.fromJson(value))
          .toList();
    }
    if (_json.containsKey("authentication")) {
      authentication = new Authentication.fromJson(_json["authentication"]);
    }
    if (_json.containsKey("backend")) {
      backend = new Backend.fromJson(_json["backend"]);
    }
    if (_json.containsKey("billing")) {
      billing = new Billing.fromJson(_json["billing"]);
    }
    if (_json.containsKey("configVersion")) {
      configVersion = _json["configVersion"];
    }
    if (_json.containsKey("context")) {
      context = new Context.fromJson(_json["context"]);
    }
    if (_json.containsKey("control")) {
      control = new Control.fromJson(_json["control"]);
    }
    if (_json.containsKey("customError")) {
      customError = new CustomError.fromJson(_json["customError"]);
    }
    if (_json.containsKey("documentation")) {
      documentation = new Documentation.fromJson(_json["documentation"]);
    }
    if (_json.containsKey("endpoints")) {
      endpoints = (_json["endpoints"] as core.List)
          .map<Endpoint>((value) => new Endpoint.fromJson(value))
          .toList();
    }
    if (_json.containsKey("enums")) {
      enums = (_json["enums"] as core.List)
          .map<Enum>((value) => new Enum.fromJson(value))
          .toList();
    }
    if (_json.containsKey("experimental")) {
      experimental = new Experimental.fromJson(_json["experimental"]);
    }
    if (_json.containsKey("http")) {
      http = new Http.fromJson(_json["http"]);
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("logging")) {
      logging = new Logging.fromJson(_json["logging"]);
    }
    if (_json.containsKey("logs")) {
      logs = (_json["logs"] as core.List)
          .map<LogDescriptor>((value) => new LogDescriptor.fromJson(value))
          .toList();
    }
    if (_json.containsKey("metrics")) {
      metrics = (_json["metrics"] as core.List)
          .map<MetricDescriptor>(
              (value) => new MetricDescriptor.fromJson(value))
          .toList();
    }
    if (_json.containsKey("monitoredResources")) {
      monitoredResources = (_json["monitoredResources"] as core.List)
          .map<MonitoredResourceDescriptor>(
              (value) => new MonitoredResourceDescriptor.fromJson(value))
          .toList();
    }
    if (_json.containsKey("monitoring")) {
      monitoring = new Monitoring.fromJson(_json["monitoring"]);
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("producerProjectId")) {
      producerProjectId = _json["producerProjectId"];
    }
    if (_json.containsKey("quota")) {
      quota = new Quota.fromJson(_json["quota"]);
    }
    if (_json.containsKey("sourceInfo")) {
      sourceInfo = new SourceInfo.fromJson(_json["sourceInfo"]);
    }
    if (_json.containsKey("systemParameters")) {
      systemParameters =
          new SystemParameters.fromJson(_json["systemParameters"]);
    }
    if (_json.containsKey("systemTypes")) {
      systemTypes = (_json["systemTypes"] as core.List)
          .map<Type>((value) => new Type.fromJson(value))
          .toList();
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
    if (_json.containsKey("types")) {
      types = (_json["types"] as core.List)
          .map<Type>((value) => new Type.fromJson(value))
          .toList();
    }
    if (_json.containsKey("usage")) {
      usage = new Usage.fromJson(_json["usage"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (apis != null) {
      _json["apis"] = apis.map((value) => (value).toJson()).toList();
    }
    if (authentication != null) {
      _json["authentication"] = (authentication).toJson();
    }
    if (backend != null) {
      _json["backend"] = (backend).toJson();
    }
    if (billing != null) {
      _json["billing"] = (billing).toJson();
    }
    if (configVersion != null) {
      _json["configVersion"] = configVersion;
    }
    if (context != null) {
      _json["context"] = (context).toJson();
    }
    if (control != null) {
      _json["control"] = (control).toJson();
    }
    if (customError != null) {
      _json["customError"] = (customError).toJson();
    }
    if (documentation != null) {
      _json["documentation"] = (documentation).toJson();
    }
    if (endpoints != null) {
      _json["endpoints"] = endpoints.map((value) => (value).toJson()).toList();
    }
    if (enums != null) {
      _json["enums"] = enums.map((value) => (value).toJson()).toList();
    }
    if (experimental != null) {
      _json["experimental"] = (experimental).toJson();
    }
    if (http != null) {
      _json["http"] = (http).toJson();
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (logging != null) {
      _json["logging"] = (logging).toJson();
    }
    if (logs != null) {
      _json["logs"] = logs.map((value) => (value).toJson()).toList();
    }
    if (metrics != null) {
      _json["metrics"] = metrics.map((value) => (value).toJson()).toList();
    }
    if (monitoredResources != null) {
      _json["monitoredResources"] =
          monitoredResources.map((value) => (value).toJson()).toList();
    }
    if (monitoring != null) {
      _json["monitoring"] = (monitoring).toJson();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (producerProjectId != null) {
      _json["producerProjectId"] = producerProjectId;
    }
    if (quota != null) {
      _json["quota"] = (quota).toJson();
    }
    if (sourceInfo != null) {
      _json["sourceInfo"] = (sourceInfo).toJson();
    }
    if (systemParameters != null) {
      _json["systemParameters"] = (systemParameters).toJson();
    }
    if (systemTypes != null) {
      _json["systemTypes"] =
          systemTypes.map((value) => (value).toJson()).toList();
    }
    if (title != null) {
      _json["title"] = title;
    }
    if (types != null) {
      _json["types"] = types.map((value) => (value).toJson()).toList();
    }
    if (usage != null) {
      _json["usage"] = (usage).toJson();
    }
    return _json;
  }
}

/// `SourceContext` represents information about the source of a
/// protobuf element, like the file in which it is defined.
class SourceContext {
  /// The path-qualified name of the .proto file that contained the associated
  /// protobuf element.  For example: `"google/protobuf/source_context.proto"`.
  core.String fileName;

  SourceContext();

  SourceContext.fromJson(core.Map _json) {
    if (_json.containsKey("fileName")) {
      fileName = _json["fileName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fileName != null) {
      _json["fileName"] = fileName;
    }
    return _json;
  }
}

/// Source information used to create a Service Config
class SourceInfo {
  /// All files used during config generation.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>> sourceFiles;

  SourceInfo();

  SourceInfo.fromJson(core.Map _json) {
    if (_json.containsKey("sourceFiles")) {
      sourceFiles = (_json["sourceFiles"] as core.List)
          .map<core.Map<core.String, core.Object>>(
              (value) => (value as core.Map).cast<core.String, core.Object>())
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (sourceFiles != null) {
      _json["sourceFiles"] = sourceFiles;
    }
    return _json;
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different
/// programming environments, including REST APIs and RPC APIs. It is used by
/// [gRPC](https://github.com/grpc). The error model is designed to be:
///
/// - Simple to use and understand for most users
/// - Flexible enough to meet unexpected needs
///
/// # Overview
///
/// The `Status` message contains three pieces of data: error code, error
/// message,
/// and error details. The error code should be an enum value of
/// google.rpc.Code, but it may accept additional error codes if needed.  The
/// error message should be a developer-facing English message that helps
/// developers *understand* and *resolve* the error. If a localized user-facing
/// error message is needed, put the localized message in the error details or
/// localize it in the client. The optional error details may contain arbitrary
/// information about the error. There is a predefined set of error detail types
/// in the package `google.rpc` that can be used for common error conditions.
///
/// # Language mapping
///
/// The `Status` message is the logical representation of the error model, but
/// it
/// is not necessarily the actual wire format. When the `Status` message is
/// exposed in different client libraries and different wire protocols, it can
/// be
/// mapped differently. For example, it will likely be mapped to some exceptions
/// in Java, but more likely mapped to some error codes in C.
///
/// # Other uses
///
/// The error model and the `Status` message can be used in a variety of
/// environments, either with or without APIs, to provide a
/// consistent developer experience across different environments.
///
/// Example uses of this error model include:
///
/// - Partial errors. If a service needs to return partial errors to the client,
/// it may embed the `Status` in the normal response to indicate the partial
///     errors.
///
/// - Workflow errors. A typical workflow has multiple steps. Each step may
///     have a `Status` message for error reporting.
///
/// - Batch operations. If a client uses batch request and batch response, the
///     `Status` message should be used directly inside batch response, one for
///     each error sub-response.
///
/// - Asynchronous operations. If an API call embeds asynchronous operation
///     results in its response, the status of those operations should be
///     represented directly using the `Status` message.
///
/// - Logging. If some API errors are stored in logs, the message `Status` could
/// be used directly after any stripping needed for security/privacy reasons.
class Status {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int code;

  /// A list of messages that carry the error details.  There is a common set of
  /// message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>> details;

  /// A developer-facing error message, which should be in English. Any
  /// user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String message;

  Status();

  Status.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("details")) {
      details = (_json["details"] as core.List)
          .map<core.Map<core.String, core.Object>>(
              (value) => (value as core.Map).cast<core.String, core.Object>())
          .toList();
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (code != null) {
      _json["code"] = code;
    }
    if (details != null) {
      _json["details"] = details;
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}

/// Represents the status of one operation step.
class Step {
  /// The short description of the step.
  core.String description;

  /// The status code.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : Unspecifed code.
  /// - "DONE" : The operation or step has completed without errors.
  /// - "NOT_STARTED" : The operation or step has not started yet.
  /// - "IN_PROGRESS" : The operation or step is in progress.
  /// - "FAILED" : The operation or step has completed with errors. If the
  /// operation is
  /// rollbackable, the rollback completed with errors too.
  /// - "CANCELLED" : The operation or step has completed with cancellation.
  core.String status;

  Step();

  Step.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (status != null) {
      _json["status"] = status;
    }
    return _json;
  }
}

/// Define a parameter's name and location. The parameter may be passed as
/// either
/// an HTTP header or a URL query parameter, and if both are passed the behavior
/// is implementation-dependent.
class SystemParameter {
  /// Define the HTTP header name to use for the parameter. It is case
  /// insensitive.
  core.String httpHeader;

  /// Define the name of the parameter, such as "api_key" . It is case
  /// sensitive.
  core.String name;

  /// Define the URL query parameter name to use for the parameter. It is case
  /// sensitive.
  core.String urlQueryParameter;

  SystemParameter();

  SystemParameter.fromJson(core.Map _json) {
    if (_json.containsKey("httpHeader")) {
      httpHeader = _json["httpHeader"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("urlQueryParameter")) {
      urlQueryParameter = _json["urlQueryParameter"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (httpHeader != null) {
      _json["httpHeader"] = httpHeader;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (urlQueryParameter != null) {
      _json["urlQueryParameter"] = urlQueryParameter;
    }
    return _json;
  }
}

/// Define a system parameter rule mapping system parameter definitions to
/// methods.
class SystemParameterRule {
  /// Define parameters. Multiple names may be defined for a parameter.
  /// For a given method call, only one of them should be used. If multiple
  /// names are used the behavior is implementation-dependent.
  /// If none of the specified names are present the behavior is
  /// parameter-dependent.
  core.List<SystemParameter> parameters;

  /// Selects the methods to which this rule applies. Use '*' to indicate all
  /// methods in all APIs.
  ///
  /// Refer to selector for syntax details.
  core.String selector;

  SystemParameterRule();

  SystemParameterRule.fromJson(core.Map _json) {
    if (_json.containsKey("parameters")) {
      parameters = (_json["parameters"] as core.List)
          .map<SystemParameter>((value) => new SystemParameter.fromJson(value))
          .toList();
    }
    if (_json.containsKey("selector")) {
      selector = _json["selector"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (parameters != null) {
      _json["parameters"] =
          parameters.map((value) => (value).toJson()).toList();
    }
    if (selector != null) {
      _json["selector"] = selector;
    }
    return _json;
  }
}

/// ### System parameter configuration
///
/// A system parameter is a special kind of parameter defined by the API
/// system, not by an individual API. It is typically mapped to an HTTP header
/// and/or a URL query parameter. This configuration specifies which methods
/// change the names of the system parameters.
class SystemParameters {
  /// Define system parameters.
  ///
  /// The parameters defined here will override the default parameters
  /// implemented by the system. If this field is missing from the service
  /// config, default system parameters will be used. Default system parameters
  /// and names is implementation-dependent.
  ///
  /// Example: define api key for all methods
  ///
  ///     system_parameters
  ///       rules:
  ///         - selector: "*"
  ///           parameters:
  ///             - name: api_key
  ///               url_query_parameter: api_key
  ///
  ///
  /// Example: define 2 api key names for a specific method.
  ///
  ///     system_parameters
  ///       rules:
  ///         - selector: "/ListShelves"
  ///           parameters:
  ///             - name: api_key
  ///               http_header: Api-Key1
  ///             - name: api_key
  ///               http_header: Api-Key2
  ///
  /// **NOTE:** All service configuration rules follow "last one wins" order.
  core.List<SystemParameterRule> rules;

  SystemParameters();

  SystemParameters.fromJson(core.Map _json) {
    if (_json.containsKey("rules")) {
      rules = (_json["rules"] as core.List)
          .map<SystemParameterRule>(
              (value) => new SystemParameterRule.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (rules != null) {
      _json["rules"] = rules.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A protocol buffer message type.
class Type {
  /// The list of fields.
  core.List<Field> fields;

  /// The fully qualified message name.
  core.String name;

  /// The list of types appearing in `oneof` definitions in this type.
  core.List<core.String> oneofs;

  /// The protocol buffer options.
  core.List<Option> options;

  /// The source context.
  SourceContext sourceContext;

  /// The source syntax.
  /// Possible string values are:
  /// - "SYNTAX_PROTO2" : Syntax `proto2`.
  /// - "SYNTAX_PROTO3" : Syntax `proto3`.
  core.String syntax;

  Type();

  Type.fromJson(core.Map _json) {
    if (_json.containsKey("fields")) {
      fields = (_json["fields"] as core.List)
          .map<Field>((value) => new Field.fromJson(value))
          .toList();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("oneofs")) {
      oneofs = (_json["oneofs"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("options")) {
      options = (_json["options"] as core.List)
          .map<Option>((value) => new Option.fromJson(value))
          .toList();
    }
    if (_json.containsKey("sourceContext")) {
      sourceContext = new SourceContext.fromJson(_json["sourceContext"]);
    }
    if (_json.containsKey("syntax")) {
      syntax = _json["syntax"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fields != null) {
      _json["fields"] = fields.map((value) => (value).toJson()).toList();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (oneofs != null) {
      _json["oneofs"] = oneofs;
    }
    if (options != null) {
      _json["options"] = options.map((value) => (value).toJson()).toList();
    }
    if (sourceContext != null) {
      _json["sourceContext"] = (sourceContext).toJson();
    }
    if (syntax != null) {
      _json["syntax"] = syntax;
    }
    return _json;
  }
}

/// Configuration controlling usage of a service.
class Usage {
  /// The full resource name of a channel used for sending notifications to the
  /// service producer.
  ///
  /// Google Service Management currently only supports
  /// [Google Cloud Pub/Sub](https://cloud.google.com/pubsub) as a notification
  /// channel. To use Google Cloud Pub/Sub as the channel, this must be the name
  /// of a Cloud Pub/Sub topic that uses the Cloud Pub/Sub topic name format
  /// documented in https://cloud.google.com/pubsub/docs/overview.
  core.String producerNotificationChannel;

  /// Requirements that must be satisfied before a consumer project can use the
  /// service. Each requirement is of the form <service.name>/<requirement-id>;
  /// for example 'serviceusage.googleapis.com/billing-enabled'.
  core.List<core.String> requirements;

  /// A list of usage rules that apply to individual API methods.
  ///
  /// **NOTE:** All service configuration rules follow "last one wins" order.
  core.List<UsageRule> rules;

  Usage();

  Usage.fromJson(core.Map _json) {
    if (_json.containsKey("producerNotificationChannel")) {
      producerNotificationChannel = _json["producerNotificationChannel"];
    }
    if (_json.containsKey("requirements")) {
      requirements = (_json["requirements"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("rules")) {
      rules = (_json["rules"] as core.List)
          .map<UsageRule>((value) => new UsageRule.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (producerNotificationChannel != null) {
      _json["producerNotificationChannel"] = producerNotificationChannel;
    }
    if (requirements != null) {
      _json["requirements"] = requirements;
    }
    if (rules != null) {
      _json["rules"] = rules.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Usage configuration rules for the service.
///
/// NOTE: Under development.
///
///
/// Use this rule to configure unregistered calls for the service. Unregistered
/// calls are calls that do not contain consumer project identity.
/// (Example: calls that do not contain an API key).
/// By default, API methods do not allow unregistered calls, and each method
/// call
/// must be identified by a consumer project identity. Use this rule to
/// allow/disallow unregistered calls.
///
/// Example of an API that wants to allow unregistered calls for entire service.
///
///     usage:
///       rules:
///       - selector: "*"
///         allow_unregistered_calls: true
///
/// Example of a method that wants to allow unregistered calls.
///
///     usage:
///       rules:
///       - selector: "google.example.library.v1.LibraryService.CreateBook"
///         allow_unregistered_calls: true
class UsageRule {
  /// If true, the selected method allows unregistered calls, e.g. calls
  /// that don't identify any user or application.
  core.bool allowUnregisteredCalls;

  /// Selects the methods to which this rule applies. Use '*' to indicate all
  /// methods in all APIs.
  ///
  /// Refer to selector for syntax details.
  core.String selector;

  /// If true, the selected method should skip service control and the control
  /// plane features, such as quota and billing, will not be available.
  /// This flag is used by Google Cloud Endpoints to bypass checks for internal
  /// methods, such as service health check methods.
  core.bool skipServiceControl;

  UsageRule();

  UsageRule.fromJson(core.Map _json) {
    if (_json.containsKey("allowUnregisteredCalls")) {
      allowUnregisteredCalls = _json["allowUnregisteredCalls"];
    }
    if (_json.containsKey("selector")) {
      selector = _json["selector"];
    }
    if (_json.containsKey("skipServiceControl")) {
      skipServiceControl = _json["skipServiceControl"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (allowUnregisteredCalls != null) {
      _json["allowUnregisteredCalls"] = allowUnregisteredCalls;
    }
    if (selector != null) {
      _json["selector"] = selector;
    }
    if (skipServiceControl != null) {
      _json["skipServiceControl"] = skipServiceControl;
    }
    return _json;
  }
}
