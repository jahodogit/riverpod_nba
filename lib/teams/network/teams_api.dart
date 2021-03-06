import 'dart:convert' as convert;
import 'package:riverpod_nba/teams/models/team.dart';
import 'package:http/http.dart' as http;

class TeamsApi {
  Future<List<Team>> getTeamsForLeague(String league) async {
    String base = "https://api-nba-v1.p.rapidapi.com";

    var response = await http.get(Uri.parse("$base/teams/league/standard"),
        headers: {
          "x-rapidapi-key": "8f33ad36fdmsh0308ae161e50c80p142cfajsned70c10234cc"
        });

    Iterable json = convert.json.decode(response.body)["api"]["teams"];

    if (response.statusCode == 200) {
      return json.map((receivedTeam) => Team.fromJson(receivedTeam)).toList();
    } else {
      throw Exception(
          "Sorry!, we have problems to get data ${response.statusCode}");
    }
  }
}
