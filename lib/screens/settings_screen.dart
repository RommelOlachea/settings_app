import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  static const String routerName = 'Settings';
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: const Center(
        child: Text('SettingScreen'),
      ),
    );
  }
}
