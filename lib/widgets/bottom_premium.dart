import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zeely/data/const.dart';

class BottomPremium extends StatelessWidget {
  BottomPremium({Key? key});

/* Вызов ботома
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
*/
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        initialChildSize: 0.89,
        maxChildSize: 0.99,
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
                  child: SafeArea(
                      bottom: true,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 16),
                            width: 50,
                            height: 3,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                              color: Color.fromRGBO(143, 164, 178, 0.2),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            width: 40,
                            height: 40,
                            padding: EdgeInsets.all(10),
                            child: Container(
                                width: 8,
                                height: 8,
                                child: SvgPicture.asset(flash,
                                    width: 8,
                                    height: 8,
                                    semanticsLabel: 'Acme Logo',
                                    color: Colors.white)),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100.0)),
                              color: Color.fromRGBO(255, 198, 25, 1),
                            ),
                          ),
                          SizedBox(height: 15),
                          Text(
                            'Активируйте Premium',
                            style: TextStyle(
                                fontSize: 15,
                                height: 1.25,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          // SizedBox(height: 5),
                          Text(
                            'Это откроет недоступные функции',
                            style: TextStyle(
                                fontSize: 13,
                                height: 1.75,
                                color: Color.fromRGBO(143, 164, 178, 1),
                                fontWeight: FontWeight.w400),
                          ),

                          tablhdr(),
                          tabl("Создание сайта", true, true),
                          tabl("CRM-система и аналитика", true, true),
                          tabl("Реклама в Facebook", false, true),
                          tabl("Продвижение в Google", false, true),
                          tabl("Продажи с маркетплейса", false, true),
                          tabl("Бонус \$30 на рекламу", false, true),

                          SizedBox(height: 44),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              quadre("\$13.99", "стандарт", "1 месяц"),
                              SizedBox(width: 4),
                              quadreActive(),
                              SizedBox(width: 4),
                              quadre("\$119.99", "экономия 29%", "12 месяцев"),
                            ],
                          ),
                          _button(),
                          SizedBox(height: 20),

                          rowLink()
                        ],
                      ))));
        });
  }

  Widget _button() {
    return Container(
        margin: EdgeInsets.only(top: 30, left: 16, right: 16),
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          gradient: new LinearGradient(
              colors: [
                Color.fromRGBO(98, 98, 217, 1),
                Color.fromRGBO(137, 98, 217, 1),
              ],
              begin: const FractionalOffset(0.0, 1.0),
              end: const FractionalOffset(1.0, 0.0),
              stops: [0.7, 1],
              tileMode: TileMode.clamp),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '7-дневный период',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 13,
                    height: 1,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
              SizedBox(height: 6),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      flash,
                      semanticsLabel: 'Acme Logo',
                      width: 11,
                      color: Colors.white.withOpacity(0.7),
                    ),
                    SizedBox(width: 11, height: 12),
                    Text(
                      'Попробовать бесплатно',
                      style: TextStyle(
                          fontSize: 14,
                          height: 1,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    )
                  ]),
            ]));
  }

  Widget rowLink() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Условия пользования",
          style: TextStyle(
              fontSize: 10,
              color: Color.fromRGBO(143, 164, 178, 1),
              fontWeight: FontWeight.w400),
        ),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 11),
            width: 3,
            height: 3,
            decoration: BoxDecoration(
                color: Color.fromRGBO(143, 164, 178, 1),
                borderRadius: BorderRadius.all(
                  Radius.circular(100.0),
                ))),
        Text(
          "Конфиденциальность",
          style: TextStyle(
              fontSize: 10,
              color: Color.fromRGBO(143, 164, 178, 1),
              fontWeight: FontWeight.w400),
        ),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 11),
            width: 3,
            height: 3,
            decoration: BoxDecoration(
                color: Color.fromRGBO(143, 164, 178, 1),
                borderRadius: BorderRadius.all(
                  Radius.circular(100.0),
                ))),
        Text(
          "Восстановить",
          style: TextStyle(
              fontSize: 10,
              color: Color.fromRGBO(143, 164, 178, 1),
              fontWeight: FontWeight.w400),
        )
      ],
    );
  }

  Widget quadreActive() {
    return Stack(children: [
      Container(
        margin: EdgeInsets.only(top: 18),
        padding: EdgeInsets.only(top: 18),
        width: 111,
        height: 110,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 5),
              Text('\$35.99',
                  style: TextStyle(
                      fontSize: 18,
                      color: Color.fromRGBO(137, 98, 217, 1),
                      fontWeight: FontWeight.w700)),
              SizedBox(height: 4),
              Text('экономия 14%',
                  style: TextStyle(
                      fontSize: 10,
                      color: Color.fromRGBO(143, 164, 178, 1),
                      fontWeight: FontWeight.w400)),
              SizedBox(height: 14),
              Text('3 месяца',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w400)),
            ]),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            border:
                Border.all(width: 1, color: Color.fromRGBO(137, 98, 217, 1))),
      ),
      Positioned.fill(
          top: 9,
          child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 71,
                height: 18,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  color: Color.fromRGBO(137, 98, 217, 1),
                ),
                child: Center(
                    child: Text('PROFIT',
                        style: TextStyle(
                            fontSize: 9,
                            color: Colors.white,
                            fontWeight: FontWeight.w400))),
              ))),
    ]);
  }

  Widget quadre(String txt1, String txt2, String txt3) {
    return Container(
      margin: EdgeInsets.only(top: 18),
      padding: EdgeInsets.only(top: 18),
      width: 111,
      height: 110,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 5),
            Text(txt1,
                style: TextStyle(
                    fontSize: 18,
                    height: 1.27,
                    color: Colors.black,
                    fontWeight: FontWeight.w700)),
            SizedBox(height: 4),
            Text(txt2,
                style: TextStyle(
                    fontSize: 10,
                    color: Color.fromRGBO(143, 164, 178, 1),
                    fontWeight: FontWeight.w400)),
            SizedBox(height: 14),
            Text(txt3,
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.w400)),
          ]),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          border:
              Border.all(width: 1, color: Color.fromRGBO(246, 247, 251, 1))),
    );
  }

  Widget tablhdr() {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      Padding(
          padding: const EdgeInsets.only(
            top: 16,
            right: 25,
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            Container(
                width: 58,
                height: 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    border: Border.all(
                        width: 1, color: Color.fromRGBO(246, 247, 251, 1))),
                child: Center(
                    child: Text(
                  'BASIC',
                  style: TextStyle(
                      fontSize: 9,
                      color: Color.fromRGBO(23, 32, 38, 1),
                      fontWeight: FontWeight.w700),
                ))),
            SizedBox(width: 16.5),
            Container(
                width: 58,
                height: 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    color: Color.fromRGBO(255, 198, 25, 1),
                    border: Border.all(
                        width: 1, color: Color.fromRGBO(255, 198, 25, 1))),
                child: Center(
                    child: Text(
                  'PREMIUM',
                  style: TextStyle(
                      fontSize: 9,
                      color: Color.fromRGBO(23, 32, 38, 1),
                      fontWeight: FontWeight.w700),
                )))
          ])),
    ]);
  }

  Widget tabl(String txt, bool one, bool two) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: const EdgeInsets.only(
            top: 14,
            left: 25,
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 6,
                  height: 6,
                  margin: EdgeInsets.only(right: 11),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100.0)),
                    color: Color.fromRGBO(255, 198, 25, 1),
                  ),
                ),
                Text(txt,
                    textAlign: TextAlign.left,
                    // ignore: deprecated_member_use
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                        height: 1,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(23, 32, 38, 1),
                        fontSize: 12))
              ])),
      Padding(
          padding: const EdgeInsets.only(
            top: 14,
            right: 25,
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            Container(
                width: 58,
                height: 20,
                child: Center(
                    child: SvgPicture.asset(one ? check : uncheck,
                        semanticsLabel: 'Acme Logo'))),
            SizedBox(width: 16.5),
            Container(
                width: 58,
                height: 20,
                decoration: BoxDecoration(),
                child: Center(
                    child: SvgPicture.asset(two ? check : uncheck,
                        semanticsLabel: 'Acme Logo')))
          ])),
    ]);
  }
}
