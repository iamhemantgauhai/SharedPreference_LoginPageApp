import 'package:flutter/material.dart';

TextEditingController employeeID = TextEditingController();
TextEditingController password = TextEditingController();

var regex =
RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
var employeeIDValidate = (currentValue) {
  var nonNullValue = currentValue ?? '';
  if (nonNullValue.isEmpty) {}
  if (nonNullValue.length != 6) {}
  return null;
};

var passwordValidate = (passCurrentValue) {
  var passNonNullValue = passCurrentValue ?? "";
  if (passNonNullValue.isEmpty) {
  } else if (passNonNullValue.length < 9) {
  } else if (!regex.hasMatch(passNonNullValue)) {}
  return null;
};
