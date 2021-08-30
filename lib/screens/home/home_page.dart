import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:zeely/data/const.dart';
import 'package:zeely/widgets/bottom_error.dart';
import 'package:zeely/widgets/bottom_info.dart';
import 'package:zeely/widgets/progress_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
                child: Container(
                    height: 280 + MediaQuery.of(context).padding.top,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.topRight,
                      colors: [color_purple_2, color_purple_3],
                    )),
                    child: SafeArea(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                                left: 16, right: 16, top: 16, bottom: 17),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('Мой сайт',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          height: 1.3,
                                          fontWeight: FontWeight.bold)),
                                  Row(
                                    children: [
                                      GestureDetector(
                                          onTap: () {
                                            showModalBottomSheet<void>(
                                                context: context,
                                                isScrollControlled: true,
                                                enableDrag: false,
                                                backgroundColor:
                                                    Color.fromRGBO(5, 20, 55, 1)
                                                        .withOpacity(0),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.vertical(
                                                          top: Radius.circular(
                                                              20.0)),
                                                ),
                                                builder: (context) {
                                                  return BottomError();
                                                });
                                          },
                                          child: Container(
                                              width: 20,
                                              height: 20,
                                              padding: EdgeInsets.all(4),
                                              child: SvgPicture.asset(
                                                  "assets/lightning.svg",
                                                  //   color: Colors.red,
                                                  height: 150,
                                                  width: 150,
                                                  semanticsLabel:
                                                      'A red up arrow'),
                                              decoration: BoxDecoration(
                                                  color: Color(0xFFFFC619),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100)))),
                                      SizedBox(width: 30),
                                      Container(
                                          width: 30,
                                          height: 30,
                                          padding: EdgeInsets.all(7),
                                          decoration: BoxDecoration(
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 0.15),
                                              borderRadius:
                                                  BorderRadius.circular(100)),
                                          child: SvgPicture.asset(
                                              "assets/user.svg",
                                              //   color: Colors.red,
                                              height: 150,
                                              width: 150,
                                              semanticsLabel:
                                                  'A red up arrow')),
                                    ],
                                  )
                                ])),
                        SizedBox(height: 10),
                        Container(
                            height: 40,
                            child: ListView(
                                // This next line does the trick.
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  SizedBox(width: 16),
                                  Text(
                                    'Настройки',
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.6),
                                        fontSize: 14),
                                  ),
                                  SizedBox(width: 25),
                                  Text("Управления",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14)),
                                  SizedBox(width: 25),
                                  Text("Продвижения",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14)),
                                ])),
                        Container(
                            height: 130,
                            child: ListView(
                                // This next line does the trick.
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  SizedBox(width: 16),
                                  Column(children: [
                                    Container(
                                      width: 60,
                                      height: 60,
                                      child: Center(
                                          child: Container(
                                        width: 30,
                                        height: 30,
                                        child: Center(
                                          child: SvgPicture.asset(
                                              "assets/setting.svg",
                                              //   color: Colors.red,
                                              height: 16,
                                              width: 16,
                                              semanticsLabel: 'A red up arrow'),
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          color: color_green,
                                        ),
                                      )),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.15)),
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      width: 60,
                                      height: 60,
                                      child: Center(
                                          child: Container(
                                        width: 30,
                                        height: 30,
                                        child: Center(
                                          child: SvgPicture.asset(
                                              "assets/paper_plus.svg",
                                              //   color: Colors.red,
                                              height: 16,
                                              width: 16,
                                              semanticsLabel: 'A red up arrow'),
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          color: color_blue,
                                        ),
                                      )),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.15)),
                                    ),
                                  ]),
                                  SizedBox(width: 10),
                                  _blockslide(
                                      "assets/globe.svg",
                                      'Смотреть\nсайта',
                                      'Перейти',
                                      color_orange,
                                      16,
                                      16),
                                  SizedBox(width: 10),
                                  _blockslide(
                                      "assets/edit_square.svg",
                                      'Дизайн\nсайта',
                                      'Изменить',
                                      color_purple_4,
                                      16,
                                      16),
                                  SizedBox(width: 10),
                                  _blockslide(
                                      "assets/folder.svg",
                                      'Главная\nстраница',
                                      'Редактировать',
                                      color_rose,
                                      16,
                                      16),
                                  SizedBox(width: 10),
                                  _blockslide(
                                      "assets/camera.svg",
                                      'Фото\nи видео',
                                      'Редактировать',
                                      color_yellow,
                                      16,
                                      16),
                                  SizedBox(width: 10),
                                  _blockslide(
                                      "assets/group.svg",
                                      'Продвижения\nFacebook',
                                      'Начать',
                                      color_blue_2,
                                      20,
                                      20),
                                  SizedBox(width: 10),
                                  _blockslide(
                                      "assets/vector.svg",
                                      'Продвижения\nGoogle',
                                      'Начать',
                                      color_red,
                                      16,
                                      16),
                                  SizedBox(width: 16),
                                ])),
                      ],
                    )))),
            SliverToBoxAdapter(
                child: Container(
                    color: Colors.white,
                    child: Stack(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                              colors: [color_purple_2, color_purple_3],
                            )),
                            width: double.infinity,
                            height: 40),
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  topRight: Radius.circular(12)),
                              color: Colors.white,
                            ),
                            width: double.infinity,
                            height: 40),
                        Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 24),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset("assets/upload.svg",
                                    //   color: Colors.red,
                                    height: 18,
                                    width: 18,
                                    semanticsLabel: 'A red up arrow'),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text("zeely.me"),
                                      SizedBox(width: 10),
                                      Icon(
                                        Icons.keyboard_arrow_down,
                                        size: 16,
                                      ),
                                    ]),
                                SvgPicture.asset("assets/discovery.svg",
                                    //   color: Colors.red,
                                    height: 18,
                                    width: 18,
                                    semanticsLabel: 'A red up arrow'),
                              ],
                            )),
                      ],
                    ))),
            SliverToBoxAdapter(
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        SizedBox(height: 15),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Главная страница",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  height: 1.2),
                            )),
                        SizedBox(height: 16),
                        _blockProgress(
                            "assets/block_1.svg",
                            "Заголовок сайта",
                            'Уникальное торговое предложение с ключевыми преимуществами компании',
                            '0 из 3',
                            1,
                            6,
                            20,
                            20),
                        SizedBox(height: 16),
                        _blockProgress(
                            "assets/paper.svg",
                            "Описание предложения",
                            'Подробное описание предложения с объяснением преимуществ',
                            '0 из 3',
                            1,
                            7,
                            17,
                            17),
                        SizedBox(height: 16),
                        _blockProgress(
                            "assets/picinpic.svg",
                            "Обложка",
                            'Основное изображение сайта, которое размещается на главной странице',
                            '0 из 3',
                            1,
                            7,
                            22,
                            22),
                        SizedBox(height: 16),
                        _blockProgress(
                            "assets/shop_tag.svg",
                            "Специальное предложение",
                            'Бонус, который получает клиент, когда впервые обращается в компанию',
                            '0 из 3',
                            1,
                            5,
                            22,
                            22),
                        SizedBox(
                          height: 16 + MediaQuery.of(context).padding.top,
                        ),
                      ],
                    ))),
            /*    SliverToBoxAdapter(
            child: Padding(
                padding: EdgeInsets.only(top: 36, bottom: 16, left: 16),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Каталог и предложения",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          height: 1.2),
                    )))),
        SliverToBoxAdapter(
          child: Container(
              height: 150,
              child: ListView(
                  // This next line does the trick.
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    SizedBox(width: 16),
                    _catalogslide(
                        "assets/globe.svg", 'Дизайн\nсайта', 'Перейти'),
                    SizedBox(width: 10),
                    _catalogslide(
                        "assets/globe.svg", 'Дизайн\nсайта', 'Перейти'),
                    SizedBox(width: 16),
                  ])),
        ),
        SliverToBoxAdapter(
            child: Container(
          margin: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
          height: 160,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(10)),
        )),
        SliverToBoxAdapter(
            child: Padding(
                padding: EdgeInsets.only(top: 16, bottom: 16, left: 16),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "О компании",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          height: 1.2),
                    )))),
        SliverToBoxAdapter(
          child: Container(
              height: 150,
              child: ListView(
                  // This next line does the trick.
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    SizedBox(width: 16),
                    _catalogslide(
                        "assets/globe.svg", 'Дизайн\nсайта', 'Перейти'),
                    SizedBox(width: 10),
                    _catalogslide(
                        "assets/globe.svg", 'Дизайн\nсайта', 'Перейти'),
                    SizedBox(width: 16),
                  ])),
        ),
        SliverToBoxAdapter(
            child: Padding(
                padding: EdgeInsets.only(top: 16, bottom: 16, left: 16),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Галерея",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          height: 1.2),
                    )))),
        SliverToBoxAdapter(
          child: Container(
              height: 150,
              child: ListView(
                  // This next line does the trick.
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    SizedBox(width: 16),
                    _catalogslide(
                        "assets/globe.svg", 'Дизайн\nсайта', 'Перейти'),
                    SizedBox(width: 10),
                    _catalogslide(
                        "assets/globe.svg", 'Дизайн\nсайта', 'Перейти'),
                    SizedBox(width: 16),
                  ])),
        ),
        SliverToBoxAdapter(
            child: Padding(
                padding: EdgeInsets.only(top: 32, bottom: 16, left: 16),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Условия сотрудничества",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          height: 1.2),
                    )))),
        SliverToBoxAdapter(
          child: Column(
            children: [
              Container(
                  height: 60,
                  margin: EdgeInsets.only(left: 16, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset("assets/time.svg",
                                //   color: Colors.red,
                                height: 12,
                                width: 12,
                                semanticsLabel: 'A red up arrow'),
                            SizedBox(width: 12),
                            Text('Этапы работы',
                                style:
                                    TextStyle(height: 1.5, color: color_gray_2))
                          ]),
                      SizedBox(
                          height: 4,
                          width: 4,
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: color_gray_2,
                            size: 8,
                          )),
                    ],
                  )),
              Container(
                  height: 60,
                  margin: EdgeInsets.only(left: 16, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset("assets/time.svg",
                                //   color: Colors.red,
                                height: 12,
                                width: 12,
                                semanticsLabel: 'A red up arrow'),
                            SizedBox(width: 12),
                            Text('Вопросы и ответы',
                                style:
                                    TextStyle(height: 1.5, color: color_gray_2))
                          ]),
                      SizedBox(
                          height: 4,
                          width: 4,
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: color_gray_2,
                            size: 8,
                          )),
                    ],
                  )),
            ],
          ),
        ),
        SliverToBoxAdapter(
            child: Container(
          margin: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
          height: 83,
          padding: EdgeInsets.symmetric(horizontal: 22, vertical: 12),
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/time.svg",
                        //   color: Colors.red,
                        height: 12,
                        width: 12,
                        semanticsLabel: 'A red up arrow'),
                    SizedBox(width: 12),
                    Column(children: [
                      Text('Вопросы и ответы',
                          style: TextStyle(height: 1.5, color: color_gray_2)),
                      SizedBox(height: 6),
                      Text('Вопросы и ответы',
                          style: TextStyle(height: 1.5, color: color_gray_2))
                    ])
                  ]),
              SizedBox(
                  height: 4,
                  width: 4,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: color_gray_2,
                    size: 8,
                  )),
            ],
          ),
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(10)),
        )),*/
          ],
        ));
  }

/*
  Widget _catalogslide(String assets, String txt1, String txt2) {
    return Container(
        width: 200,
        height: 150,
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 30,
                height: 30,
                child: Center(
                  child: SvgPicture.asset(assets,
                      //   color: Colors.red,
                      height: 12,
                      width: 12,
                      semanticsLabel: 'A red up arrow'),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.purple,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(txt1,
                      style: TextStyle(
                          height: 1.4, fontSize: 11, color: Colors.white)),
                  SizedBox(height: 6),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(txt2,
                            style: TextStyle(
                                height: 1, fontSize: 8, color: Colors.white)),
                        SizedBox(width: 3),
                        SizedBox(
                            height: 5,
                            width: 5,
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 6,
                            ))
                      ]),
                  SizedBox(height: 4),
                ],
              )
            ]));
  }
*/

  Widget _blockslide(String assets, String txt1, String txt2, Color clr,
      double width, double height) {
    return Container(
        width: 100,
        height: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color.fromRGBO(255, 255, 255, 0.15),
        ),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 30,
                height: 30,
                child: Center(
                  child: SvgPicture.asset(assets,
                      height: height,
                      width: width,
                      semanticsLabel: 'A red up arrow'),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: clr,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(txt1,
                      style: TextStyle(
                          height: 1.4, fontSize: 11, color: Colors.white)),
                  SizedBox(height: 6),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(txt2,
                            style: TextStyle(
                                height: 1,
                                fontSize: 8,
                                color: Colors.white.withOpacity(0.6))),
                        SizedBox(width: 3),
                        SizedBox(
                            height: 5,
                            width: 5,
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 6,
                            ))
                      ]),
                  SizedBox(height: 4),
                ],
              )
            ]));
  }

  Widget _blockProgress(String assets, String txt1, String txt2, String done,
      int progress, double top, double height, double width) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),

        // margin: EdgeInsets.symmetric(horizontal: 16),
        width: double.infinity,
        child: Column(
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: top),
                      child: SvgPicture.asset(assets,
                          height: height,
                          width: width,
                          semanticsLabel: 'A red up arrow')),
                  SizedBox(width: 13.5),
                  Text(
                    txt1,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        height: 1.86),
                  )
                ]),
            SizedBox(height: 10),
            Text(txt2,
                style:
                    TextStyle(height: 1.5, color: color_gray_2, fontSize: 12)),
            SizedBox(height: 14),
            ProgressWidget(load: progress),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                              semanticsLabel: 'A red up arrow')),
                      SizedBox(width: 6),
                      Text(done,
                          style: TextStyle(
                              height: 1.5, color: color_gray_2, fontSize: 13))
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Начать',
                          style: TextStyle(
                              height: 1.5, color: color_gray_2, fontSize: 11)),
                      SizedBox(width: 6),
                      SizedBox(
                          height: 3,
                          width: 3,
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: color_gray_2,
                            size: 8,
                          ))
                    ]),
              ],
            )
          ],
        ));
  }
}
