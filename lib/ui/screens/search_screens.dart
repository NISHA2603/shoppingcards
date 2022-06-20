import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:shoppingcards/ui/widgets/card_widget.dart';
import 'package:shoppingcards/ui/widgets/tag_widget.dart';

import 'details_screen.dart';
import 'my_cart.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);
  var imgList = [
    "assets/images/shampoo.jpg",
    "assets/images/oil.jpg",
    "assets/images/antisham.jpg",
    "assets/images/oill.jpg",
  ];
  var name = ["shampoo", "oil", "shampoo", "oil"];
  var scrollController = ScrollController();
  var pname;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {},
          ),
          centerTitle: true,
          title: Text("Search"),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          actions: [
            IconButton(onPressed: () {
              Get.to(DetailsScreen());
            }, icon: Icon(Icons.add_shopping_cart))
          ],
        ),
        body: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            children: [
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(30),
                      child: TextField(
                          // style:  TextStyle(color: Colors.grey),

                          decoration: InputDecoration(
                        fillColor: Colors.grey,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          //  borderSide: const BorderSide(color: Colors.grey, width: 2.0),
                        ),
                        prefixIcon: Icon(Icons.search),
                      )),
                    ),
                  ),
                  Container(
                    //color: Colors.black,
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.black),
                    child: Icon(
                      Icons.list_alt,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    TagWidget(pname: "Hair Color"),
                    SizedBox(
                      width: 20.0,
                    ),
                    TagWidget(pname: "Shampoo"),
                  ],
                ),
              ),
              // SizedBox(height: 20.0),
              GridView.count(
                controller: scrollController,
                shrinkWrap: true,
                crossAxisCount: 2,
                children: List.generate(4, (index) {
                  return CardWidget(
                    img: imgList[index],
                    name: name[index],
                  );
                }),
              ),
            ],
          ),
        ));
  }
}
