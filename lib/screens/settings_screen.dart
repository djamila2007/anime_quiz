import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Paramètres"),
      ),
      body: ListView(
        children: [

          const SizedBox(height: 20),

          const ListTile(
            leading: Icon(Icons.person),
            title: Text("Développeur"),
            subtitle: Text("BARRA"),
          ),

          const Divider(),

          const ListTile(
            leading: Icon(Icons.dark_mode),
            title: Text("Thème"),
            subtitle: Text("Mode sombre"),
          ),

          const Divider(),

          const ListTile(
            leading: Icon(Icons.volume_up),
            title: Text("Son"),
            subtitle: Text("Activé"),
          ),

          const Divider(),

          const ListTile(
            leading: Icon(Icons.info),
            title: Text("Version"),
            subtitle: Text("Anime Quiz 1.0"),
          ),

        ],
      ),
    );
  }
}