import 'package:boardgame_app_flutter/clients/http_client.dart';
import 'package:boardgame_app_flutter/services/games_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:boardgame_app_flutter/common/theme/app_theme.dart';
import 'package:boardgame_app_flutter/pages/game_details/game_details_page.dart';
import 'package:boardgame_app_flutter/pages/games/games_page.dart';
import 'package:boardgame_app_flutter/pages/home/home_page.dart';

import 'generated/l10n.dart';

void main() {
  final httpClient = HttpClient();
  runApp(MyApp(
    httpClient: httpClient,
  ));
}

class MyApp extends StatelessWidget {
  final HttpClient httpClient;
  const MyApp({super.key, required this.httpClient});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => GameService(httpClient),
      child: MaterialApp(
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en'),
        ],
        title: 'Flutter Demo',
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.system,
        initialRoute: '/',
        routes: {
          '/': (context) => const HomePage(),
          '/games': (context) => GamesPage(
                service: context.read<GameService>(),
              ),
          '/gameDetail': (context) => const GameDetailsPage(),
        },
      ),
    );
  }
}
