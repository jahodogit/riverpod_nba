import 'package:flutter/material.dart';
import 'package:riverpod_nba/teams/models/team.dart';
import 'package:riverpod_nba/teams/ui/team_card.dart';

class TeamListPage extends StatefulWidget {
  const TeamListPage({Key? key}) : super(key: key);

  @override
  _TeamListPageState createState() => _TeamListPageState();
}

class _TeamListPageState extends State<TeamListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          TeamCard(
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
            ),
          ),
          TeamCard(
            key: const Key("2"),
            team: Team(
              city: "Atlanta",
              fullName: "Boston Celtics",
              teamId: "2",
              nickname: "Hawks",
              logo:
                  "https://upload.wikimedia.org/wikipedia/fr/thumb/6/65/Celtics_de_Boston_logo.svg/1024px-Celtics_de_Boston_logo.svg.png",
              shortName: "ATL",
              allStar: "0",
              nbaFranchise: "1",
            ),
          ),
        ],
      ),
    );
  }
}
