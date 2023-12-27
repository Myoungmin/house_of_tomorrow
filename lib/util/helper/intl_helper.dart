import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

abstract class IntlHelper {
  static const Locale en = Locale('en');
  static const Locale ko = Locale('ko');

  // 한국어 여부 확인
  static bool get isKo => Intl.getCurrentLocale() == ko.languageCode;
}
