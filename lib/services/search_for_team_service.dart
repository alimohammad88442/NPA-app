import 'package:nba_app/helper/get_api.dart';
import 'package:nba_app/models/all_teams_model.dart';

class SearchForTeamService {
  Future<TeamsModel> searchFroTeam(String id) async {
    Map<String, dynamic> data =
        await Api().get('https://balldontlie.io/api/v1/teams/$id');
    TeamsModel searchForTeamModel = TeamsModel.fromjson(data);
    return searchForTeamModel;
  }
}
