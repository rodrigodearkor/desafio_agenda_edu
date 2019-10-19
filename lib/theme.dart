import 'package:flutter/material.dart';

final ThemeData themeData = new ThemeData(
  brightness: Brightness.light,
  primarySwatch: _kPrimaryColor,
  primaryColor: _kPrimaryColor,
  primaryColorBrightness: Brightness.light,
  accentColorBrightness: Brightness.light
);

const _kPrimaryValue = 0xFF733DBE;
const MaterialColor _kPrimaryColor = const MaterialColor(
    _kPrimaryValue,
    const <int, Color>{
      50:  const Color(_kPrimaryValue),
      100: const Color(_kPrimaryValue),
      200: const Color(_kPrimaryValue),
      300: const Color(_kPrimaryValue),
      400: const Color(_kPrimaryValue),
      500: const Color(_kPrimaryValue),
      600: const Color(_kPrimaryValue),
      700: const Color(_kPrimaryValue),
      800: const Color(_kPrimaryValue),
      900: const Color(_kPrimaryValue),
    },
  );