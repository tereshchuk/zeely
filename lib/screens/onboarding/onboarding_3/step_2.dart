import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_countdown_timer/index.dart';
import 'package:get/get.dart';
import 'package:zeely/controllers/step_controller.dart';
//import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:zeely/data/const.dart';
import 'package:zeely/screens/onboarding/onboarding_3/test.dart';
import 'package:zeely/widgets/button_1.dart';
import 'package:zeely/widgets/step_widget.dart';

class Step2 extends StatelessWidget {
  final ControllerStep c = Get.put(ControllerStep());
  Widget progress() {
    return StepsWidget(
        first: [true, true, false, false, false],
        last: [true, false, false, false, false]);
  }

  Widget _phone() {
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
                              'Регистрация',
                              style: styleH3,
                              textAlign: TextAlign.left,
                            ))),
                    SizedBox(height: 10),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(
                              left: 40,
                            ),
                            child: Text(
                              'Укажи свой номер телефона и ожидай SMS',
                              style: styleH5Black,
                              textAlign: TextAlign.left,
                            ))),
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: IntlPhoneField(
                        autofocus: true,
                        inputFormatters: [c.maskFormatter],
                        style: TextStyle(fontSize: 13),
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintText: "__ __ __ __",
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                        ),
                        initialCountryCode: 'UA',
                        onChanged: (phone) {
                          print(phone.completeNumber);
                        },
                      ),
                    )
                  ],
                )),
          )),
      bottomNavigationBar: Container(
          color: Colors.white,
          child: SafeArea(
            child: Button1(text: "Далее", active: true, hght: 50),
          )),
    );
  }

  Widget codeSquare(context, TextEditingController controller, int element) {
    return Obx(() => Container(
        width: 65,
        height: 45,
        decoration: BoxDecoration(
            border: Border.all(
                color: c.stateValidationCode.value == 0
                    ? color_gray_1
                    : Colors.red,
                width: 1),
            borderRadius: BorderRadius.circular(5)),
        child: TextField(
            keyboardType: TextInputType.number,
            autofocus: true,
            controller: controller,
            textAlign: TextAlign.center,
            maxLength: 1,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
            textInputAction: TextInputAction.next,
            showCursor: false,
            onChanged: (value) {
              if (element == 0)
                c.changeEditFirst(value, context);
              else if (element == 3)
                c.changeEditEnd(value, context);
              else
                c.changeEdit(value, context);
            },
            decoration: InputDecoration(
                border: InputBorder.none,
                counterText: "",
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                hintStyle: TextStyle(color: color_gray_1),
                hintText: "_"))));
  }

  Widget _code(context) {
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
                              'Подтверди номер телефона',
                              style: styleH3,
                              textAlign: TextAlign.left,
                            ))),
                    Padding(
                        padding: EdgeInsets.only(left: 40, right: 40, top: 10),
                        child: Text(
                          'Мы отправили SMS с кодом подтверждения на номер +380988046341',
                          style: styleH5Black,
                          textAlign: TextAlign.left,
                        )),
                    SizedBox(height: 28),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            codeSquare(context, c.code1, 0),
                            codeSquare(context, c.code2, 1),
                            codeSquare(context, c.code3, 2),
                            codeSquare(context, c.code4, 3),
                          ],
                        )),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 40, top: 8),
                            child: Obx(() => Text(
                                  c.stateValidationCode.value == 0
                                      ? ""
                                      : "Неверный код",
                                  textAlign: TextAlign.left,
                                  style:
                                      TextStyle(fontSize: 8, color: Colors.red),
                                )))),
                    SizedBox(height: 32),
                    Countdown(
                      countdownController: c.countdownController,
                      builder: (_, Duration time) {
                        return Text(
                          'Повторная отправка доступна через ${time.inMinutes % 60}:${time.inSeconds % 60}',
                          style: TextStyle(
                              color: color_gray_2, fontSize: 14, height: 1.5),
                          textAlign: TextAlign.left,
                        );
                      },
                    ),
                  ],
                )),
          )),
      bottomNavigationBar: Container(
          color: Colors.white,
          child: SafeArea(
            child: Button1(text: "Далее", active: true, hght: 50),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _code(context); //_phone
  }
}
