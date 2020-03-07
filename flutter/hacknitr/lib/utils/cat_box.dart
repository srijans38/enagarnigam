import 'package:flutter/material.dart';

class CatBox extends StatelessWidget {
  final Color color;

  CatBox({this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.only(right: 20.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(25.0),
      ),
      constraints: BoxConstraints(
        minWidth: MediaQuery.of(context).size.width / 2.75,
        maxWidth: MediaQuery.of(context).size.width / 2.75,
      ),
    );
  }
}
