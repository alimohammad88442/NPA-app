import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nba_app/constens.dart';
import 'package:nba_app/cubits/all_teams_and_players_cubit/teams_and_players_cubit.dart';
import 'package:nba_app/custom_widgets/custom_appbar.dart';
import 'package:nba_app/custom_widgets_body/all_teams_page_body.dart';
import 'package:nba_app/models/all_teams_model.dart';

class TeamsPage extends StatelessWidget {
  const TeamsPage({super.key});
  static String id = 'TeamsPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBartext: kAllTeames,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back)),
      ),
      body: BlocBuilder<TeamsAndPlayersCubit, TeamsAndPlayersState>(
        builder: (context, state) {
          if (state is LoadingState) {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            );
          } else if (state is SuccessState) {
            List<TeamsModel> teamsModel =
                BlocProvider.of<TeamsAndPlayersCubit>(context).teamsModel!;
            try {
              return AllTeamsPageBody(
                teamsModel: teamsModel,
              );
            } on Exception catch (e) {
              return Center(
                child: Text(e.toString()),
              );
            }
          } else {
            return const Center(
                child: CircularProgressIndicator(
              color: Colors.blue,
            ));
          }
        },
      ),
    );
  }
}
