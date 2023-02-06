import 'package:flutter/material.dart';
import 'package:preferences_app/widgets/widgets.dart';

class SettingScreen extends StatelessWidget {
  static const String routerName = 'Settings';
  const SettingScreen({Key? key}) : super(key: key);

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
                value: true,
                title: const Text('DarkMode'),
                onChanged: (value) {}),
            const Divider(),
            RadioListTile(
                value: 1,
                groupValue: 1,
                title: const Text('Masculino'),
                onChanged: (value) {}),
            const Divider(),
            RadioListTile(
                value: 2,
                groupValue: 1,
                title: const Text('Femenino'),
                onChanged: (value) {}),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                initialValue: 'Rommel Olachea',
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