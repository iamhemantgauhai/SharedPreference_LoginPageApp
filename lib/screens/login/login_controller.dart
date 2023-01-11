import 'package:flutter/material.dart';
TextEditingController employeeID = TextEditingController();
TextEditingController password = TextEditingController();
RegExp regex =
    RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
var employeeIDValidate = (currentValue) {
  var nonNullValue = currentValue ?? '';
  if (nonNullValue.isEmpty) {
    return ("Employee ID is empty");
  }
  if (nonNullValue.length != 6) {
    return ("Must contain 6 digit");
  }
  return null;
};
var passwordValidate = (passCurrentValue) {
  var passNonNullValue = passCurrentValue ?? "";
  if (passNonNullValue.isEmpty) {
    return ("Password is empty");
  } else if (passNonNullValue.length < 9) {
    return ("Must be 8 characters");
  } else if (!regex.hasMatch(passNonNullValue)) {
    return ("Must contain Upper, Lower, Digit and Special Character");
  }
  return null;
};