import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

double? strTodouble(String? valueText) {
  // return string in double
  if (valueText == null) {
    return null;
  }
  try {
    return double.parse(valueText);
  } catch (e) {
    return null;
  }
}

String? formatCurrency(
  String currentValue,
  String digit,
) {
  // Remove any existing commas and periods
  String cleanValue = currentValue.replaceAll(',', '').replaceAll('.', '');

  // Add the new digit
  cleanValue += digit;

  // Ensure at least three digits
  while (cleanValue.length < 3) {
    cleanValue = '0' + cleanValue;
  }

  // Format the string
  String integerPart = cleanValue.substring(0, cleanValue.length - 2);
  String decimalPart = cleanValue.substring(cleanValue.length - 2);
  String formattedValue = '$integerPart,$decimalPart';

  // Remove unnecessary leading zero if integer part has more than one digit
  if (integerPart.length > 1 && integerPart.startsWith('0')) {
    formattedValue = formattedValue.replaceFirst('0', '');
  }

  return formattedValue;
}

double? parseCurrency(String formattedValue) {
  // Replace the comma with a dot for the decimal separator
  String valueWithDot = formattedValue.replaceAll(',', '.');
  return double.parse(valueWithDot);
}
