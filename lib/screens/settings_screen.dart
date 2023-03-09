import 'package:flutter/material.dart';
import 'package:preferences_app/providers/theme_provider.dart';
import 'package:preferences_app/share_preferences/preferences.dart';
import 'package:preferences_app/widgets/widgets.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {

  //La siguiente línea es para establecer la ruta para acceder a este WIDGET
  static const String routerName = 'settings';

  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  /* bool modoOscuro = false;
  int genero = 1;
  String nombre = 'Pedro'; */


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      drawer: const DrawerMenu(),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text('Ajustes', style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300)),
              const Divider(),

              SwitchListTile.adaptive(
                value: Preferences.modoOscuro,
                title: const Text('Modo Oscuro'),
                onChanged: (value) {
                  Preferences.modoOscuro = value;
                  final themeProvider = Provider.of<ThemeProvider>(context, listen: false);

                  value ? themeProvider.setDarkMode() : themeProvider.setLightMode();
                  setState(() {
                    
                  });
                }
              ),

              const Divider(),

              RadioListTile<int>(
                value: 1,
                title: const Text('Masculino'),
                groupValue: Preferences.genero, 
                onChanged: (value){

                  //Con la siguiente línea indicamos que cuando el valor sea null mande un 1 por defecto, así evitamos el null-safety
                  Preferences.genero = value ?? 1;
                  setState(() {});
                }
              ),

              const Divider(),

              RadioListTile<int>(
                value: 2,
                title: const Text('Femenino'),
                groupValue: Preferences.genero, 
                onChanged: (value){
                  Preferences.genero = value ?? 2;
                  setState(() {
                    
                  });
                }
              ),

              const Divider(),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  initialValue: Preferences.nombre,
                  onChanged: (value){
                    Preferences.nombre = value;
                    setState(() {
                      
                    });
                  },
                  decoration: const InputDecoration(
                    labelText: 'Nombre',
                    helperText: 'Nombre del usuario'
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}