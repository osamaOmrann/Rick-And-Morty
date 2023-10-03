import 'package:flutter/material.dart';
import 'package:rick_and_morty/app_router.dart';

void main() {
  runApp(RickAndMorty(appRouter: AppRouter(),));
}

class RickAndMorty extends StatelessWidget {
  final AppRouter appRouter;

  const RickAndMorty({super.key, required this.appRouter});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}
