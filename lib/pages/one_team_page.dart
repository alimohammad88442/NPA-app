import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nba_app/cubits/all_teams_and_players_cubit/teams_and_players_cubit.dart';
import 'package:nba_app/custom_widgets/custom_appbar.dart';
import 'package:nba_app/custom_widgets/teams_list_view_widget.dart';
import 'package:nba_app/models/all_teams_model.dart';

class OneTeamPage extends StatelessWidget {
  const OneTeamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBartext: 'player name',
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: BlocBuilder<TeamsAndPlayersCubit,TeamsAndPlayersState>(builder: (context, state) {
          if (state is LoadingState) {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            );
          } else if (state is SuccessState) {
            TeamsModel teamsModel =
                BlocProvider.of<TeamsAndPlayersCubit>(context).searchTeamModel!;
            try {
              return TeamsListViewWidget(
                teamModel: teamsModel,
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
      },),
    );
  }
}