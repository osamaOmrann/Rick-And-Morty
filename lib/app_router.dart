import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/business_logic/cubit/characters_cubit.dart';
import 'package:rick_and_morty/constants/strings.dart';
import 'package:rick_and_morty/data/repository/characters_repository.dart';
import 'package:rick_and_morty/data/web_services/characters_web_services.dart';
import 'package:rick_and_morty/presentation/screens/character_details.dart';
import 'package:rick_and_morty/presentation/screens/characters_screen.dart';

class AppRouter {
  late CharacterRepository characterRepository;
  late CharactersCubit charactersCubit;
  AppRouter() {
    characterRepository = CharacterRepository(CharactersWevServices());
    charactersCubit = CharactersCubit(characterRepository);
  }
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case charactersScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                create: (BuildContext context) =>
                    CharactersCubit(characterRepository),
                child: CharactersScreen()));
      case characterDetailsScreen:
        return MaterialPageRoute(builder: (_) => CharacterDetailsScreen());
    }
  }
}
