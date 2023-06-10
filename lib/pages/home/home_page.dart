import 'package:boardgame_app_flutter/widgets/main_appbar.dart';
import 'package:boardgame_app_flutter/widgets/main_drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(),
      endDrawer: const MainDrawer(),
      body: Column(),
    );
  }
}
