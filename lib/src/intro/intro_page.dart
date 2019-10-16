import 'package:flutter/material.dart';
import 'package:vpn_app/src/Constants.dart';
import 'package:vpn_app/src/intro/Carousel.dart';
import 'package:vpn_app/src/vpn/vpn_page.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  List<Map<String, dynamic>> items = Constants.slides;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Expanded(
            child: Carousel(items: items),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 60.0),
            child: MaterialButton(
              minWidth: 180.0,
              padding: EdgeInsets.symmetric(vertical: 15.0),
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0)),
              color: Colors.blueAccent,
              textColor: Colors.white,
              onPressed: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => VpnPage()))
              },
              child: Text('GET STARTED'),
            ),
          )
        ],
      ),
    );
  }
}
