import 'package:flutter/material.dart';
import 'package:preferences_app/share_preferences/preferences.dart';
import 'package:preferences_app/widgets/widgets.dart';

class SettingScreen extends StatefulWidget {
  static const String routerName = 'Settings';
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  // bool isDarkMode = false;
  // int gender = 1;
  // String name = 'Rommel';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      drawer: const SideMenu(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Ajustes',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w300),
            ),
            const Divider(),
            SwitchListTile.adaptive(
                value: Preferences.isDarkMode,
                title: const Text('DarkMode'),
                onChanged: (value) {
                  Preferences.isDarkMode = value;
                  setState(() {});
                }),
            const Divider(),
            RadioListTile(
                value: 1,
                groupValue: Preferences.gender,
                title: const Text('Masculino'),
                onChanged: (value) {
                  Preferences.gender = value ?? 1;
                  setState(() {});
                }),
            const Divider(),
            RadioListTile(
                value: 2,
                groupValue: Preferences.gender,
                title: const Text('Femenino'),
                onChanged: (value) {
                  Preferences.gender = value ?? 2;
                  setState(() {});
                }),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                initialValue: Preferences.name,
                onChanged: (value) {
                  Preferences.name = value;
                  setState(() {});
                },
                decoration: const InputDecoration(
                    labelText: 'Nombre', helperText: 'Nombre del usuario'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

/* cuando utilizamos un SingleScrollView, nos permite que si usamos el teclado, 
y no caben los controles en la pantalla estos se desplazen, asi como como tambien 
podemos hacer scroll sobre la pantalla */

/* Al cambiar a StateFulWidget podemos guardar el estado del widget */
/* el metodo setState() { } hace que el widget se redibuje */
