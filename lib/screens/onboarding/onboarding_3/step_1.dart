import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zeely/data/const.dart';
import 'package:zeely/widgets/button_1.dart';
import 'package:zeely/widgets/step_widget.dart';

class Step1 extends StatelessWidget {
  Widget progress() {
    return StepsWidget(
        first: [true, false, false, false, false],
        last: [false, false, false, false, false]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [color_purple_2, color_purple_3],
            )),
            child: SafeArea(
                top: true,
                bottom: false,
                child: Container(
                  margin: EdgeInsets.only(top: 38),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        topLeft: Radius.circular(15),
                      )),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 40),
                      progress(),
                      SizedBox(height: 30),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            'Как мы можем к тебе обращаться? ',
                            style: styleH3,
                            textAlign: TextAlign.left,
                          )),
                      SizedBox(height: 20),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          child: TextField(
                            autofocus: true,
                            style: TextStyle(fontSize: 13, color: Colors.black),
                            decoration: InputDecoration(
                                hoverColor: Colors.black,
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: color_gray_1),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: color_gray_1),
                                ),
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: color_gray_1),
                                ),
                                fillColor: Colors.black,
                                hintText: 'Твое имя',
                                contentPadding:
                                    EdgeInsets.only(bottom: 12, top: 20),
                                isDense: true,
                                hintStyle: TextStyle(
                                    fontSize: 13, color: color_gray_2),
                                focusColor: Colors.black),
                          ))
                    ],
                  ),
                ))),
        bottomNavigationBar: Container(
            color: Colors.white,
            child: SafeArea(
              child: Container(
                  height: 113,
                  child: Column(children: [
                    /*   Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  height: 50,
                  child: Center(child: Text('Далее', style: styleButton)),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: color_green_1 //color_gray_1,
                      ),
                  width: double.infinity,
                ),*/

                    Button1(text: "Далее", active: true, hght: 50),
                    SizedBox(height: 16),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 33.5),
                        child: Center(
                            child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: 'Нажимая «Далее» ты принимаешь ',
                            style: styleH6grey,
                            children: const <TextSpan>[
                              TextSpan(
                                  text: 'Пользовательское соглашение',
                                  style: styleLinkSmall),
                              TextSpan(text: ' и', style: styleH6grey),
                              TextSpan(
                                  text: ' Политику конфиденциальности Zeely',
                                  style: styleLinkSmall),
                            ],
                          ),
                        ))),
                  ])),
            )));
  }
}
