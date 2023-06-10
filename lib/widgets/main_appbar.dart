import 'package:flutter/material.dart';

import '../generated/l10n.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 2,
      backgroundColor: Colors.teal[700],
      leading: Text(S.of(context).app_title),
    );
  }
}
