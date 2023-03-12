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
            ListTile(
              title: Text('HI'),
              subtitle: Text("HIHI"),
              onTap: () {
                print("object");
              },
            )
          ],
        )
      )
    );
  }
}