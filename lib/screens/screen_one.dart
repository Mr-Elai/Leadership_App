import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:leadership_app/theme/color_theme.dart';
import 'package:leadership_app/theme/text_theme.dart';

class ScreenOne extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text(''),),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
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
                "Предупреждение!",
                textAlign: TextAlign.center,
                style: TextStyles.header1,
              ),
              SizedBox(height: 13.0),
              Text(
                "Для вступления в клуб знаковств вам необходимо пройти опрос",
                textAlign: TextAlign.center,
                style: TextStyles.subtitle5,
              ),
              Spacer(),
            Container(
              padding: EdgeInsets.only(
                bottom: 50,
              ),
              width: double.maxFinite,
              child: OutlinedButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(
                        vertical: 16,
                      ),
                    ),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    backgroundColor: MaterialStateProperty.all(ColorPalette.orange1),
                    foregroundColor: MaterialStateProperty.all(ColorPalette.white),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/second');
                  },
                  child: Text(
                    'Начать',
                    style: TextStyles.subtitle55,
                  )),
            ),
          ]),
        ),
      ),
    );
  }
}
