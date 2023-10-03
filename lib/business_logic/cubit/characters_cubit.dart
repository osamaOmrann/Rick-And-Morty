import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rick_and_morty/data/models/character.dart';
import 'package:rick_and_morty/data/repository/characters_repository.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final CharacterRepository characterRepository;
  List<Character> characters = [];

  CharactersCubit(this.characterRepository) : super(CharactersInitial());

  List<Character> getAllCharacters() {
    characterRepository.getAllCharachers().then((characters) {
      print(characters.length);
      emit(CharactersLoaded(characters));

      this.characters = characters;
    });
    return characters;
  }
}
