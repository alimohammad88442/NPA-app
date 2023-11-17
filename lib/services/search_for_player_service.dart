import 'package:nba_app/helper/get_api.dart';
import 'package:nba_app/models/all_players_model.dart';

class SearchForPlayerService {
  Future<PlayersModel> searchForPlayer(int id) async {
    var data = await Api().get('https://balldontlie.io/api/v1/players/$id');
    PlayersModel searchForPlayer = PlayersModel.fromjson(data);
    return searchForPlayer;
  }
}
