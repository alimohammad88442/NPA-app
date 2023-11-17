import 'package:flutter/material.dart';
import 'package:nba_app/custom_widgets/teams_list_view_widget.dart';
import 'package:nba_app/models/all_teams_model.dart';

class AllTeamsPageBody extends StatelessWidget {
  const AllTeamsPageBody({super.key, required this.teamsModel});
  final List<TeamsModel> teamsModel;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: teamsModel.length,
        itemBuilder: (context, index) {
          return TeamsListViewWidget(
            teamModel: teamsModel[index],
          );
        });
  }
}
