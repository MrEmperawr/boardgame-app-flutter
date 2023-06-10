// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Game _$$_GameFromJson(Map<String, dynamic> json) => _$_Game(
      id: json['id'] as String,
      name: json['name'] as String,
      released: json['released'] as String,
      tagline: json['tagline'] as String,
      players: Players.fromJson(json['players'] as Map<String, dynamic>),
      age: json['age'] as int,
      creators:
          (json['creators'] as List<dynamic>).map((e) => e as String).toList(),
      categories: (json['categories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_GameToJson(_$_Game instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'released': instance.released,
      'tagline': instance.tagline,
      'players': instance.players,
      'age': instance.age,
      'creators': instance.creators,
      'categories': instance.categories,
    };

_$_Players _$$_PlayersFromJson(Map<String, dynamic> json) => _$_Players(
      min: json['min'] as int,
      max: json['max'] as int,
    );

Map<String, dynamic> _$$_PlayersToJson(_$_Players instance) =>
    <String, dynamic>{
      'min': instance.min,
      'max': instance.max,
    };
