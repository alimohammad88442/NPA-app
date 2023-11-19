import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:nba_app/models/all_players_model.dart';
import 'package:nba_app/models/all_teams_model.dart';
import 'package:nba_app/services/players_service.dart';
import 'package:nba_app/services/search_for_player_service.dart';
import 'package:nba_app/services/search_for_team_service.dart';
import 'package:nba_app/services/teams_service.dart';

part 'teams_and_players_state.dart';

class TeamsAndPlayersCubit extends Cubit<TeamsAndPlayersState> {
  TeamsAndPlayersCubit({
    required this.allTeamsService,
    required this.allPlayersService,
    required this.searchForPlayerService,
    required this.searchForTeamService,
  }) : super(TeamsInitial());
  TeamsModel? searchTeamModel;
  PlayersModel? searchPlayerModel;
  List<TeamsModel>? teamsModel;
  List<PlayersModel>? playersModel;
  GetAllTeamsService allTeamsService;
  GetAllPlayersService allPlayersService;
  SearchForPlayerService searchForPlayerService;
  SearchForTeamService searchForTeamService;

  void getAllTeams() async {
    emit(LoadingState());
    try {
      teamsModel = await allTeamsService.getAllTeams();
      emit(SuccessState());
    } catch (e) {
      emit(FailureState(erreMeassage: e.toString()));
    }
  }

  void getAllPlayers() async {
    emit(LoadingState());
    try {
      playersModel = await allPlayersService.getAllPlayers();
      emit(SuccessState());
    } catch (e) {
      emit(FailureState(erreMeassage: e.toString()));
    }
  }

  void searchforPlayer(String id) async {
    emit(LoadingState());
    try {
      searchPlayerModel = await searchForPlayerService.searchForPlayer(id);
      emit(SuccessState());
    } catch (e) {
      emit(FailureState(erreMeassage: e.toString()));
    }
  }

  void searchforTeam(String id) async {
    emit(LoadingState());
    try {
      searchTeamModel = await searchForTeamService.searchFroTeam(id);
      emit(SuccessState());
    } catch (e) {
      emit(FailureState(erreMeassage: e.toString()));
    }
  }
}
