//import 'package:Appointment_App/Appointer_form.dart';
import 'package:Appointment_App/login_screens/login_console_screen.dart';
import 'package:flutter/material.dart';
import 'package:Appointment_App/welcome_screen.dart';
import 'package:Appointment_App/login_screens/Appointer_signup.dart';
import 'package:Appointment_App/login_screens/Appointee_signup.dart';
import 'package:Appointment_App/login_screens/login/Appointer_login.dart';
//import 'package:Appointment_App/login_screens/login/Appointee_login.dart';

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
        'Appointer_login': (context) => AppointerLoginScreen(),
        'login_console': (context) => LoginConsoleScreen(),
        //'AppointerSignup': (context) => AuthForm(),
      },
    );
  }
}
