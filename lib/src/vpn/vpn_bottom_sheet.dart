import 'package:flutter/material.dart';

class VpnBottomSheet extends StatelessWidget {
  final List servers;
  final int selectedIndex;
  final Function onServerTap;

  const VpnBottomSheet(
      {Key key, this.servers, this.selectedIndex, this.onServerTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(blurRadius: 1.0, offset: Offset(1.0, 1.0))],
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25.0), topRight: Radius.circular(25.0)),
      ),
      padding: const EdgeInsets.all(12.0),
      height: MediaQuery.of(context).size.height * 0.5,
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Pick Your Server',
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: servers.length,
              itemBuilder: (BuildContext context, int index) => ListTile(
                onTap: () => onServerTap(index),
                dense: true,
                title: Text(
                  servers[index]['name'],
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
                ),
                leading: CircleAvatar(
                  radius: 15.0,
                  backgroundImage: AssetImage(servers[index]['icon']),
                ),
                trailing: Icon(
                  selectedIndex == index
                      ? Icons.check_circle
                      : Icons.panorama_fish_eye,
                  color: selectedIndex == index ? Theme.of(context).primaryColor : Colors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
