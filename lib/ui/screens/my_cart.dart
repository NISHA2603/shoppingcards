import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shoppingcards/ui/screens/search_screens.dart';
import 'package:shoppingcards/ui/widgets/my_cart_widget.dart';

class MyCart extends StatelessWidget {
  MyCart({Key? key}) : super(key: key);

  var imgList = [
    "assets/images/shampoo.jpg",
    "assets/images/oil.jpg",
    "assets/images/antisham.jpg",
  ];
  var name = [
    "Shampoo",
    "Oil",
    "Shampoo",
  ];

  var volume = ["100ml", "200ml", "300ml"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Cart",
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Get.to(SearchScreen());
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: ListView.builder(
          itemCount: imgList.length,
          itemBuilder: (context, index) {
            return MyCartWidget(
              img: imgList[index],
              name: name[index],
              volume: volume[index],
            );
          }),
    );
  }
}
