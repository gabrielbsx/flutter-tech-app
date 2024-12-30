import 'package:fintech/application/app_controller.dart';
import 'package:fintech/screens/home_screen.dart';
import 'package:fintech/screens/login_screen.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({super.key, this.title = 'Fintech'});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          title: title,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.deepPurple,
              titleTextStyle: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w600,
                fontFamily: 'Roboto',
                letterSpacing: 1.0,
              ),
            ),
            brightness: AppController.instance.isDarkTheme
                ? Brightness.dark
                : Brightness.light,
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => LoginScreen(),
            '/home': (context) => HomeScreen(),
          },
        );
      },
    );
  }
}
