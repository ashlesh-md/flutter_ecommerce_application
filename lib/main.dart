import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/routes.dart';
import 'package:shop_app/screens/profile/profile_screen.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';
import 'package:shop_app/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      home: AnimatedSplashScreen(
        backgroundColor: Colors.grey.shade200,
        splash: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/logo.png',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('TOKOTO',
                  style: TextStyle(
                      color: Colors.orange.shade700,
                      fontSize: 24,
                      fontWeight: FontWeight.bold)),
            )
          ],
        ),
        splashIconSize: 250,
        nextScreen: SplashScreen(),
        splashTransition: SplashTransition.scaleTransition,
        duration: 5000,
      ),
      routes: routes,
    );
  }
}
