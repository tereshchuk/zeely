import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zeely/data/const.dart';
import 'package:zeely/widgets/button_1.dart';
import 'package:zeely/widgets/step_widget.dart';

class Step5 extends StatelessWidget {
  Widget progress() {
    return StepsWidget(
        first: [true, true, true, true, true],
        last: [true, true, true, true, false]);
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
                child: Column(children: [
                  Padding(padding: EdgeInsets.only(top: 40)),
                  progress(),
                  //SliverPadding(padding: EdgeInsets.only(top: 30)),
                  SizedBox(height: 30),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(
                            left: 40,
                          ),
                          child: Text(
                            'Придумай адрес сайта',
                            style: styleH3,
                            textAlign: TextAlign.left,
                          ))),
                  SizedBox(height: 10),
                  Padding(
                      padding: EdgeInsets.only(left: 40, right: 40),
                      child: Text(
                        'По этой ссылке твою компанию будут находить потенциальные клиенты',
                        style: styleH5Black,
                        textAlign: TextAlign.left,
                      )),
                  SizedBox(height: 21),

                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Container(
                          child: TextField(
                        autofocus: true,

                        // textAlign: TextAlign.center,
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
                            contentPadding:
                                EdgeInsets.only(bottom: 12, top: 20),
                            isDense: true,
                            labelText: "Адрес сайта",
                            labelStyle:
                                TextStyle(height: 0.1, color: color_gray_2),
                            //  counterText: "без знаков и пробелов",
                            helperText: "без знаков и пробелов",
                            helperStyle: TextStyle(
                                color: color_gray_2, fontSize: 8, height: 1),
                            suffixIcon: Padding(
                                padding: EdgeInsets.only(
                                    left: 5, bottom: 0, top: 28),
                                child: Text(
                                  '.zeely.me',
                                  style: TextStyle(
                                      fontSize: 13, color: color_gray_2),
                                )),
                            hintStyle:
                                TextStyle(fontSize: 13, color: color_gray_2),
                            focusColor: Colors.black),
                      ))),
                ]),
              ))),
      bottomNavigationBar: Container(
          color: Colors.white,
          child: SafeArea(
            child:
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
          )),
    );
  }
}
