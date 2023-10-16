import 'package:flutter/material.dart';
import '/theme/app_theme.dart';

class AppFilledButton extends StatelessWidget {
  // Atributos de la clase.
  final VoidCallback? onPressed;
  final Widget child;

  const AppFilledButton({
    Key? key,
    required this.onPressed,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        elevation: 0,
        backgroundColor: AppTheme.appTheme.primaryColor,
        disabledBackgroundColor: Colors.grey,
      ),
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      // disabledColor: Colors.grey,
      // elevation: 0,
      // color: AppTheme.appTheme.primaryColor,
      onPressed: onPressed,
      child: child,
    );
  }
}

/*
class AppFilledButton extends StatelessWidget {
  // Atributos de la clase.
  final VoidCallback? onPressed;
  final Widget child;

  const AppFilledButton({
    Key? key,
    required this.onPressed,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      disabledColor: Colors.grey,
      elevation: 0,
      color: AppTheme.appTheme.primaryColor,
      onPressed: onPressed,
      child: child,
    );
  }
}
*/
