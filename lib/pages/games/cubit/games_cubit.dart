import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../services/games_service.dart';
import '../../models/models.dart';

part 'games_state.dart';
part 'games_cubit.freezed.dart';

class GamesCubit extends Cubit<GamesState> {
  final GameService _gameService;

  GamesCubit(this._gameService) : super(const GamesState.initial());

  Future<void> fetchGames() async {
    emit(const GamesState.loading());

    try {
      final games = await _gameService.getGames();
      emit(GamesState.loaded(games));
    } catch (e) {
      emit(GamesState.error(e.toString()));
    }
  }
}
