import 'package:flutter/cupertino.dart';

class Service {
  static domain(String path) => _url = path;

  static get url => _url;

  static extraSlag(String? path) => _apiUrl = _url + (path ?? '');

  static get apiUrl => _apiUrl;

  static get getCookie => _setCookie;

  static get getToken => _authToken;
  static get getTokenPrefix => _authTokenPrefix;
  static get getTokenKey => _authTokenKey;
  static Widget? get getLoadingWidget => _loadingWidget;
  static bool get getNeedLoadingMsg => _needLoadingMsg;

  static setCookie(String cookie) => _setCookie = cookie;

  static setAuthToken(String token) => _authToken = token;

  static setAuthTokenKey(String key) => _authTokenKey = key;

  static setAuthTokenPrefix(String prefix) => _authTokenPrefix = prefix;

  static delAuthToken(_) => _authToken = '';

  static setLoadingWidget(Widget loading) => _loadingWidget = loading;

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
