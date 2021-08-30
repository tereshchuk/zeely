import 'package:flutter/material.dart';
import 'package:zeely/data/const.dart';

class StepsWidget extends StatelessWidget {
  final List<bool> first;
  final List<bool> last;

  StepsWidget({Key? key, required this.first, required this.last});

  Widget progressLine(bool show, bool full) {
    return Stack(children: [
      Container(
          height: 3,
          decoration: BoxDecoration(
              color: color_purple_1, borderRadius: BorderRadius.circular(5))),
      if (show)
        Positioned(
            child: FractionallySizedBox(
                alignment: Alignment.topCenter,
                widthFactor: full ? 1 : 0.5,
                child: Container(
                    height: 3,
                    decoration: BoxDecoration(
                        color: color_purple_2,
                        borderRadius: BorderRadius.circular(5))))),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 40, right: 40),
        child: Row(
            mainAxisAlignment:
                MainAxisAlignment.center, //Center Row contents horizontally,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: progressLine(first[0], last[0])),
              SizedBox(width: 5),
              Expanded(child: progressLine(first[1], last[1])),
              SizedBox(width: 5),
              Expanded(child: progressLine(first[2], last[2])),
              SizedBox(width: 5),
              Expanded(child: progressLine(first[3], last[3])),
              SizedBox(width: 5),
              Expanded(child: progressLine(first[4], last[4]))
            ]));
  }
}
