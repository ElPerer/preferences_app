import 'package:flutter/material.dart';
import 'package:preferences_app/widgets/widgets.dart';

import '../share_preferences/preferences.dart';

class HomeScreen extends StatelessWidget {

  //La siguiente línea es para establecer la ruta para acceder a este WIDGET
  static const String routerName = 'home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),

      drawer: const DrawerMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Divider(),
          Text('Modo Oscuro: ${Preferences.modoOscuro}'),
          const Divider(),
          Text('Género: ${Preferences.genero}'),
          const Divider(),
          Text('Nombre de usuario: ${Preferences.nombre}'),
          const Divider(),
        ],
      )
    );
  }
}