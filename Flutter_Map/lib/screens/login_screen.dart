import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../ui/ui.dart';
import '../widgets/widgets.dart';
import 'register_screen.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = 'login_screen';
  static String screenTitle = 'Ingresar';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackground(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 410),
              CardContainer(
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 10),
                    Text(screenTitle, style: const TextStyle(fontSize: 30)),
                    const SizedBox(height: 20),
                    _widgetEmail(),
                    const SizedBox(height: 30),
                    _widgetPassword(),
                    const SizedBox(height: 30),
                    // Botón 'Ingresar'
                    AppFilledButton(
                      onPressed: () => _onClickBtnIngresar(context),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 15),
                        child: const Text('Ingresar',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const SizedBox(height: 30),
                        // Enlace para crear cuenta
                        GestureDetector(
                          onTap: () {
                            // Navegar a la pantalla de registro
                            Navigator.pushNamed(
                                context, RegisterScreen.routeName);
                          },
                          child: Text(
                            '¿No tienes una cuenta? Crear cuenta',
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _widgetEmail() {
    return TextFormField(
      autocorrect: false,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecorations.authInputDecoration(
        hintText: 'usuario@ipn.mx',
        labelText: 'E-mail',
        prefixIcon: Icons.email_outlined,
      ),
      // Asignar al provider el valor de e-mail.
      onChanged: (value) {
        if (kDebugMode) print(value);
      },
      validator: (value) {
        String pattern =
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
        RegExp regExp = RegExp(pattern);
        return regExp.hasMatch(value ?? '')
            ? null
            : 'El formato del correo es inválido';
      },
    );
  }

  Widget _widgetPassword() {
    return TextFormField(
      autocorrect: false,
      keyboardType: TextInputType.emailAddress,
      obscureText: true,
      decoration: InputDecorations.authInputDecoration(
        hintText: '********',
        labelText: 'Contraseña',
        prefixIcon: Icons.lock_outline,
      ),
      onChanged: (value) {
        if (kDebugMode) print(value);
      },
      validator: (value) {
        const String strMensajeError =
            'La contraseña debe contener al menos 6 caracteres';
        return (value != null && value.length >= 6) ? null : strMensajeError;
      },
    );
  }

  void _onClickBtnIngresar(BuildContext context) async {
    // Esconder el teclado.
    FocusScope.of(context).unfocus();
  }
}
