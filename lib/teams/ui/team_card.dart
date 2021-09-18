import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_nba/settings/colors.dart';
import 'package:riverpod_nba/settings/styles.dart';
import 'package:riverpod_nba/teams/models/team.dart';

class TeamCard extends StatefulWidget {
  TeamCard({Key? key, required this.team}) : super(key: key);

  late Team team;

  @override
  _TeamCardState createState() => _TeamCardState();
}

class _TeamCardState extends State<TeamCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: secundaryColor,
      child: Container(
        padding: const EdgeInsets.all(20),
        height: 130,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  widget.team.fullName,
                  style: titleStyle,
                ),
                const Text(
                  "Descripcion un poco mas larga del objeto",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                const Icon(
                  Icons.arrow_forward_sharp,
                  color: ligthColor,
                )
              ],
            ),
            Image.network(
              widget.team.logo,
              width: 100,
            )
          ],
        ),
      ),
    );
  }
}
