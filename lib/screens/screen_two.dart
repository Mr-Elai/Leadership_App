import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:leadership_app/theme/color_theme.dart';
import 'package:leadership_app/theme/text_theme.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  _ScreenTwoState createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        // appBar: AppBar(title: Text(''),),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Любишь быть лидером?",
                    textAlign: TextAlign.center,
                    style: TextStyles.header1,
                  ),
                  SizedBox(height: 18.0),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Дайте ответ на вопрос, чтобы пройти дальше';
                      }
                      return null;
                    },
                    minLines: 2,
                    maxLines: 5,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      hintText: 'Текст...',
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
                          if (_formKey.currentState!.validate()) {
                            // If the form is valid, display a snackbar. In the real world,
                            // you'd often call a server or save the information in a database.
                            Navigator.pushNamed(context, '/third');
                          }
                          // Navigator.pushNamed(context, '/third');
                        },
                        child: Text(
                          'Далее',
                          style: TextStyles.subtitle55,
                        )),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}

