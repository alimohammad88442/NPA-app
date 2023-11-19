import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nba_app/cubits/all_teams_and_players_cubit/teams_and_players_cubit.dart';
import 'package:nba_app/pages/home_page.dart';
import 'package:nba_app/pages/all_players_page.dart';
import 'package:nba_app/pages/all_teams_page.dart';
import 'package:nba_app/pages/one_player_page.dart';
import 'package:nba_app/pages/one_team_page.dart';
import 'package:nba_app/services/players_service.dart';
import 'package:nba_app/services/search_for_player_service.dart';
import 'package:nba_app/services/search_for_team_service.dart';

import 'services/teams_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TeamsAndPlayersCubit(
        allTeamsService: GetAllTeamsService(),
        allPlayersService: GetAllPlayersService(),
        searchForPlayerService: SearchForPlayerService(),
        searchForTeamService: SearchForTeamService(),
      ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        routes: {
          HomePage.id: (context) => const HomePage(),
          TeamsPage.id: (context) => const TeamsPage(),
          PlayersPage.id: (context) => const PlayersPage(),
          OneTeamPage.id:(context) => const OneTeamPage(),
          OnePlayerPage.id:(context) => const OnePlayerPage(),
        },
        initialRoute: HomePage.id,
      ),
    );
  }
}
