// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_reponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonReponse _$PokemonReponseFromJson(Map<String, dynamic> json) =>
    PokemonReponse(
      pokemon: (json['pokemon'] as List<dynamic>)
          .map((e) => Pokemon.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PokemonReponseToJson(PokemonReponse instance) =>
    <String, dynamic>{'pokemon': instance.pokemon};
