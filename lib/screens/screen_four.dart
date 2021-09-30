import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:leadership_app/theme/color_theme.dart';
import 'package:leadership_app/theme/text_theme.dart';

class ScreenFour extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text(''),),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Spacer(),
                  Image.asset(
                    'assets/images/love.png',
                    height: 200.0,
                    width: 200.0,
                  ),
                  SizedBox(height: 26.0),
                  Text(
                    "E-mail отправлен!",
                    style: TextStyles.header1,
                  ),
                  SizedBox(height: 13.0),
                  Text(
                    "Ожидайте приглашения в клуб",
                    style: TextStyles.subtitle5,
                  ),
                  Spacer(),
                ]),
          ),
        ),
      ),
    );
  }
}
