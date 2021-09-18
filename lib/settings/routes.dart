import 'package:flutter/material.dart';
import 'package:riverpod_nba/teams/ui/team_list.dart';

Map<String, WidgetBuilder> buildAppRoutes() {
  return {
    '/TeamList': (BuildContext context) => const TeamListPage(),
  };
}
