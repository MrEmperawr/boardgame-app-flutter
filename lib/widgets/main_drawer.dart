import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 2,
      backgroundColor: Colors.teal[700],
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.teal[800],
            ),
            child: const Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.games, color: Colors.white),
            title: const Text('Games', style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.of(context).pushNamed('/games');
            },
          ),
          ListTile(
            leading: const Icon(Icons.login, color: Colors.white),
            title: const Text('Login', style: TextStyle(color: Colors.white)),
            onTap: () {
              // Navigator.of(context).pushNamed('/login');
            },
          ),
        ],
      ),
    );
  }
}
