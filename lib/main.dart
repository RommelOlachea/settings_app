import 'package:flutter/material.dart';
import 'package:preferences_app/screens/home_screen.dart';
import 'package:preferences_app/screens/settings_screen.dart';
import 'package:preferences_app/share_preferences/preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.init();
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: HomeScreen.routerName,
        theme: ThemeData.light(),
        routes: {
          HomeScreen.routerName: (_) => const HomeScreen(),
          SettingScreen.routerName: (_) => const SettingScreen(),
        });
  }
}

/*modicamos el main, para poderlo hacer async, y poder llamar 
la inicializacion de las preferencias, y antes de esta ejecutamos
WidgetsFlutterBinding.ensureInitialized() para asegurarnos de
que primero inicialize los widgets antes del init de las preferencias*/

/*Con esta implementacion desde el main podemos utilizar las 
preferencias desde cualquier lugar de la aplicacion mediante setters
y getters*/

/*NOTA: tambien pudimos utilizar un future builder para inicializar 
las preferencias*/