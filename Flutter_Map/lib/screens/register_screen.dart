import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../ui/ui.dart';
import '../widgets/widgets.dart';
import 'login_screen.dart';

class RegisterScreen extends StatelessWidget {
  static String routeName = 'register_screen';
  static String screenTitle = 'Crear Cuenta';
  const RegisterScreen({super.key});

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
                    _widgetName(),
                    const SizedBox(height: 20),
                    _widgetEmail(),
                    const SizedBox(height: 20),
                    _widgetPassword(),
                    const SizedBox(height: 20),
                    _widgetRepeatPassword(),
                    const SizedBox(height: 30),
                    // Botón 'Crear cuenta'
                    AppFilledButton(
                      onPressed: () => _onClickBtnCrearCuenta(context),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 15),
                        child: const Text('Crear',
                            style: TextStyle(color: Colors.white)),
                      ),
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

  Widget _widgetName() {
    return TextFormField(
      autocorrect: false,
      keyboardType: TextInputType.text,
      decoration: InputDecorations.authInputDecoration(
        hintText: 'Nombre completo',
        labelText: 'Nombre',
        prefixIcon: Icons.person_outline,
      ),
      // Asignar al provider el valor del nombre.
      onChanged: (value) {
        if (kDebugMode) print(value);
      },
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

  Widget _widgetRepeatPassword() {
    return TextFormField(
      autocorrect: false,
      keyboardType: TextInputType.emailAddress,
      obscureText: true,
      decoration: InputDecorations.authInputDecoration(
        hintText: '********',
        labelText: 'Repetir Contraseña',
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

  void _onClickBtnCrearCuenta(BuildContext context) async {
    Navigator.pushNamed(context, LoginScreen.routeName);
  }
}
