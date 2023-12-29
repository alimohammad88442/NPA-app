import 'package:flutter/material.dart';
import 'package:nba_app/pages/all_players_page.dart';
import 'package:nba_app/pages/all_teams_page.dart';
import 'package:nba_app/pages/home_page.dart';
import 'package:nba_app/pages/one_player_page.dart';
import 'package:nba_app/pages/one_team_page.dart';

class AppRouts {
  static Map<String, Widget Function(BuildContext)> routs = {
    HomePage.id: (context) => const HomePage(),
    TeamsPage.id: (context) => const TeamsPage(),
    PlayersPage.id: (context) => const PlayersPage(),
    OneTeamPage.id: (context) => const OneTeamPage(),
    OnePlayerPage.id: (context) => const OnePlayerPage(),
  };
}
