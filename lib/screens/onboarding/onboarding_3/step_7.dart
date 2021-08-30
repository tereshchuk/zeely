import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zeely/data/const.dart';
import 'package:zeely/widgets/button_1.dart';
import 'package:zeely/widgets/step_widget.dart';

class Step7 extends StatelessWidget {
  Widget _slider(context) {
    //print(list.combinations.first.images);
    return Stack(alignment: Alignment.center, children: [
      CarouselSlider(
        options: CarouselOptions(
            height: 520.0,
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              //c.increment(index);
            },
            enableInfiniteScroll: false),
        items: [
          "assets/post.jpg",
          "assets/post.jpg",
          "assets/post.jpg",
          "assets/post.jpg",
        ].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Colors.grey),
                  child: Image.asset(
                    i,
                    height: double.infinity,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ));
            },
          );
        }).toList(),
      ),
      Positioned(
          bottom: 0,
          child: Container(
            height: 156,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.center,
              colors: [
                Colors.white.withOpacity(0),
                Colors.white.withOpacity(0.8),
              ],
            )),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Продавай online с Zeely",
                    textAlign: TextAlign.center,
                    style: styleH1black,
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                          left: 28, right: 28, top: 10, bottom: 70),
                      child: Text(
                        "Создавай продающий сайт, запускай рекламу и пополняй клиентскую базу",
                        textAlign: TextAlign.center,
                        style: styleH5Black,
                      )),
                ]),
          )),
      Positioned(
          bottom: 15,
          child: Center(
              child: Container(
                  margin: EdgeInsets.only(top: 0),
                  padding: EdgeInsets.symmetric(vertical: 6, horizontal: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    // color: Colors.black.withOpacity(0.7),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      "assets/post.jpg",
                      "assets/post.jpg",
                      "assets/post.jpg",
                      "assets/post.jpg",
                    ].map((url) {
                      int index = [
                        "assets/post.jpg",
                        "assets/post.jpg",
                        "assets/post.jpg",
                        "assets/post.jpg",
                      ].indexOf(url);

                      return Container(
                          margin: EdgeInsets.symmetric(horizontal: 4.5),
                          width: 6,
                          height: 6,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100.0),
                              color: color_purple_2));
                    }).toList(),
                  ))))
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          top: false,
          bottom: false,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                )),
            child: Column(children: [
              _slider(context),
            ]),
          )),
      bottomNavigationBar: Container(
          color: Colors.white,
          child: SafeArea(
              child: Container(
                  height: 235,
                  child: Column(children: [
                    Text('\$35.99/3 месяца',
                        style: TextStyle(
                            color: color_gray_2, fontSize: 13, height: 1.6)),
                    SizedBox(height: 4),
                    Container(
                        margin: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(
                              width: 1, color: color_green_1.withOpacity(0.15)),
                        ),
                        child: Container(
                            margin: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(
                                  width: 1,
                                  color: color_green_1.withOpacity(0.3)),
                            ),
                            child: Container(
                                margin: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  border: Border.all(
                                      width: 1,
                                      color: color_green_1.withOpacity(0.6)),
                                ),
                                child: Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 4, vertical: 4),
                                  height: 60,
                                  child: Center(
                                      child: Text("Попробовать бесплатно",
                                          style: styleButton)),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: color_green_1,
                                  ),
                                  width: double.infinity,
                                )))),
                    SizedBox(height: 10),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      width: double.infinity,
                      height: 60,
                      child: Center(
                          child: Text(
                        'Подписаться на месяц\n\$13.99/месяц',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            height: 1.4, fontSize: 12, color: color_purple_2),
                      )),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 1, color: color_purple_2

                            //                   <--- border width here
                            ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Условия пользования',
                          style: TextStyle(
                            fontSize: 10,
                            color: color_gray_2,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "•",
                          style: TextStyle(
                            fontSize: 10,
                            color: color_gray_2,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Конфиденциальность',
                          style: TextStyle(
                            fontSize: 10,
                            color: color_gray_2,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "•",
                          style: TextStyle(
                            fontSize: 10,
                            color: color_gray_2,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Восстановить',
                          style: TextStyle(
                            fontSize: 10,
                            color: color_gray_2,
                          ),
                        ),
                      ],
                    )
                  ])))),
    );
  }
}
