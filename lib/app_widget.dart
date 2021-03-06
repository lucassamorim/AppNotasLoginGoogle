import 'package:flutter/material.dart';
import 'package:notes/create_note/create_note_page.dart';
import 'package:notes/home/home_page.dart';
import 'package:notes/login/login_page.dart';
import 'package:notes/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      debugShowCheckedModeBanner: false,
      title: 'Notes',
      initialRoute: '/splash',
      routes: {
        '/home': (context) => HomePage(),
        '/create-note': (context) => CreateNotePage(),
        '/splash': (context) => SplashPage(),
        '/login': (context) => LoginPage()
      },
    );
  }
}
