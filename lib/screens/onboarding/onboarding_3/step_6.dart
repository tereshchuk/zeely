import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zeely/data/const.dart';
import 'package:zeely/widgets/button_1.dart';
import 'package:zeely/widgets/step_widget.dart';

class Step6 extends StatelessWidget {
  Widget progress() {
    return StepsWidget(
        first: [true, true, true, true, true],
        last: [true, true, true, true, false]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
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
              //SliverPadding(padding: EdgeInsets.only(top: 30)),
              SizedBox(height: 30),
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Создаём дизайн сайта",
                            textAlign: TextAlign.center,
                            style: styleH1black,
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 70, right: 70, top: 10, bottom: 70),
                              child: Text(
                                "Прорабатываем структуру сайта и порядок блоков",
                                textAlign: TextAlign.center,
                                style: styleH5Black,
                              )),
                        ]),
                  )),
            ]),
          )),
    );
  }
}
