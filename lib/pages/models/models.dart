import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class Game with _$Game {
  const factory Game({
    required String id,
    required String name,
    required String released,
    required String tagline,
    required Players players,
    required int age,
    required List<String> creators,
    required List<String> categories,
  }) = _Game;

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);
}

@freezed
class Players with _$Players {
  const factory Players({
    required int min,
    required int max,
  }) = _Players;

  factory Players.fromJson(Map<String, dynamic> json) =>
      _$PlayersFromJson(json);
}
