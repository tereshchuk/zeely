import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:zeely/data/const.dart';
import 'package:zeely/widgets/button_1.dart';
import 'package:zeely/widgets/step_widget.dart';

class Step3 extends StatelessWidget {
  Widget progress() {
    return StepsWidget(
        first: [true, true, true, false, false],
        last: [true, true, false, false, false]);
  }

  Widget drgbl() {
    return DraggableScrollableSheet(
      initialChildSize: 0.35,
      maxChildSize: 0.8,
      minChildSize: 0.25,
      expand: false,
      builder: (BuildContext context, ScrollController scrollController) {
        return BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12)),
                  color: Colors.white,
                ),
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    child: SingleChildScrollView(
                        controller: scrollController,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 16, bottom: 20),
                              width: 50,
                              height: 3,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                                color: Color.fromRGBO(143, 164, 178, 0.2),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment
                                  .start, //Center Row contents horizontally,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.info_outline,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                SizedBox(width: 10),
                                Text('Подробнее о выборе',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2)),
                              ],
                            ),
                            SizedBox(height: 22),
                            RichText(
                              textAlign: TextAlign.left,
                              softWrap: false,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 10,
                              text: TextSpan(
                                text: 'Товары – выбери эту категорию, если ты ',
                                style: TextStyle(
                                    height: 1.38,
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal),
                                children: const <TextSpan>[
                                  TextSpan(
                                      text:
                                          'занимаешься продажей или производством товаров ',
                                      style: TextStyle(
                                          height: 1.38,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                      text:
                                          '  и хочешь развивать свой бизнес online',
                                      style: TextStyle(
                                          height: 1.38,
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal)),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            RichText(
                              textAlign: TextAlign.left,
                              softWrap: false,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 10,
                              text: TextSpan(
                                text:
                                    'Услуги – выбери эту категорию, если твоя компания ',
                                style: TextStyle(
                                    height: 1.38,
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal),
                                children: const <TextSpan>[
                                  TextSpan(
                                      text:
                                          'предоставляет услуги и нацелена на привлечение новых клиентов ',
                                      style: TextStyle(
                                          height: 1.38,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                      text: '  через нашу платформу',
                                      style: TextStyle(
                                          height: 1.38,
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal)),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            RichText(
                              textAlign: TextAlign.left,
                              softWrap: false,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 10,
                              text: TextSpan(
                                text:
                                    'Продукт – выбери эту категорию, если ты ',
                                style: TextStyle(
                                    height: 1.38,
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal),
                                children: const <TextSpan>[
                                  TextSpan(
                                      text:
                                          'занимаешься разработкой или продажей ',
                                      style: TextStyle(
                                          height: 1.38,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                      text:
                                          '  информационных, цифровых, творческих и других видов продуктов',
                                      style: TextStyle(
                                          height: 1.38,
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal)),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            RichText(
                              textAlign: TextAlign.left,
                              softWrap: false,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 10,
                              text: TextSpan(
                                text:
                                    'Другое – выбери эту категорию, если тебе ',
                                style: TextStyle(
                                    height: 1.38,
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal),
                                children: const <TextSpan>[
                                  TextSpan(
                                      text: 'не подходит ни один из вариантов',
                                      style: TextStyle(
                                          height: 1.38,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ],
                        )))));
      },
    );
  }

  void _show(context) {
    showModalBottomSheet<void>(
        context: context,
        isScrollControlled: true,
        enableDrag: false,
        backgroundColor: Color.fromRGBO(5, 20, 55, 1).withOpacity(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
        ),
        builder: (context) {
          return drgbl();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                child: SingleChildScrollView(
                    child: Column(
                  children: <Widget>[
                    SizedBox(height: 40),
                    progress(),
                    SizedBox(height: 30),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(
                              left: 40,
                            ),
                            child: Text(
                              'Выбери вид своей деятельности',
                              style: styleH3,
                              textAlign: TextAlign.left,
                            ))),
                    SizedBox(height: 10),
                    Padding(
                        padding: EdgeInsets.only(left: 40, right: 40),
                        child: Text(
                          'Это поможет подобрать подходящую структуру и дизайн для твоего сайта',
                          style: styleH5Black,
                          textAlign: TextAlign.left,
                        )),
                    SizedBox(height: 21),
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

                    Container(
                        height: 331,
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 40),
                        child: Row(
                          children: [
                            Expanded(
                                child: Column(
                              children: [
                                Expanded(
                                    child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(7.0),
                                        child: Stack(children: [
                                          /* Image.network(
                                            "https://via.placeholder.com/350x150",
                                            height: double.infinity,
                                            fit: BoxFit.cover,
                                          ),*/

                                          Image.asset(
                                            image_step3_1,
                                            fit: BoxFit.cover,
                                            width: double.infinity,
                                            height: double.infinity,
                                          ),
                                          Positioned(
                                              bottom: 0,
                                              child: Container(
                                                  height: 70,
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  decoration: BoxDecoration(
                                                      gradient: LinearGradient(
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter,
                                                    colors: [
                                                      Colors.black
                                                          .withOpacity(0),
                                                      Colors.black
                                                          .withOpacity(0.5),
                                                    ],
                                                  )))),
                                          Positioned(
                                              top: 10,
                                              left: 10,
                                              child: Icon(
                                                Icons.radio_button_off,
                                                color: Colors.white,
                                                size: 15,
                                              )),
                                          Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 10),
                                                    child: Text(
                                                      'Товары',
                                                      style: TextStyle(
                                                          fontSize: 13,
                                                          color: Colors.white,
                                                          height: 1.46),
                                                    )),
                                                SizedBox(height: 3),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 10, right: 10),
                                                    child: Text(
                                                        'Производство или продажа товаров',
                                                        style: TextStyle(
                                                            fontSize: 9,
                                                            color: Colors.white,
                                                            height: 1.38))),
                                                SizedBox(height: 15)
                                              ])
                                        ]))),
                                SizedBox(height: 5),
                                Expanded(
                                    child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(7.0),
                                        child: Stack(children: [
                                          Image.asset(
                                            image_step3_3,
                                            fit: BoxFit.cover,
                                            height: double.infinity,
                                            width: double.infinity,
                                          ),
                                          Positioned(
                                              bottom: 0,
                                              child: Container(
                                                  height: 70,
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  decoration: BoxDecoration(
                                                      gradient: LinearGradient(
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter,
                                                    colors: [
                                                      Colors.black
                                                          .withOpacity(0),
                                                      Colors.black
                                                          .withOpacity(0.5),
                                                    ],
                                                  )))),
                                          Positioned(
                                              top: 10,
                                              left: 10,
                                              child: Icon(
                                                Icons.radio_button_off,
                                                color: Colors.white,
                                                size: 15,
                                              )),
                                          Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 10),
                                                    child: Text(
                                                      'Товары',
                                                      style: TextStyle(
                                                          fontSize: 13,
                                                          color: Colors.white,
                                                          height: 1.46),
                                                    )),
                                                SizedBox(height: 3),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 10, right: 10),
                                                    child: Text(
                                                        'Производство или продажа товаров',
                                                        style: TextStyle(
                                                            fontSize: 9,
                                                            color: Colors.white,
                                                            height: 1.38))),
                                                SizedBox(height: 15)
                                              ])
                                        ])))
                              ],
                            )),
                            SizedBox(width: 5),
                            Expanded(
                                child: Column(
                              children: [
                                Expanded(
                                    flex: 5,
                                    child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(7.0),
                                        child: Stack(children: [
                                          Image.asset(
                                            image_step3_2,
                                            fit: BoxFit.cover,
                                            height: double.infinity,
                                            width: double.infinity,
                                          ),
                                          Positioned(
                                              bottom: 0,
                                              child: Container(
                                                  height: 70,
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  decoration: BoxDecoration(
                                                      gradient: LinearGradient(
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter,
                                                    colors: [
                                                      Colors.black
                                                          .withOpacity(0),
                                                      Colors.black
                                                          .withOpacity(0.5),
                                                    ],
                                                  )))),
                                          Positioned(
                                              top: 10,
                                              left: 10,
                                              child: Container(
                                                  decoration: BoxDecoration(
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
                                                  ))),
                                          Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 10),
                                                    child: Text(
                                                      'Товары',
                                                      style: TextStyle(
                                                          fontSize: 13,
                                                          color: Colors.white,
                                                          height: 1.46),
                                                    )),
                                                SizedBox(height: 3),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 10, right: 10),
                                                    child: Text(
                                                        'Производство или продажа товаров',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 9,
                                                            height: 1.38))),
                                                SizedBox(height: 15)
                                              ])
                                        ]))),
                                SizedBox(height: 5),
                                Expanded(
                                    flex: 3,
                                    child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(7.0),
                                        child: Stack(children: [
                                          Image.asset(
                                            image_step3_4,
                                            fit: BoxFit.cover,
                                            height: double.infinity,
                                            width: double.infinity,
                                          ),
                                          Positioned(
                                              bottom: 0,
                                              child: Container(
                                                  height: 70,
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  decoration: BoxDecoration(
                                                      gradient: LinearGradient(
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter,
                                                    colors: [
                                                      Colors.black
                                                          .withOpacity(0),
                                                      Colors.black
                                                          .withOpacity(0.5),
                                                    ],
                                                  )))),
                                          Positioned(
                                              top: 10,
                                              left: 10,
                                              child: Icon(
                                                Icons.radio_button_off,
                                                color: Colors.white,
                                                size: 15,
                                              )),
                                          Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 10),
                                                    child: Text(
                                                      'Товары',
                                                      style: TextStyle(
                                                          fontSize: 13,
                                                          color: Colors.white,
                                                          height: 1.46),
                                                    )),
                                                SizedBox(height: 3),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 10, right: 10),
                                                    child: Text(
                                                        'Производство или продажа товаров',
                                                        style: TextStyle(
                                                            fontSize: 9,
                                                            color: Colors.white,
                                                            height: 1.38))),
                                                SizedBox(height: 15)
                                              ])
                                        ])))
                              ],
                            ))
                          ],
                        )),
                    SizedBox(height: 40),
                    GestureDetector(
                        onTap: () {
                          _show(context);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment
                              .center, //Center Row contents horizontally,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.info_outline,
                              color: Colors.blue,
                              size: 13,
                            ),
                            SizedBox(width: 10),
                            Text('Подробнее о выборе',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.blue,
                                    height: 1))
                          ],
                        ))
                  ],
                )),
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
