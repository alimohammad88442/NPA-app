part of 'teams_and_players_cubit.dart';

@immutable
sealed class TeamsAndPlayersState {}

final class TeamsInitial extends TeamsAndPlayersState {}

final class LoadingState extends TeamsAndPlayersState {}

final class SuccessState extends TeamsAndPlayersState {}

final class FailureState extends TeamsAndPlayersState {
  final String erreMeassage;

  FailureState({required this.erreMeassage});
}
