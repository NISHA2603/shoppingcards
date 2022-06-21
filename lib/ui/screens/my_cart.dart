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
  var price = ["300", "200", "300", "500"];

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
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              height: Get.size.height / 2,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: imgList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        MyCartWidget(
                          img: imgList[index],
                          name: name[index],
                          volume: volume[index],
                          price: price[index],
                        ),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    );
                  }),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  offset: Offset(3, 5),
                  spreadRadius: 2,
                  blurRadius: 9,
                )
              ], borderRadius: BorderRadius.circular(25), color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Amount",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Item total",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("300",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Delivery fee",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ), Text(
                          " 30",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Divider(
                      color: Colors.grey,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total",
                          style:
                              TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                        ), Text(
                          "330",
                          style:
                              TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            _checkoutbtn(),
          ],
        ),
      ),
    );
  }

  Widget _checkoutbtn() {
    return Container(
        height: 50,
        // width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.black,
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            " Go to Checkout",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ));
  }
}
