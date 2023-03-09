
//La idea de esta clase es que todas sus propiedades sean estaticas
import 'package:shared_preferences/shared_preferences.dart';

class Preferences {

  static late SharedPreferences _prefs;

  static String _nombre = '';

  static bool _modoOscuro = false;
  static int _genero = 1;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static String get nombre {
    return _prefs.getString('nombre') ?? _nombre;
  }

  static set nombre(String nombre) {
    _nombre = nombre;
    _prefs.setString('nombre', _nombre);
  }

  static bool get modoOscuro {
    return _prefs.getBool('modoOscuro') ?? _modoOscuro;
  }

  static set modoOscuro(bool modoOscuro) {
    _modoOscuro = modoOscuro;
    _prefs.setBool('modoOscuro', _modoOscuro);
  }

  static int get genero {
    return _prefs.getInt('genero') ?? _genero;
  }

  static set genero(int genero) {
    _genero = genero;
    _prefs.setInt('genero', _genero);
  }
}