import 'package:flutter/material.dart';
import 'package:nba_app/models/all_players_model.dart';

class PlayerListViewWidget extends StatelessWidget {
  const PlayerListViewWidget({
    required this.playersModel,
    super.key,
  });
  final PlayersModel playersModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.greenAccent),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(playersModel.firstName),
              Row(
                children: [
                  const Text('info'),
                  const SizedBox(width: 50),
                  Column(
                    children: [
                      Text(
                          'full name : ${playersModel.firstName} ${playersModel.lastName}'),
                      Text('position : ${playersModel.position}'),
                      Text('current team : ${playersModel.team.fullName}'),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
