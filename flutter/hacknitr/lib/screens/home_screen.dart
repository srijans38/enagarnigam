import 'package:flutter/material.dart';
import 'package:hacknitr/utils/cat_box.dart';
import 'package:hacknitr/utils/small_button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECF0F1),
      body: Container(
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 150.0,
              child: Row(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15.0),
                        bottomRight: Radius.circular(15.0),
                      ),
                      color: Color(0xFFBDC3C7),
                    ),
                    constraints: BoxConstraints(
                      minHeight: 45.0,
                      maxHeight: 45.0,
                      minWidth: MediaQuery.of(context).size.width / 1.3,
                      maxWidth: MediaQuery.of(context).size.width / 1.3,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 13.5),
                      child: TextField(
                        style: TextStyle(fontFamily: 'Raleway'),
                        decoration: InputDecoration.collapsed(
                          hintText: 'Search for something...',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 27,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        bottomLeft: Radius.circular(15.0),
                      ),
                      color: Color(0xFFE7A063),
                    ),
                    constraints: BoxConstraints(
                      minHeight: 45.0,
                      maxHeight: 45.0,
                      minWidth: MediaQuery.of(context).size.width / 4.9,
                      maxWidth: MediaQuery.of(context).size.width / 4.9,
                    ),
                    child: Icon(
                      Icons.search,
                      size: 20.0,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  MediaQuery.of(context).size.width / 13.5,
                  MediaQuery.of(context).size.height / 14.5,
                  MediaQuery.of(context).size.width / 13.5,
                  10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'eNagarNigam',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: Color(0xFFBDC3C7),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Icon(
                            Icons.person_outline,
                            size: 30.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 6),
                  Text(
                    'Categories',
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 2.85),
                  Text(
                    'More',
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 25),
                  Row(
                    children: <Widget>[
                      SmallButton(),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 2.5,
              child: Container(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 13.5),
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  //shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    CatBox(
                      color: Color(0xFFE7A063),
                      icon: 'assets/services_icon.png',
                      label: 'Services',
                      wave: 1,
                      top: 0.0,
                    ),
                    CatBox(
                      color: Color(0xFFBFB2EB),
                      icon: 'assets/explore_icon.png',
                      label: 'Explore',
                      wave: 2,
                      top: 0.0,
                    ),
                    CatBox(
                      color: Color(0xFF9BEB9F),
                      icon: 'assets/status_icon.png',
                      label: 'Status',
                      wave: 3,
                      top: -MediaQuery.of(context).size.height / 15,
                    ),
                    CatBox(
                      color: Color(0xFF78D3F4),
                      icon: 'assets/payments_icon.png',
                      label: 'Payments',
                      wave: 4,
                      top: MediaQuery.of(context).size.height / 11,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
