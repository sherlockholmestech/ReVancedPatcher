import 'package:flutter/material.dart';
import 'pages/selectapp.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Revanced Patcher'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to the ReVanced Patcher!  This is a work in progress, so please be patient!'),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/selectapp');
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Begin Patching!'),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}