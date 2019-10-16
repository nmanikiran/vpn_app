import 'package:flutter/material.dart';

class VpnStatus extends StatelessWidget {
  final String label;
  final Color statusColor;

  VpnStatus({Key key, this.label, this.statusColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade100,
              blurRadius: 10.0,
              offset: Offset(1.0, 5.0)),
          BoxShadow(
              blurRadius: 10.0,
              color: Colors.grey.shade200,
              offset: Offset(-1.0, -1.0))
        ],
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              color: statusColor,
              borderRadius: const BorderRadius.all(Radius.circular(6.0)),
            ),
          )
        ],
      ),
    );
  }
}
