import 'package:flutter/cupertino.dart';

/// [Service] class to store global variables
/// Used to store the domain, token, cookie, loading widget etc
/// This class methods can be used to set and get the values
/// This class methods use top level variables to store the values
class Service {
  /// [domain] method to set the api domain or ordinary domain or base url
  ///
  /// Example:
  ///
  /// ```dart
  /// Service.domain("https://example.com/");
  /// print(Service.url); // https://example.com/
  /// ```
  static domain(String path) => _url = path;

  /// [url] method to get the [domain]
  ///
  /// Example:
  ///
  /// ```dart
  /// Service.domain("https://example.com/");
  /// print(Service.url); // https://example.com/
  /// ```
  static get url => _url;

  /// [extraSlag] method to set the api domain with extra path
  /// Previously set domain will be used as base url
  ///
  /// Example:
  ///
  /// ```dart
  /// Service.domain("https://example.com/");
  /// Service.extraSlag("api/");
  /// print(Service.apiUrl); // https://example.com/api/
  /// ```
  static extraSlag(String? path) => _apiUrl = _url + (path ?? '');

  /// [apiUrl] method to get the total url with domain and extra path
  ///
  /// Example:
  ///
  /// ```dart
  /// Service.domain("https://example.com/");
  /// Service.extraSlag("api/");
  /// print(Service.apiUrl); // https://example.com/api/
  /// ```
  ///
  static get apiUrl => _apiUrl;

  /// [getCookie] method to get the cookie
  ///
  /// Example:
  ///
  /// ```dart
  /// Service.setCookie("cookie");
  /// print(Service.getCookie); // cookie
  /// ```
  static get getCookie => _setCookie;

  /// [getToken] method to get the token for authentication
  /// Every request will be sent with this token where needed
  ///
  /// Example:
  ///
  /// ```dart
  /// Service.setAuthToken("token");
  /// print(Service.getToken); // token
  /// ```
  static get getToken => _authToken;

  /// [getTokenPrefix] method to get the token prefix
  /// There are some cases where token prefix is needed
  /// like Bearer, JWT etc
  ///
  /// Example:
  ///
  /// ```dart
  /// Service.setAuthTokenPrefix("Bearer ");
  /// print(Service.getTokenPrefix); // Bearer
  /// ```
  static get getTokenPrefix => _authTokenPrefix;

  /// [getTokenKey] method to get the token key
  /// There are some cases where token key is needed
  /// like Authorization, Token etc
  ///
  /// Example:
  ///
  /// ```dart
  /// Service.setAuthTokenKey("Authorization");
  /// print(Service.getTokenKey); // Authorization
  /// ```
  static get getTokenKey => _authTokenKey;

  /// [getLoadingWidget] method to get the loading widget
  /// used when api calls
  ///
  /// Example:
  ///
  /// ```dart
  /// Service.setLoadingWidget(
  ///  Image.asset(
  ///  'assets/loading-c.gif',
  ///  height: 30,
  ///  width: 30,
  ///  ),
  ///  );
  ///  print(Service.getLoadingWidget); // Image.asset(...)
  ///  ```
  static Widget? get getLoadingWidget => _loadingWidget;

  /// [getNeedLoadingMsg] method to get the need loading message
  /// used when api calls
  ///
  /// Example:
  ///
  /// ```dart
  /// Service.setNeedLoadingMsg(false);
  /// print(Service.getNeedLoadingMsg); // false
  /// ```
  static bool get getNeedLoadingMsg => _needLoadingMsg;

  /// [setCookie] method to set the cookie
  ///
  /// Example:
  ///
  /// ```dart
  /// Service.setCookie("cookie");
  /// print(Service.getCookie); // cookie
  /// ```
  static setCookie(String cookie) => _setCookie = cookie;

  /// [setAuthToken] method to set the token for authentication
  /// Every request will be sent with this token where needed
  ///
  /// Example:
  ///
  /// ```dart
  /// Service.setAuthToken("token");
  /// print(Service.getToken); // token
  /// ```
  static setAuthToken(String token) => _authToken = token;

  /// [setAuthTokenKey] method to set the token key
  /// There are some cases where token key is needed
  /// like Authorization, Token etc
  ///
  /// Example:
  ///
  /// ```dart
  /// Service.setAuthTokenKey("Authorization");
  /// print(Service.getTokenKey); // Authorization
  /// ```
  static setAuthTokenKey(String key) => _authTokenKey = key;

  /// [setAuthTokenPrefix] method to set the token prefix
  /// There are some cases where token prefix is needed
  /// like Bearer, JWT etc
  ///
  /// Example:
  ///
  /// ```dart
  /// Service.setAuthTokenPrefix("Bearer ");
  /// print(Service.getTokenPrefix); // Bearer
  /// ```
  static setAuthTokenPrefix(String prefix) => _authTokenPrefix = prefix;

  /// [delAuthToken] method to delete the token for authentication
  /// Used when user logs out or token is expired etc
  ///
  /// Example:
  ///
  /// ```dart
  /// Service.delAuthToken();
  /// print(Service.getToken); // ''
  /// ```
  static delAuthToken(_) => _authToken = '';

  /// [setLoadingWidget] method to set the loading widget
  /// used when api calls
  ///
  /// Example:
  ///
  /// ```dart
  /// Service.setLoadingWidget(
  /// Image.asset(
  /// 'assets/loading-c.gif',
  /// height: 30,
  /// width: 30,
  /// ),
  /// );
  /// ```
  static setLoadingWidget(Widget loading) => _loadingWidget = loading;

  /// [setNeedLoadingMsg] method to set the need loading message
  /// used when api calls
  ///
  /// Example:
  ///
  /// ```dart
  /// Service.setNeedLoadingMsg(false);
  /// print(Service.getNeedLoadingMsg); // false
  /// ```
  static setNeedLoadingMsg(bool needLoadingMsg) => _needLoadingMsg = needLoadingMsg;

  static String _url = '';
  static String _apiUrl = '';
  static String _authToken = '';
  static String _setCookie = '';
  static String _authTokenPrefix = 'Bearer ';
  static String _authTokenKey = 'Authorization';
  static bool _needLoadingMsg = true;
  static Widget? _loadingWidget;
}
