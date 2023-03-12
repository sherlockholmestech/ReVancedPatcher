import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../main.dart';

class SelectAppPage extends StatelessWidget {
  const SelectAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<AppState>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select App'),
      ),
      body: Center(
        child: ListView(
          children: [
            Card(
              color: Colors.redAccent,
              child: ListTile(
                title: Text('YouTube'),
                subtitle: Text("Patch YouTube here!"),
                onTap: () {
                  appState.selectedApp = 'YouTube';
                  appState.notifyListeners();
                  Navigator.pop(context);
                },
                selectedColor: Theme.of(context).colorScheme.primary,
              ),
            ),
            Card(
              color: Colors.orangeAccent,
              child: ListTile(
                title: Text('YouTube Music'),
                subtitle: Text("Patch YouTube Music here!"),
                onTap: () {
                  appState.selectedApp = 'YouTube Music';
                  appState.notifyListeners();
                  Navigator.pop(context);
                },
                selectedColor: Theme.of(context).colorScheme.primary,
              ),
            ),
          ],
        )
      )
    );
  }
}