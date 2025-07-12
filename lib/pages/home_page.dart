import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pokedexg12/apiservices/pokemon_api.dart';
import 'package:pokedexg12/apiservices/pokemon_api_service_http.dart';
import 'package:pokedexg12/pages/models/pokemon_reponse.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PokemonApi _pokemonApi;

  void initPokemonRestClient() {
    final dio = Dio(
      BaseOptions(
        responseType: ResponseType.plain,
      ), //forzamos a recibir unt exto plano como lo recibimos en la api de pokemon
    );
    _pokemonApi = PokemonApi(dio);
  }

  @override
  void initState() {
    initPokemonRestClient();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            // final response = await _pokemonApi.getPokemonList();
            // final decoded = pokemonReponseFromJson(response.data);
            // print(decoded.pokemon[1].name);

            final PokemonReponse? pokemones = await PokemonApiServiceHttp()
                .getPokemonReponse();
            print(pokemones!.pokemon[0].name);
          },
        ),
      ),
    );
  }
}
