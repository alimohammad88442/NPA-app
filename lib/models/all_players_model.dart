
import 'package:nba_app/models/all_teams_model.dart';

class PlayersModel {
  final int id;
  final String firstName;
  final String lastName;
  final String position;
  final TeamsModel team;

  PlayersModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.position,
    required this.team,
  });
  factory PlayersModel.fromjson(jsonData) {
    return PlayersModel(
      id: jsonData['id'],
      firstName: jsonData['first_name'],
      lastName: jsonData['last_name'],
      position: jsonData['position'],
      team: TeamsModel.fromjson(jsonData['team']),
    );
  }
}
