import 'package:flutter/material.dart';
import 'package:riverpod_nba/settings/colors.dart';

class TeamCard extends StatefulWidget {
  const TeamCard({Key? key}) : super(key: key);

  @override
  _TeamCardState createState() => _TeamCardState();
}

class _TeamCardState extends State<TeamCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: secundaryColor,
      child: Column(
        children: const <Widget>[
          Text(
            "TITULO",
            style: TextStyle(color: ligthColor),
          ),
          Text(
            "Descripcion un poco mas larga del objeto",
            style: TextStyle(color: Colors.white),
          ),
          Icon(
            Icons.arrow_forward_sharp,
            color: ligthColor,
          )
        ],
      ),
    );
  }
}
