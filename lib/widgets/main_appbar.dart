import 'package:flutter/material.dart';

import '../generated/l10n.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 2,
      backgroundColor: Colors.teal[700],
      leading: const Icon(Icons.bubble_chart, size: 40),
      title: Text(S.of(context).app_title),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
