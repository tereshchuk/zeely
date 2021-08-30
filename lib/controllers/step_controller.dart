import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/index.dart';
import 'package:get/get.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ControllerStep extends GetxController {
  RxString textFieldvalue = "".obs;
  TextEditingController code1 = TextEditingController();
  TextEditingController code2 = TextEditingController();
  TextEditingController code3 = TextEditingController();
  TextEditingController code4 = TextEditingController();
  RxInt stateValidationCode = 0.obs;
  final maskFormatter = new MaskTextInputFormatter(
      mask: '(##) ###-##-##', filter: {"#": RegExp(r'[0-9]')});

  CountdownController countdownController =
      CountdownController(duration: Duration(seconds: 120), onEnd: () {});

  changeEdit(value, context) {
    if (value.length > 0)
      FocusScope.of(context).nextFocus();
    else
      FocusScope.of(context).previousFocus();
  }

  changeEditEnd(value, context) {
    if (value.length == 0)
      FocusScope.of(context).previousFocus();
    else {
      stateValidationCode.value = 1;
      countdownController.start();
    }
  }

  changeEditFirst(value, context) {
    stateValidationCode.value = 0;
    if (value.length > 0) FocusScope.of(context).nextFocus();
  }

  @override
  void onInit() {
    super.onInit();
  }
}
