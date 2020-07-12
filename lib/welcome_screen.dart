//import 'package:Appointment_App/login_screens/Appointer.dart';
import 'package:Appointment_App/login_screens/Appointee.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;
  void loginPageAppointer(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return AppointeeScreen();
    }));
  }

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );
    animation = CurvedAnimation(parent: controller, curve: Curves.decelerate);

    controller.forward();
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.dispose();
      }
    });

    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () => loginPageAppointer(context),
        backgroundColor: Colors.green,
        child: Text('+'),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Transform.rotate(
                      angle: animation.value * 6.3,
                      child: Image(
                        image: AssetImage('assets/images/logopng.png'),
                      ),
                    ),
                    height: MediaQuery.of(context).size.height * 0.15,
                  ),
                ),
                // TypewriterAnimatedTextKit(
                //   isRepeatingAnimation: true,
                //   totalRepeatCount: 2,
                //   speed: Duration(milliseconds: 600),
                //   text: ['Appoint Meet'],
                //   textStyle: TextStyle(
                //     fontSize: 34.0,
                //     fontWeight: FontWeight.w900,
                //   ),
                // ),
                Text(
                  "APPOINT",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(
                  width: 20.0,
                  height: 100.0,
                ),
                RotateAnimatedTextKit(
                  onTap: () {
                    print("Tap Event");
                  },
                  isRepeatingAnimation: true,

                  //totalRepeatCount: 3,
                  text: [
                    "MEET",
                    "ME",
                    "YOU",
                    "ALL",
                  ],
                  // alignment: Alignment(1.0, 0.5),
                  textStyle: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                    fontWeight: FontWeight.w900,
                  ),
                ),

                //      NeumorphicText(
                // "I love flutter",
                // style: NeumorphicStyle(
                //   depth: 4,  //customize depth here
                //   color: Colors.white, //customize color here
                // ),
                // textStyle: NeumorphicTextStyle(
                //   fontSize: 18, //customize size here
                //   // AND others usual text style properties (fontFamily, fontWeight, ...)
                // ),
                // ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
          ],
        ),
      ),
    );
  }
}
