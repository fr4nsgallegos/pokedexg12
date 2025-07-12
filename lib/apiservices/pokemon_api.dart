import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'pokemon_api.g.dart';

@RestApi(
  baseUrl:
      "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json?fbclid=IwZXh0bgNhZW0CMTAAAR1NvRhYdIz7HvFIbjRRZryG-5j4516YvSxaCzm4aH6RynNyp9tLZLTGz9Q_aem_OC7UyN2S8ri_YUImzNS2_g ",
)
abstract class PokemonApi {
  factory PokemonApi(Dio dio) = _PokemonApi;
}
