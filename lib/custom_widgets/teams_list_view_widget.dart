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
            
              Text('name: ${teamModel.name}'),
             const Divider(color: Colors.black,),
            Row(
              children: [
               const Text('info'),
               const SizedBox(width: 50),
                Column(
                  children: [
                     Text('full name : ${teamModel.fullName}'),
                      Text('city:${teamModel.city}'),
                      Text('abbreviation ${teamModel.abbreviation}'),
                      Text('conference :${teamModel.conference}'),
                      Text('division ${teamModel.division}'),
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
