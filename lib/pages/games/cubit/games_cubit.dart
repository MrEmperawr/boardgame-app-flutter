import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'games_state.dart';
part 'games_cubit.freezed.dart';

class GamesCubit extends Cubit<GamesState> {
  GamesCubit() : super(GamesState.initial());
}
