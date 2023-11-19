import 'package:nba_app/helper/get_api.dart';
import 'package:nba_app/models/all_players_model.dart';

class SearchForPlayerService {
  Future<PlayersModel> searchForPlayer(String id) async {
    var data = await Api().get('https://balldontlie.io/api/v1/players?search=$id');
    PlayersModel searchForPlayer = PlayersModel.fromjson(data['data'][0]);
    return searchForPlayer;
  }
}
