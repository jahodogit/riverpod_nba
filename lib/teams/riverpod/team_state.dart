import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_nba/teams/models/team.dart';
import 'package:riverpod_nba/teams/network/teams_api.dart';
import 'dart:developer' as developer;

class TeamProvider extends StateNotifier<List<Team>> {
  TeamProvider([List<Team>? teams]) : super(teams ?? []);

  List<Team> initial = [];

  syncTeams() async => state.isEmpty
      ? state = await TeamsApi().getTeamsForLeague("standard")
      : developer.log("_TEAMSISNOTEMPTY_", name: "_API_");

  filterTeams(String name) {
    initial = state;
    state = state.where((element) => element.fullName.contains(name)).toList();
  }

  resetTeams() => state = initial;
}
