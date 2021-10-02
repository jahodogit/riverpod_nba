import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_nba/settings/colors.dart';
import 'package:riverpod_nba/settings/styles.dart';
import 'package:riverpod_nba/teams/models/team.dart';
import 'package:riverpod_nba/teams/riverpod/team_state.dart';

final teamProvider =
    StateNotifierProvider<TeamProvider, List<Team>>((ref) => TeamProvider());

class SplashPage extends ConsumerStatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends ConsumerState<SplashPage> {
  @override
  void initState() {
    super.initState();
    ref.read(teamProvider.notifier).syncTeams();
  }

  @override
  Widget build(BuildContext context) {
    final teams = ref.watch(teamProvider);

    ref.listen(teamProvider, (List data) {
      if (data.isNotEmpty) {
        Navigator.of(context).pushNamed("/TeamList");
      }
    });

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: gradient,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(
              Icons.sports_basketball,
              size: 100,
              color: Colors.white,
            ),
            const Text("GAAMETIIME",
                style: TextStyle(
                  color: primaryTextColor,
                  fontSize: 40,
                )),
            const Text(
              "CONNECT WITH YOUR REALY",
              style: TextStyle(color: primaryTextColor),
            ),
            teams.isEmpty
                ? const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  )
                : const Icon(
                    Icons.code_rounded,
                    color: Colors.white,
                  )
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          fullStackDevLogo,
          Icon(
            Icons.coffee_maker,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
