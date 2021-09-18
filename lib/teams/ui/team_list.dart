import 'package:flutter/material.dart';
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
        children: const <Widget>[
          TeamCard(),
          TeamCard(),
        ],
      ),
    );
  }
}
