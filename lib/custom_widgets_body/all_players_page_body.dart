import 'package:flutter/material.dart';
import 'package:nba_app/custom_widgets/player_list_view_widget.dart';

import '../models/all_players_model.dart';

class AllPlayersPageBody extends StatelessWidget {
  const AllPlayersPageBody({super.key, required this.playersModel});
  final List<PlayersModel> playersModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return PlayerListViewWidget(
              playersModel: playersModel[index],
            );
          }),
    );
  }
}
