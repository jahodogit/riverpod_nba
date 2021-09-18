import 'package:flutter/material.dart';
import 'package:riverpod_nba/settings/colors.dart';
import 'package:riverpod_nba/settings/styles.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //color: splashBackgroundColorPrimary,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: gradient,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Icon(
              Icons.sports_basketball,
              size: 100,
              color: Colors.white,
            ),
            Text("GAAMETIIME",
                style: TextStyle(
                  color: primaryTextColor,
                  fontSize: 40,
                )),
            Text(
              "CONNECT WITH YOUR REALY",
              style: TextStyle(color: primaryTextColor),
            )
          ],
        ),
      ),
      floatingActionButton: GestureDetector(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            fullStackDevLogo,
            Icon(
              Icons.coffee_maker,
              color: Colors.white,
            )
          ],
        ),
        onTap: () {},
      ),
    );
  }
}
