import 'package:flutter/material.dart';

class ServicesListCard extends StatelessWidget {
  final String name;

  ServicesListCard({this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF2C3E50),
        borderRadius: BorderRadius.all(
          Radius.circular(
            17,
          ),
        ),
      ),
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 13.5,
          vertical: MediaQuery.of(context).size.height / 27),
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width / 10,
        right: MediaQuery.of(context).size.height / 30,
      ),
      height: MediaQuery.of(context).size.height / 10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            name,
            style: TextStyle(
              fontSize: 21,
              color: Colors.white,
            ),
          ),
          Image.asset(
            'assets/right_arrow.png',
            height: 26,
          ),
        ],
      ),
    );
  }
}
