import 'package:flutter/material.dart';
import 'package:riverpod_nba/settings/colors.dart';
import 'package:riverpod_nba/settings/routes.dart';
import 'package:riverpod_nba/settings/styles.dart';
import 'package:riverpod_nba/splash/ui/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GAAMETIIME',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: primaryColor,
          appBarTheme: appBarStyle),
      home: const SplashPage(),
      routes: buildAppRoutes(),
    );
  }
}
