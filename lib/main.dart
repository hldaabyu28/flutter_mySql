import 'package:flutter/material.dart';
import 'package:test_udacoding/screens/home_page.dart';
import 'package:test_udacoding/screens/login.dart';
import 'package:test_udacoding/screens/profile.dart';
import 'package:test_udacoding/screens/register.dart';
import 'package:test_udacoding/screens/splash_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/login': (BuildContext context) => LoginPage(),
        '/register': (BuildContext context) => RegisterPage(),
        '/home': (BuildContext context) => HomePage(),
        '/profile' : (BuildContext context) => ProfilePage(),
      }
    );

  }
}
