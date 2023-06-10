import 'package:boardgame_app_flutter/common/constants/constants.dart';
import 'package:flutter/material.dart';

import '../models/models.dart';

class GameDetailsPage extends StatelessWidget {
  const GameDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final game = ModalRoute.of(context)?.settings.arguments as Game;

    return Scaffold(
      appBar: AppBar(title: Text(game.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.network(randomPictureLink),
            Text('Release year: ${game.released}',
                style: TextStyle(fontSize: 24)),
            Text('Age: ${game.age}', style: const TextStyle(fontSize: 24)),
            ...game.creators.map((creator) => Text('Creator: $creator',
                style: const TextStyle(fontSize: 20))),
            ...game.categories.map((category) => Text('Category: $category',
                style: const TextStyle(fontSize: 20))),
          ],
        ),
      ),
    );
  }
}
