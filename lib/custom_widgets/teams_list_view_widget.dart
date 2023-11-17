import 'package:flutter/material.dart';
import 'package:nba_app/models/all_teams_model.dart';

class TeamsListViewWidget extends StatelessWidget {
  const TeamsListViewWidget({
    super.key, required this.teamModel,
  });
  final TeamsModel teamModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.red),
        child:  Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            
              Text(teamModel.name),
            Row(
              children: [
               const Text('info'),
               const SizedBox(width: 50),
                Column(
                  children: [
                     Text(teamModel.fullName),
                      Text(teamModel.city),
                      Text(teamModel.abbreviation),
                      Text(teamModel.conference),
                      Text(teamModel.division),
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
