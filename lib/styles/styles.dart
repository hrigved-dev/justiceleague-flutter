import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTheme {

  static const TextStyle display1 = TextStyle(
    fontFamily: 'WorkSans',
    color: Colors.black,
    fontSize: 38,
    fontWeight: FontWeight.w600,
    letterSpacing: 1.2,
  );

  static const TextStyle display2 = TextStyle(
  fontFamily: 'WorkSans',
  color: Colors.black,
  fontSize: 32,
  fontWeight: FontWeight.normal,
  letterSpacing: 1.1,
  );

  static final TextStyle heading = TextStyle(
    fontFamily: 'WorkSans',
    fontWeight: FontWeight.w900,
    fontSize: 40,
    color: Colors.white.withOpacity(0.8),
    letterSpacing: 1.2,
  );

  static final TextStyle subHeading = TextStyle(
    inherit: true,
    fontSize: 20,
    fontFamily: 'WorkSans',
    fontWeight: FontWeight.w500,
    color: Colors.white.withOpacity(0.8),
  );
}