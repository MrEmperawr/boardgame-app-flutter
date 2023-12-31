import 'package:boardgame_app_flutter/common/constants/constants.dart';
import 'package:boardgame_app_flutter/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../services/games_service.dart';
import 'cubit/games_cubit.dart';

class GamesPage extends StatelessWidget {
  final GameService service;
  const GamesPage({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).games)),
      body: BlocProvider(
        create: (context) => GamesCubit(service),
        child: BlocBuilder<GamesCubit, GamesState>(
          builder: (context, state) {
            return state.when(
              initial: () =>
                  Container(), // Maybe some start message or empty container
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (games) => ListView.builder(
                itemCount: games.length,
                itemBuilder: (context, index) => Card(
                  child: ListTile(
                    leading:
                        Image.network(randomPictureLink, fit: BoxFit.cover),
                    title: Text(games[index].name),
                    subtitle: Text('Release year: ${games[index].released}'),
                    trailing: Text('Age: ${games[index].age.toString()}'),
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        '/gameDetail',
                        arguments: games[index],
                      );
                    },
                  ),
                ),
              ),
              error: (message) => Center(child: Text('Error: $message')),
            );
          },
        ),
      ),
    );
  }
}
