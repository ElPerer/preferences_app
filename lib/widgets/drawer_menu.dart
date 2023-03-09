import 'package:flutter/material.dart';
import 'package:preferences_app/screens/screens.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const _DrawerHeader(),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Inicio'),
            onTap: () {
              // Navigator.pushNamed(context, HomeScreen.routerName);
              Navigator.pushReplacementNamed(context, HomeScreen.routerName);
             },
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text('Usuarios'),
            onTap: () {

             },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Configuraciones'),
            onTap: () {
              //El Navigator.pop(context) lo que hace es eliminar el último WIDGET en el que estuvimos, en este caso es el Drawer
              // Navigator.pop(context);

              //Esto nos permite navegar a la clase SettingsScreen
              // Navigator.pushNamed(context, SettingsScreen.routerName);

              //Con la siguiente línea sobre escribimos la ruta
              Navigator.pushReplacementNamed(context, SettingsScreen.routerName);
             },
          ),
        ],
      ),
    );
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Container(),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/menu-img.jpg'),
          fit: BoxFit.cover
        )
      ),
    );
  }
}
