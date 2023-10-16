import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '/theme/app_theme.dart';

class AuthBackground extends StatelessWidget {
  final Widget child;

  const AuthBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.appTheme.primaryColor,
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: <Widget>[
          const _HeaderBox(),
          const _HeaderIcon(),
          child,
        ],
      ),
    );
  }
}

class _HeaderIcon extends StatelessWidget {
  const _HeaderIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 30),
        child: const Icon(
          FontAwesomeIcons.lock,
          color: Colors.white,
          size: 120,
        ),
      ),
    );
  }
}

class _HeaderBox extends StatelessWidget {
  const _HeaderBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 1.00,
      decoration: _headerBoxBackground(),
    );
  }

  BoxDecoration _headerBoxBackground() => BoxDecoration(
        gradient: LinearGradient(
          stops: const <double>[0.0, 0.90],
          colors: <Color>[
            AppTheme.appTheme.primaryColorLight.withOpacity(0.0),
            AppTheme.appTheme.primaryColor,
          ],
        ),
      );
}
