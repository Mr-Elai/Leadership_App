import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:leadership_app/theme/color_theme.dart';
import 'package:leadership_app/theme/text_theme.dart';

class ScreenThree extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text(''),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Опрос пройден!",
                  textAlign: TextAlign.center,
                  style: TextStyles.header1,
                ),
                SizedBox(height: 18.0),
                Text(
                  "Мы рассмотрим заявку и в течение дня и если мы готовы принять вас в наш клуб, вышлем приглашение вам на почту и в приложение",
                  textAlign: TextAlign.center,
                  style: TextStyles.subtitle5,
                ),
                SizedBox(height: 18.0),
                TextFormField(
                  minLines: 1,
                  maxLines: 1,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: 'Введите ваш е-mail',
                    hintStyle: TextStyle(
                        color: Colors.grey
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),

                    ),
                  ),
                ),
                SizedBox(height: 20.0),
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
                        Navigator.pushNamed(context, '/fourth');
                      },
                      child: Text(
                        'Готово',
                        style: TextStyles.subtitle55,
                      )),
                ),
              ]),
        ),
      ),
    );
  }
}