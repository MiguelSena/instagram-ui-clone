import 'package:flutter/material.dart';
import 'package:instagram/screens/home.dart';

void main() => runApp(InstagramHome());

class InstagramHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        buttonColor: Colors.black,
      ),
      home: App()
    );
  }
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

