import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sidebarmenu/widgets/dashboard/page_view.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard>
    with SingleTickerProviderStateMixin {

  bool _isCollapsed = true;
  AnimationController _controller;
  Animation<double> _scaleAnimation;
  Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 400),
    );
    _scaleAnimation = Tween<double>(
      begin: 1,
      end: 0.7,
    ).animate(_controller);
    _slideAnimation = Tween<Offset>(
      begin: Offset(-1, 0),
      end: Offset(0, 0),
    ).animate(_controller);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;

    return AnimatedPositioned(
      duration: Duration(milliseconds: 400),
      top: 0,
      //_isCollapsed ? 0 : 0.2 * mediaQuery.height,
      bottom: 0,
      //_isCollapsed ? 0 : 0.2 * mediaQuery.width,
      left: _isCollapsed ? 0 : 0.6 * mediaQuery.width,
      right: _isCollapsed ? 0 : -0.4 * mediaQuery.width,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Material(
          animationDuration: Duration(milliseconds: 400),
          borderRadius: BorderRadius.all(Radius.circular(40)),
          elevation: 8,
          color: Color(0xFF4A4A58),
          child: Container(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 50),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (_isCollapsed)
                            _controller.forward();
                          else
                            _controller.reverse();
                          _isCollapsed = !_isCollapsed;
                        });
                      },
                      child: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'My Card',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                    Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(height: 50),
                PageViewContent(),
              ],
            ),
          ),
        ),
      ),
    );
  }



}
