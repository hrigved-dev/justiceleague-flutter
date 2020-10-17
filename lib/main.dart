import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:justice_league/screens/character_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Justice League',
        theme: ThemeData(
          primaryColor: Colors.white,
          canvasColor: Colors.white,
          appBarTheme: AppBarTheme(
            elevation: 0.0,
            color: Colors.white,
          ),
        ),
        home: CharacterScreen(),
      ),
    );
  }
}
