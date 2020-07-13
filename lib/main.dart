import 'package:flutter/material.dart';
import 'package:Appointment_App/welcome_screen.dart';
import 'package:Appointment_App/login_screens/Appointer.dart';
import 'package:Appointment_App/login_screens/Appointee.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WelcomeScreen(),
      routes: {
        'Appointer': (context) => AppointerScreen(),
        'Appointee': (context) => AppointeeScreen(),
      },
    );
  }
}
