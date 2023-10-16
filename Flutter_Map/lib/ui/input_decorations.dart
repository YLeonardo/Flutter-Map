import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class InputDecorations {
  static BorderSide _formfieldBorderSide() {
    return BorderSide(
      color: AppTheme.appTheme.primaryColorDark,
      width: 3,
    );
  }

  static InputDecoration authInputDecoration({
    required String hintText,
    required String labelText,
    IconData? prefixIcon,
  }) {
    return InputDecoration(
      enabledBorder: UnderlineInputBorder(borderSide: _formfieldBorderSide()),
      focusedBorder: UnderlineInputBorder(borderSide: _formfieldBorderSide()),
      hintText: hintText,
      labelText: labelText,
      labelStyle: const TextStyle(color: Colors.grey),
      prefixIcon: prefixIcon != null ? Icon(prefixIcon, color: AppTheme.appTheme.primaryColorDark) : null,
    );
  }

  static InputDecoration formInputDecoration({
    required String hintText,
    required String labelText,
    IconData? prefixIcon,
  }) {
    return InputDecoration(
      enabledBorder: UnderlineInputBorder(borderSide: _formfieldBorderSide()),
      focusedBorder: UnderlineInputBorder(borderSide: _formfieldBorderSide()),
      hintText: hintText,
      labelText: labelText,
      labelStyle: const TextStyle(color: Colors.grey),
      prefixIcon: prefixIcon != null ? Icon(prefixIcon, color: AppTheme.appTheme.primaryColorDark) : null,
    );
  }

  // String hintText = 'DD - MM - AAAA',
  static InputDecoration dateInputDecoration({
    String hintText = '',
    String labelText = 'Seleccione una fecha',
    IconData? prefixIcon = Icons.calendar_month_outlined,
  }) {
    return InputDecoration(
      enabledBorder: UnderlineInputBorder(borderSide: _formfieldBorderSide()),
      focusedBorder: UnderlineInputBorder(borderSide: _formfieldBorderSide()),
      hintText: hintText,
      labelText: labelText,
      labelStyle: const TextStyle(color: Colors.grey),
      prefixIcon: prefixIcon != null ? Icon(prefixIcon, color: AppTheme.appTheme.primaryColorDark) : null,
    );
  }
}
