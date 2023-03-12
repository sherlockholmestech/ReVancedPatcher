import 'package:flutter/material.dart';

class SelectAppPage extends StatelessWidget {
  const SelectAppPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                  print("object");
                },
                selectedColor: Theme.of(context).colorScheme.primary,
              ),
            )
          ],
        )
      )
    );
  }
}