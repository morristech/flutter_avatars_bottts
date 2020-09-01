import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'bottt_processor.dart';
import 'bottt.dart';

class BotttAvatar extends StatelessWidget {
  final Bottt bottt;

  BotttAvatar({this.bottt});

  @override
  Widget build(BuildContext context) {
    String _svgString;

    var _botttProcessor = BotttProcessor();
    _svgString = _botttProcessor.processSVG(this.bottt);

    return Column(
      children: [
        CircleAvatar(
          radius: 80,
          child: CircleAvatar(
            radius: 75,
            backgroundColor: Color.fromARGB(255, 100, 100, 100),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                child: SvgPicture.string(_svgString),
              ),
            ),
          ),
        ),
      ],
    );
  }
}