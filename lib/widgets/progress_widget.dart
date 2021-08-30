import 'package:flutter/material.dart';
import 'package:zeely/data/const.dart';

class ProgressWidget extends StatelessWidget {
  final int load;

  ProgressWidget({Key? key, required this.load});

  Widget progressLine(int loading) {
    return Stack(children: [
      Container(
        width: double.infinity,
        height: 5,
        decoration: BoxDecoration(
            color: color_gray_3, borderRadius: BorderRadius.circular(100)),
      ),
      Positioned(
          child: FractionallySizedBox(
              alignment: Alignment.topCenter,
              widthFactor: loading == 1
                  ? 0.02
                  : loading == 2
                      ? 0.5
                      : 1,
              child: Container(
                  height: 3,
                  decoration: BoxDecoration(
                      color: color_purple_2,
                      borderRadius: BorderRadius.circular(5))))),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return progressLine(load);
  }
}
