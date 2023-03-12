import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../main.dart';
import 'dart:io';

class DebugPage extends StatelessWidget {
  const DebugPage({super.key});
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<AppState>();
    return Scaffold(
      appBar: AppBar(
        title: Text('DEBUG INFO'),
      ),
      body: ListView(
        children: [
          Text('Current Selected App: ${appState.selectedApp}'),
          Text('Working Directory: ${Directory.current.path}'),
          Text('System Info: ${Platform.operatingSystem}\n${Platform.operatingSystemVersion}')
        ],
      ),
    );
  }
}