import 'package:flutter/material.dart';
import 'package:vpn_app/src/app_assets.dart';
import 'package:vpn_app/src/vpn/vpn_server_dropdown.dart';
import 'package:vpn_app/src/vpn/vpn_status_widget.dart';

class VpnPage extends StatefulWidget {
  @override
  _VpnPageState createState() => _VpnPageState();
}

class _VpnPageState extends State<VpnPage> {
  bool isConnected = false;
  String buttonText = 'Connect Now';
  String statusLabel = 'Disconnected';
  Color statusColor = Colors.grey;

  onConnect() {
    setState(() {
      isConnected = !isConnected;
      buttonText = isConnected ? 'Disconnect' : 'Connect Now';
      statusLabel = isConnected ? 'Connected' : 'Disconnected';
      statusColor = isConnected ? Colors.green : Colors.grey;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'VPN',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Flexible(
                    child:
                        VpnStatus(label: statusLabel, statusColor: statusColor),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Image.asset(isConnected ? AppAssets.online : AppAssets.offline),
                  SizedBox(
                    height: 20.0,
                  ),
                  MaterialButton(
                    minWidth: 200.0,
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                        side: isConnected
                            ? BorderSide(color: Colors.black)
                            : BorderSide(color: Colors.transparent)),
                    color: isConnected ? Colors.white : Theme.of(context).primaryColor,
                    textColor: isConnected ? Colors.black : Colors.white,
                    onPressed: () => {onConnect()},
                    child: Text(buttonText.toUpperCase()),
                  ),
                ],
              ),
            ),
            VpnServerDropDown(),
          ],
        ),
      ),
    );
  }
}
