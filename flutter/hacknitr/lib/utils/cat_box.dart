import 'package:flutter/material.dart';

class CatBox extends StatelessWidget {
  final Color color;
  final String icon;
  final String label;
  final double height;
  final int wave;
  final double top;

  CatBox({this.color, this.icon, this.label, this.height, this.wave, this.top});

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.only(right: 20.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(25.0),
      ),
      constraints: BoxConstraints(
        minWidth: MediaQuery.of(context).size.width / 2.75,
        maxWidth: MediaQuery.of(context).size.width / 2.75,
      ),
      child: Stack(
        children: <Widget>[
          // Positioned(
          //   top: top,
          //   right: 0.0,
          //   child: Image.asset(
          //     'assets/intersect$wave.png',
          //     height: MediaQuery.of(context).size.height / 4,
          //     width: MediaQuery.of(context).size.width / 2.75,
          //     alignment: Alignment.centerRight,
          //   ),
          // ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset(
                  icon,
                  height: height ?? MediaQuery.of(context).size.height / 10,
                ),
                Text(
                  label,
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 22.5,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
