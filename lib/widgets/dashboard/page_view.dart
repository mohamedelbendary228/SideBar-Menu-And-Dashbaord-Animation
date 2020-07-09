import 'package:flutter/material.dart';

class PageViewContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: PageView(
        controller: PageController(viewportFraction: 0.8),
        scrollDirection: Axis.horizontal,
        pageSnapping: true,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            color: Colors.redAccent,
            width: 100,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            color: Colors.blueAccent,
            width: 100,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            color: Colors.greenAccent,
            width: 100,
          )
        ],
      ),
    );
  }
}
