import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_nba/settings/colors.dart';
import 'package:riverpod_nba/settings/styles.dart';
import 'package:riverpod_nba/teams/models/team.dart';
import 'package:riverpod_nba/teams/riverpod/team_state.dart';

final teamProvider =
    StateNotifierProvider<TeamProvider, List<Team>>((ref) => TeamProvider());

class SplashPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final teams = ref.watch(teamProvider);

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
                ? const CircularProgressIndicator(
                    color: primaryColor,
                  )
                : const Text("OK!")
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
        onTap: () => Navigator.of(context).pushNamed("/TeamList"),
      ),
    );
  }
}
