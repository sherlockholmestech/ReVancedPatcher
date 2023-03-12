import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/selectapp.dart';
import 'pages/debuginfo.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppState(),
      child: MaterialApp(
        title: 'Revanced Patcher',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.dark(
            primary: Colors.blue,
            secondary: Colors.blue,
            onPrimary: Colors.white,
            onSecondary: Colors.white,
          ),
        ),
        routes: {
          '/': (context) => const HomePage(),
          '/selectapp': (context) => const SelectAppPage(),
          '/debuginfo':(context) => const DebugPage(),
        },
      ),
    );
  }
}

class AppState extends ChangeNotifier {
  var selectedApp = "YouTube";
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<AppState>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Revanced Patcher'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: Text(
                'Welcome to the ReVanced Patcher!\nThis is a work in progress, so please be patient!\nClick on the respective cards to modify their settings!',
                textAlign: TextAlign.center,
                ),
            ),
            Card(
              color: Colors.blueAccent,
              child: ListTile(
                title: Text('App to patch:'),
                subtitle: Text(appState.selectedApp),
                onTap: () {
                  Navigator.pushNamed(context, '/selectapp');
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                onPressed: () {
                  print("Compile lol idk");
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Patch Now!'),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/debuginfo');
              },
              child: Text('Debug Info'),
              )
          ],
        ),
      )
    );
  }
}