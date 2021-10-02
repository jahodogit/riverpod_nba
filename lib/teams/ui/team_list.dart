import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_nba/teams/models/team.dart';
import 'package:riverpod_nba/teams/riverpod/team_state.dart';
import 'package:riverpod_nba/teams/ui/team_card.dart';

class TeamListPage extends ConsumerStatefulWidget {
  const TeamListPage({Key? key}) : super(key: key);

  @override
  TeamListPageState createState() => TeamListPageState();
}

final teamProvider =
    StateNotifierProvider<TeamProvider, List<Team>>((ref) => TeamProvider());

class TeamListPageState extends ConsumerState<TeamListPage> {
  @override
  Widget build(BuildContext context) {
    final teams = ref.watch(teamProvider);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: teams.length,
        itemBuilder: (BuildContext context, index) {
          var team = teams[index];
          print(team);
          return TeamCard(
              key: const Key("1"),
              team: Team(
                city: "Atlanta",
                fullName: "Atlanta Hawks",
                teamId: "1",
                nickname: "Hawks",
                logo:
                    "https://upload.wikimedia.org/wikipedia/fr/e/ee/Hawks_2016.png",
                shortName: "ATL",
                allStar: "0",
                nbaFranchise: "1",
              ));
        },
      ),
    );
  }
}
