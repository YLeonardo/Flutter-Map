import 'package:flutter/material.dart';
import 'package:login_register_app/screens/screens.dart';
import 'login_screen.dart';
import 'map_screen.dart'; // Asegúrate de importar la pantalla de mapa
import '../widgets/widgets.dart';
import '../theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = 'home_screen';
  final String titleScreen = 'Bienvenido';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.appTheme.colorScheme.primary,
        title: Text(
          titleScreen,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AppFilledButton(
              onPressed: () {
                // Navegar a la pantalla de inicio de sesión cuando se presiona el botón
                Navigator.pushNamed(context, LoginScreen.routeName);
              },
              child: const Text(
                'Iniciar Sesión',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            const SizedBox(height: 20), // Espacio entre los botones
            AppFilledButton(
              onPressed: () {
                // Navegar a la pantalla de mapa cuando se presiona el botón
                Navigator.pushNamed(context, MapScreen.routeName);
              },
              child: const Text(
                'Ver Mapa',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
