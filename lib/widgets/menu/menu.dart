import 'package:flutter/material.dart';

class Menu extends StatelessWidget {

  Widget _buildRow(IconData icon, String text) {
    return Row(
      children: <Widget>[
        Icon(icon, color: Colors.white,),
        SizedBox(width: 5,),
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
        )
      ],
    );

  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildRow(
              Icons.dashboard,
              'Dashbord',
            ),
            SizedBox(height: 10),
            _buildRow(
              Icons.message,
              'Messages',
            ),
            SizedBox(height: 10),
            _buildRow(
              Icons.attach_money,
              'Utility Bills',
            ),
            SizedBox(height: 10),
            _buildRow(
              Icons.compare_arrows,
              'Funds Transfer',
            ),
            SizedBox(height: 10),
            _buildRow(
              Icons.branding_watermark,
              'Branshes',
            ),
          ],
        ),
      ),
    );
  }
}
