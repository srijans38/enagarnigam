import 'package:flutter/material.dart';

class SmallButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RawMaterialButton(
          onPressed: () {},
          elevation: 5.0,
          fillColor: Color(0xFFECF0F1),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          constraints: BoxConstraints(
            maxHeight: 100.0,
            minHeight: 100.0,
            maxWidth: 100.0,
            minWidth: 100.0,
          ),
          child: Image.asset(
            'assets/settings_icon.png',
            height: MediaQuery.of(context).size.height / 15,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 60,
        ),
        Text(
          'Settings',
          style: TextStyle(
            fontFamily: 'Raleway',
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
