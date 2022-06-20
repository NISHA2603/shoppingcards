import 'package:flutter/material.dart';
import 'package:shoppingcards/ui/screens/search_screens.dart';
import 'package:get/get.dart';



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SearchScreen(),
    );
  }
}
