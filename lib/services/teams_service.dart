
import 'package:nba_app/helper/get_api.dart';
import 'package:nba_app/models/all_teams_model.dart';

class GetAllTeamsService{ 
  Future<List<TeamsModel>> getAllTeams()async{
    TeamsModel teamModel ;
    List<TeamsModel> teamModelList = [];
  Map<String, dynamic> data = await Api().get('https://www.balldontlie.io/api/v1/teams');
    for (var element in data['data']) {
     teamModel = TeamsModel.fromjson(element);
     teamModelList.add(teamModel);
    }
    return teamModelList;
  }
}
