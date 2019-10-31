import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vpn_app/src/intro/intro_page.dart';

void main() async {
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(VpnApp());
}

class VpnApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VPN',
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(elevation: 0.0, color: Colors.white)),
      home: IntroPage(),
    );
  }
}
