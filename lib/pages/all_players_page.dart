import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nba_app/constens.dart';
import 'package:nba_app/cubits/all_teams_and_players_cubit/teams_and_players_cubit.dart';
import 'package:nba_app/custom_widgets/custom_appbar.dart';
import 'package:nba_app/custom_widgets_body/all_players_page_body.dart';
import 'package:nba_app/models/all_players_model.dart';

class PlayersPage extends StatelessWidget {
  const PlayersPage({super.key});
  static String id = 'PlayersPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBartext: kAllplayers,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back)),
      ),
      body: BlocBuilder<TeamsAndPlayersCubit, TeamsAndPlayersState>(
        builder: (context, state) {
          if (state is LoadingState) {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.blue,
              ),
            );
          } else if (state is SuccessState) {
            List<PlayersModel> playersModel =
                BlocProvider.of<TeamsAndPlayersCubit>(context).playersModel!;
            try {
              return AllPlayersPageBody(
                playersModel: playersModel,
              );
            } on Exception catch (e) {
              return Center(
                child: Text(e.toString()),
              );
            }
          } else {
            return const Center(
                child: CircularProgressIndicator(
              color: Colors.red,
            ));
          }
        },
      ),
    );
  }
}
