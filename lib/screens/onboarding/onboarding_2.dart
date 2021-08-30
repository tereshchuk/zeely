import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:zeely/data/const.dart';

class OnBoarding2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Flexible(
              child: Stack(children: [_backImage(), _underBlock(context)])),
        ],
      ),
    );
  }

  Widget _backImage() {
    return Positioned(
        child: Image.asset(
      link_onboarding_1,
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    ));
  }

  Widget _underBlock(BuildContext context) {
    return Positioned(
        bottom: 0,
        child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                height: 276 + MediaQuery.of(context).padding.top,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.center,
                  colors: [
                    Colors.black.withOpacity(0),
                    Colors.black.withOpacity(1),
                  ],
                )),
                child: SafeArea(
                    bottom: true,
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        Text(
                          "Продавай online с Zeely",
                          textAlign: TextAlign.center,
                          style: styleH1,
                        ),
                        //   SizedBox(height: 10),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 16, right: 16, top: 10, bottom: 25),
                            child: Text(
                              "Создай продающий сайт для своего бизнеса и запусти эффективную рекламу в несколько шагов",
                              textAlign: TextAlign.center,
                              style: styleH5,
                            )),

                        GestureDetector(
                            onTap: () {
                              Get.toNamed('/onboarding_3');
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: color_green_1),
                                margin: EdgeInsets.symmetric(horizontal: 16),
                                width: double.infinity,
                                height: 60,
                                child: Center(
                                    child:
                                        Text('Начать', style: styleButton)))),

                        SizedBox(height: 25),
                        Row(
                          mainAxisAlignment: MainAxisAlignment
                              .center, //Center Row contents horizontally,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('У тебя уже есть аккаунт? ', style: styleH4),
                            GestureDetector(
                                onTap: () {
                                  // Get.toNamed('/onboarding_3');
                                },
                                child: Text('Ввойти', style: styleLink))
                          ],
                        ),

                        SizedBox(height: 16),
                      ],
                    )))));
  }
}
