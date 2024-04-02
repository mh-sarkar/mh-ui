import 'package:flutter/material.dart';

import 'global.dart';

/// [localizationCheckForNumber] method to check the number for localization
/// This method is used to check the number for localization
/// This is very useful for localization
/// This method is can be uses for any number
/// Here [locale] is used to check the locale
/// If the locale is 'bn_BD' then the number will be converted to Bengali number
/// Here using [banNumber] is used to convert the number to Bengali number
/// Inside [banNumber] method [numberMultiLan] is used to convert the number to Bengali number
/// This method is a global method
/// This method is used in many places
///
/// Example:
///
/// ```dart
/// localizationCheckForNumber(1234.56);
/// ```
dynamic localizationCheckForNumber(dynamic data) {
  if (data == null) return null;
  if (locale != null && locale.toString() == const Locale('bn_BD').toString()) {
    if (data.toString().contains('.00')) {
      return banNumber(data);
    } else if (data.toString().contains('.0')) {
      data = data.toString().replaceAll('.0', '.00');
      return banNumber(data);
    } else {
      return banNumber(data);
    }
  } else {
    return data;
  }
}

/// [banNumber] method to convert the number to Bengali number
/// This method is used to convert the number to Bengali number
/// This is very useful for localization
///
/// Example:
///
/// ```dart
/// banNumber(1234.56);
/// ```
dynamic banNumber(String text) {
  for (int i = 0; i < text.length; i++) {
    final newT = numberMultiLan(text[i]);
    text = text.replaceAll(text[i], newT);
  }
  return text;
}

/// [numberMultiLan] method to convert the number to Bengali number
/// This method is used to convert the number to Bengali number
/// This is very useful for localization
///
/// Example:
///
/// ```dart
/// numberMultiLan('1');
/// ```
dynamic numberMultiLan(String number) {
  String newNumber;
  switch (number) {
    case '1':
      newNumber = '১';
      break;

    case '2':
      newNumber = '২';
      break;

    case '3':
      newNumber = '৩';
      break;

    case '4':
      newNumber = '৪';
      break;

    case '5':
      newNumber = '৫';
      break;

    case '6':
      newNumber = '৬';
      break;

    case '7':
      newNumber = '৭';
      break;

    case '8':
      newNumber = '৮';
      break;

    case '9':
      newNumber = '৯';
      break;

    case '0':
      newNumber = '০';
      break;

    default:
      newNumber = number;
      break;
  }
  return newNumber;
}
