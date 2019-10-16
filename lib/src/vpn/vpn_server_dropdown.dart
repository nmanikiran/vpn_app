import 'package:flutter/material.dart';
import 'package:vpn_app/src/Constants.dart';
import 'package:vpn_app/src/vpn/vpn_bottom_sheet.dart';

class VpnServerDropDown extends StatefulWidget {
  @override
  _VpnServerDropDownState createState() => _VpnServerDropDownState();
}

class _VpnServerDropDownState extends State<VpnServerDropDown> {
  int selectedIndex = 0;

  final List<Map<String, dynamic>> servers = Constants.servers;

  onServerTap(index) {
    setState(() {
      selectedIndex = index;
    });
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(blurRadius: 1.0, offset: Offset(1.0, 1.0))],
      ),
      padding: EdgeInsets.all(18.0),
      alignment: Alignment.center,
      child: InkWell(
        onTap: () {
          showBottomSheet(
              backgroundColor: Colors.white,
              context: context,
              builder: (context) {
                return VpnBottomSheet(
                    servers: servers,
                    selectedIndex: selectedIndex,
                    onServerTap: onServerTap);
              });
        },
        child: Center(
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            CircleAvatar(
              radius: 12.0,
              backgroundImage: AssetImage(
                servers[selectedIndex]['icon'],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                servers[selectedIndex]['name'],
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0),
              ),
            ),
            Icon(Icons.keyboard_arrow_down)
          ]),
        ),
      ),
    );
  }
}
