import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

/// [locale] method to set the value of locale
/// This method is used to set the locale of the app
/// This is very useful for localization
/// This is a global variable
///
/// Example:
///
/// ```dart
/// locale = Locale('en', 'US');
/// ```
Locale? locale;

/// [globalLogger] method to set the value of logger
/// This logger is used to log the messages
/// This is very useful for debugging
/// This is a global logger
///
/// Example:
///
/// ```dart
/// globalLogger.d("Hello World");
/// ```
final globalLogger = Logger();

/// [navigatorKey] method to set the value of navigatorKey
/// This key is used to navigate between the screens
/// This is very useful for navigation
/// This is a global key
/// This is used in main.dart file
///
/// Example:
///
/// ```dart
/// navigatorKey = GlobalKey<NavigatorState>();
/// ```
GlobalKey<NavigatorState>? navigatorKey;

/// [snackbarKey] method to set the value of snackbarKey
/// This key is used to show the snackbar
/// This is very useful for showing the snackbar
/// This is a global key
/// This is used in main.dart file
///
/// Example:
///
/// ```dart
/// snackbarKey = GlobalKey<ScaffoldMessengerState>();
/// ```
GlobalKey<ScaffoldMessengerState>? snackbarKey;
