import 'package:flutter/material.dart';
import 'package:hacknitr/utils/services_list_card.dart';

class ServicesListScreen extends StatefulWidget {
  @override
  _ServicesListScreenState createState() => _ServicesListScreenState();
}

class _ServicesListScreenState extends State<ServicesListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/services_list_background_image.png',
              ),
              alignment: Alignment.topCenter,
              fit: BoxFit.fill,
            ),
          ),
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          padding: EdgeInsets.all(0),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / 13.5,
                    vertical: MediaQuery.of(context).size.height / 19),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Services',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Image.asset(
                      'assets/services_icon.png',
                      height: MediaQuery.of(context).size.height / 14,
                    )
                  ],
                ),
              ),
              Container(
                child: ListView(
                  padding: EdgeInsets.all(8),
                  children: <Widget>[
                    ServicesListCard(
                      name: 'Litter Collection',
                    ),
                    ServicesListCard(
                      name: 'Marriage Certificate',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
