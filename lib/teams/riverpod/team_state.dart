import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_nba/teams/models/team.dart';
import 'package:riverpod_nba/teams/network/teams_api.dart';

class TeamProvider extends StateNotifier<List<Team>> {
  TeamProvider([List<Team>? teams]) : super(teams ?? []) {
    syncTeams();
  }

  List<Team> initial = [];

  syncTeams() async => state = await TeamsApi().getTeamsForLeague("standard");

  filterTeams(String name) {
    initial = state;
    state = state.where((element) => element.fullName.contains(name)).toList();
  }

  resetTeams() => state = initial;
}
