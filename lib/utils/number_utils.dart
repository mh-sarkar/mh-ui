import 'package:flutter/material.dart';

import 'global.dart';

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

dynamic banNumber(String text) {
  for (int i = 0; i < text.length; i++) {
    final newT = numberMultiLan(text[i]);
    text = text.replaceAll(text[i], newT);
  }
  return text;
}

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
