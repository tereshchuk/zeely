import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zeely/data/const.dart';
import 'package:zeely/widgets/button_1.dart';
import 'package:zeely/widgets/step_widget.dart';

class Step4 extends StatelessWidget {
  Widget progress() {
    return StepsWidget(
        first: [true, true, true, true, false],
        last: [true, true, true, false, false]);
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
                  child: CustomScrollView(slivers: [
                    SliverPadding(padding: EdgeInsets.only(top: 40)),
                    SliverToBoxAdapter(
                      child: progress(),
                    ),
                    SliverPadding(padding: EdgeInsets.only(top: 30)),
                    SliverToBoxAdapter(
                        child: Column(children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(
                                left: 40,
                              ),
                              child: Text(
                                'Выбери структуру сайта',
                                style: styleH3,
                                textAlign: TextAlign.left,
                              ))),
                      SizedBox(height: 10),
                      Padding(
                          padding: EdgeInsets.only(left: 40, right: 40),
                          child: Text(
                            'Это поможет нам распределить блоки в нужном порядке',
                            style: styleH5Black,
                            textAlign: TextAlign.left,
                          )),
                      SizedBox(height: 21),
                    ])),
                    SliverToBoxAdapter(
                        child: Container(
                      height: 160,
                      width: double.infinity,
                      child: ListView(
                          // This next line does the trick.
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            SizedBox(width: 40),
                            Container(
                                width: 265.0,
                                height: 160,
                                // padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    color: color_gray_3,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Stack(
                                  // alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: SvgPicture.asset(
                                            "assets/block1.svg",
                                            //   color: Colors.red,
                                            height: 150,
                                            width: 265,
                                            semanticsLabel: 'A red up arrow')),
                                    GestureDetector(
                                        onTap: () {},
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                top: 20, left: 20),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment
                                                  .start, //Center Row contents horizontally,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  height: 11,
                                                  child: Icon(
                                                    Icons.radio_button_off,
                                                    color: color_gray_2,
                                                    size: 15,
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                Text('Продающий сайт',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        color: Colors.black,
                                                        height: 1.6))
                                              ],
                                            )))
                                  ],
                                )),
                            SizedBox(width: 15),
                            Container(
                                width: 265.0,
                                height: 160,
                                // padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    color: color_gray_3,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Stack(
                                  // alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: SvgPicture.asset(
                                            "assets/block2.svg",
                                            //   color: Colors.red,
                                            height: 150,
                                            width: 265,
                                            semanticsLabel: 'A red up arrow')),
                                    GestureDetector(
                                        onTap: () {},
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                top: 20, left: 20),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment
                                                  .start, //Center Row contents horizontally,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                    height: 11,
                                                    child: Icon(
                                                      Icons.radio_button_off,
                                                      color: color_gray_2,
                                                      size: 15,
                                                    )),
                                                SizedBox(width: 10),
                                                Text('Сайт-витрина',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        color: Colors.black,
                                                        height: 1.6))
                                              ],
                                            )))
                                  ],
                                )),
                            SizedBox(width: 15),
                            Container(
                                width: 265.0,
                                height: 160,
                                // padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    color: color_gray_3,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Stack(
                                  // alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: SvgPicture.asset(
                                            "assets/block3.svg",
                                            //   color: Colors.red,
                                            height: 150,
                                            width: 265,
                                            semanticsLabel: 'A red up arrow')),
                                    GestureDetector(
                                        onTap: () {},
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                top: 20, left: 20),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment
                                                  .start, //Center Row contents horizontally,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                    margin:
                                                        EdgeInsets.only(top: 3),
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          width: 1,
                                                          color: color_gray_2),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100),
                                                      color: Colors.white,
                                                    ),
                                                    padding: EdgeInsets.all(3),
                                                    child: Icon(
                                                      Icons.circle,
                                                      color: color_purple_2,
                                                      size: 7,
                                                    )),
                                                SizedBox(width: 10),
                                                Text('Корпоративный сайт',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        color: Colors.black,
                                                        height: 1.6))
                                              ],
                                            )))
                                  ],
                                )),
                            SizedBox(width: 40),
                          ]),
                    )),
                    SliverToBoxAdapter(
                        child: Column(children: [
                      SizedBox(height: 40),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(
                                left: 40,
                              ),
                              child: Text(
                                'Выбери цвет сайта',
                                style: styleH3,
                                textAlign: TextAlign.left,
                              ))),
                      SizedBox(height: 10),
                      Padding(
                          padding: EdgeInsets.only(left: 40, right: 40),
                          child: Text(
                            'Укажи в каком цветовом оформлении ты хочешь создать сайт',
                            style: styleH5Black,
                            textAlign: TextAlign.left,
                          )),
                      SizedBox(height: 20),
                    ])),
                    SliverToBoxAdapter(
                        child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 40),
                                width: double.infinity,
                                padding: EdgeInsets.only(left: 20),
                                decoration: BoxDecoration(
                                    color: color_gray_3,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Stack(children: [
                                  Positioned(
                                      right: 0,
                                      bottom: 0,
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          child: SvgPicture.asset(
                                              "assets/light.svg",
                                              //   color: Colors.red,
                                              height: 58,
                                              semanticsLabel:
                                                  'A red up arrow'))),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment
                                            .start, //Center Row contents horizontally,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                              height: 11,
                                              child: Icon(
                                                Icons.radio_button_on,
                                                color: color_purple_2,
                                                size: 15,
                                              )),
                                          SizedBox(width: 10),
                                          Text('Светлая тема',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.black,
                                                  height: 1.6))
                                        ],
                                      ))
                                ]),
                                height: 50)),
                        SizedBox(height: 10),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          width: double.infinity,
                          padding: EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                              color: color_purple_2,
                              borderRadius: BorderRadius.circular(10)),
                          height: 58,
                          child: GestureDetector(
                              onTap: () {},
                              child: Stack(children: [
                                Positioned(
                                    right: 0,
                                    bottom: 0,
                                    child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        child: SvgPicture.asset(
                                            "assets/dark.svg",
                                            //   color: Colors.red,
                                            height: 58,
                                            semanticsLabel: 'A red up arrow'))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .start, //Center Row contents horizontally,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                            height: 11,
                                            child: Icon(
                                              Icons.circle,
                                              color: Colors.white,
                                              size: 15,
                                            )),
                                        SizedBox(width: 10),
                                        Text('Темная тема',
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.white,
                                                height: 1.6))
                                      ],
                                    ))
                              ])),
                        )
                      ],
                    ))

                    /* IntlPhoneField(
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                      ),
                      initialCountryCode: 'IN',
                      onChanged: (phone) {
                        print(phone.completeNumber);
                      },
                    ),*/
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
          ),
        ));
  }
}
