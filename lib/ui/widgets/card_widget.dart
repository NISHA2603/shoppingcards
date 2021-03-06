import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/details_screen.dart';

class CardWidget extends StatelessWidget {
  const CardWidget(
      {Key? key, required this.img, required this.name, required this.onTap})
      : super(key: key);
  final String img;
  final String name;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: InkWell(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 08.0),
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(25.0),

              // color: Colors.amber
            ),
          ),
          onTap: onTap,
        ),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        heightFactor: 11.0,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 18.0),
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Text(name, style: TextStyle(fontSize: 14))),
        ),
      ),
    ]);
  }
}
