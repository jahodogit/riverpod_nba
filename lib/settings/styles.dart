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

const titleStyle =
    TextStyle(color: ligthColor, fontWeight: FontWeight.bold, fontSize: 20);

const appBarStyle = AppBarTheme(
    backgroundColor: primaryColor,
    actionsIconTheme: IconThemeData(color: ligthColor),
    iconTheme: IconThemeData(color: ligthColor));
