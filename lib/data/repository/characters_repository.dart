import 'package:rick_and_morty/data/models/character.dart';
import 'package:rick_and_morty/data/web_services/characters_web_services.dart';

class CharacterRepository{
  final CharactersWevServices charactersWevServices;

  CharacterRepository(this.charactersWevServices);

  Future<List<Character>> getAllCharachers() async {
    final characters = await charactersWevServices.getAllCharachers();
    return characters.map((character) => Character.fromJson(character)).toList();
  }
}