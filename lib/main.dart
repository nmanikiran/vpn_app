import 'package:flutter/material.dart';
import 'package:vpn_app/src/intro/intro_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VPN',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: IntroPage(),
    );
  }
}
