import 'package:flutter/material.dart';
import 'file:///C:/Users/moham/AndroidStudioProjects/Sidebar_Menu/sidebar_menu/lib/widgets/dashboard/dashboard.dart';
import 'file:///C:/Users/moham/AndroidStudioProjects/Sidebar_Menu/sidebar_menu/lib/widgets/menu/menu.dart';

class MenuDashboardScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4A4A58),
      body: Stack(
        children: <Widget>[
          Menu(),
          DashBoard(),
        ],
      ),
    );
  }
}
