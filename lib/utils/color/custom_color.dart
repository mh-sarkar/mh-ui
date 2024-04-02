import 'package:flutter/material.dart';

/// [CustomColor] class to uses for in this package all ui will use project colors
/// This class is used to set the primary color, text color, background color
/// This class is very useful for setting the colors
///
/// Example:
///
/// ```dart
/// CustomColor.setPrimaryColor(Colors.red);
/// CustomColor.setTextColor = Colors.black;
/// CustomColor.setBgColor = Colors.white;
/// ```
class CustomColor {
  /// [setPrimaryColor] method to set the primary color
  /// This method is used to set the primary color
  /// This is very useful for setting the primary color
  /// This is a global method
  ///
  /// Example:
  ///
  /// ```dart
  /// CustomColor.setPrimaryColor(Colors.red);
  /// ```
  static setPrimaryColor(Color? color) => _kPrimaryColor = color;

  /// [setTextColor] method to set the text color
  /// This method is used to set the text color
  /// This is very useful for setting the text color
  /// This is a global method
  ///
  /// Example:
  ///
  /// ```dart
  /// CustomColor.setTextColor = Colors.black;
  /// ```
  static set setTextColor(Color? color) => _kTextColor = color;

  /// [setBgColor] method to set the background color
  /// This method is used to set the background color
  /// This is very useful for setting the background color
  /// This is a global method
  ///
  /// Example:
  ///
  /// ```dart
  /// CustomColor.setBgColor = Colors.white;
  /// ```
  static set setBgColor(Color? color) => _bgColor = color;

  /// [kPrimaryColor] method to get the primary color
  /// This method is used to get the primary color
  /// This is very useful for getting the primary color
  /// This is a global method
  ///
  /// Example:
  ///
  /// ```dart
  /// CustomColor.kPrimaryColor;
  /// ```
  static Color get kPrimaryColor => _kPrimaryColor ?? const Color(0xffF37048);

  /// [kTextColor] method to get the text color
  /// This method is used to get the text color
  /// This is very useful for getting the text color
  /// This is a global method
  ///
  /// Example:
  ///
  /// ```dart
  /// CustomColor.kTextColor;
  /// ```
  static get kTextColor => _kTextColor ?? const Color(0xff000000);

  /// [bgColor] method to get the background color
  /// This method is used to get the background color
  /// This is very useful for getting the background color
  /// This is a global method
  ///
  /// Example:
  ///
  /// ```dart
  /// CustomColor.bgColor;
  /// ```
  static get bgColor => _bgColor ?? const Color(0xffffffff);

  static Color? _kPrimaryColor;
  static Color? _kTextColor;
  static Color? _bgColor;
}
