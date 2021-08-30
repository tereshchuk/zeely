import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zeely/data/const.dart';
import 'package:zeely/widgets/button_1.dart';

class BottomError extends StatelessWidget {
  BottomError({Key? key});

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
                                          padding: EdgeInsets.all(10),
                                          child: SvgPicture.asset(
                                            "assets/lighthouse.svg",
                                            semanticsLabel: 'Acme Logo',
                                            width: 8,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(100.0)),
                                            color: color_rose,
                                          ),
                                        ),
                                        SizedBox(height: 15),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 56),
                                            child: Text(
                                              'Внимание!',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  height: 1.25,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black),
                                            )),
                                        SizedBox(height: 8),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 56),
                                            child: Text(
                                              'Сайт будет недоступен, пока основные блоки не будут заполнены',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  height: 1.61,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black),
                                            )),
                                        SizedBox(height: 16),
                                        _changeCheck("Заголовок сайта",
                                            "assets/bank.svg", 20, 3),
                                        SizedBox(height: 10),
                                        _changeCheck("Описание сайта",
                                            "assets/pen.svg", 20, 2),
                                        SizedBox(height: 10),
                                        _changeCheck("Описание сайта",
                                            "assets/picinpic.svg", 20, 2),
                                        SizedBox(height: 10),
                                        _changeCheck("Описание сайта",
                                            "assets/shop_tag.svg", 20, 2)
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

  Widget _changeCheck(String txt, String asset, double wdth, int done) {
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
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 4),
                        child: SvgPicture.asset("assets/time.svg",
                            //   color: Colors.red,
                            height: 11.5,
                            width: 11.5,
                            color: done < 3 ? color_gray_2 : color_green_1,
                            semanticsLabel: 'A red up arrow')),
                    SizedBox(width: 6),
                    Text("$done из 3",
                        style: TextStyle(
                            height: 1.5,
                            color: done < 3 ? color_gray_2 : color_green_1,
                            fontSize: 13))
                  ]),
            ]));
  }
}
