
import 'package:nba_app/helper/get_api.dart';
import 'package:nba_app/models/all_players_model.dart';

class GetAllPlayersService{ 
  Future<List<PlayersModel>> getAllPlayers()async{
    PlayersModel teamModel ;
    List<PlayersModel> teamModelList = [];
  Map<String, dynamic> data = await Api().get('https://balldontlie.io/api/v1/players');
    for (var element in data['data']) {
     teamModel = PlayersModel.fromjson(element);
     teamModelList.add(teamModel);
    }
    return teamModelList;
  }
}
