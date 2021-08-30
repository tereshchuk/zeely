import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zeely/data/const.dart';
import 'package:zeely/widgets/button_1.dart';

class BottomInfo extends StatelessWidget {
  BottomInfo({Key? key});

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
        initialChildSize: 0.75,
        maxChildSize: 1,
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
                      child: Padding(
                          padding: EdgeInsets.only(top: 12),
                          child: Scaffold(
                              backgroundColor: Colors.white,
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

                                      Button1(
                                          text: "Наполнить сайт",
                                          active: true,
                                          hght: 60),
                                ),
                              ),
                              body: CustomScrollView(
                                  controller: scrollController,
                                  slivers: [
                                    SliverToBoxAdapter(
                                        child: Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 4),
                                          width: 50,
                                          height: 3,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20.0)),
                                            color: Color.fromRGBO(
                                                143, 164, 178, 0.2),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 20),
                                          width: 40,
                                          height: 40,
                                          //padding: EdgeInsets.all(10),
                                          child: Icon(
                                            Icons.info_outlined,
                                            color: Colors.white,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(100.0)),
                                            color: color_blue,
                                          ),
                                        ),
                                        SizedBox(height: 15),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 56),
                                            child: Text(
                                              'Наполни сайт информацией, чтобы клиенты могли',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  height: 1.25,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black),
                                            )),
                                        SizedBox(height: 16),
                                        _infoCheck(
                                            "Ознакомиться с каталогом компании"),
                                        SizedBox(height: 6),
                                        _infoCheck(
                                            "Узнать стоимость и условия работы"),
                                        SizedBox(height: 6),
                                        _infoCheck(
                                            "Оформить заказ или оставить запрос "),
                                        SizedBox(height: 27),
                                        Text('Выбери блок для наполнения',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                                height: 1.53)),
                                        SizedBox(height: 10),
                                        _changeCheck("Добавить заголовок сайта",
                                            "assets/paper_1.svg", 20),
                                        SizedBox(height: 10),
                                        _changeCheck(
                                            "Добавить описание предложения",
                                            "assets/pencil.svg",
                                            15)
                                      ],
                                    ))
                                  ]))))));
        });
  }

  Widget _infoCheck(String txt) {
    return Container(
        margin: EdgeInsets.only(left: 16, right: 16),
        width: double.infinity,
        height: 60,
        padding: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            color: color_gray_4),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                txt,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 13,
                    height: 1,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              Container(
                  width: 20,
                  height: 20,
                  padding: EdgeInsets.all(5.5),
                  child: SvgPicture.asset(
                    "assets/checking.svg",
                    semanticsLabel: 'Acme Logo',
                    width: 8,
                  )),
            ]));
  }

  Widget _changeCheck(String txt, String asset, double wdth) {
    return Container(
        margin: EdgeInsets.only(left: 16, right: 16),
        width: double.infinity,
        height: 60,
        padding: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            border: Border.all(width: 1, color: color_gray_4)),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(children: [
                SvgPicture.asset(
                  asset,
                  semanticsLabel: 'Acme Logo',
                  width: wdth,
                ),
                SizedBox(width: 12.5),
                Text(
                  txt,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 13,
                      height: 1,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ]),
              Icon(
                Icons.arrow_forward_ios,
                size: 12,
              ),
            ]));
  }
}
