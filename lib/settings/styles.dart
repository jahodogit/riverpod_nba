import 'package:flutter/material.dart';
import 'package:riverpod_nba/settings/colors.dart';

BoxDecoration gradient = const BoxDecoration(
    gradient: LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomLeft,
  colors: [splashBackgroundColorSecundary, splashBackgroundColorPrimary],
));

const fullStackDevLogo = Text(
  "FULLSTACK | DEV",
  style: TextStyle(color: Colors.white),
);
