import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:shoppingcards/ui/screens/search_screens.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen(
      {Key? key,
      required this.name,
      required this.img,
      required this.Volume,
      required this.Price})
      : super(key: key);
  final String name;
  final String img;
  final String Volume;
  final String Price;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(alignment: Alignment.topLeft, children: [
          Container(
            color: Colors.white60,
            child: Column(
              children: [
                _imgWidget(),
                _detailsWidget(),
              ],
            ),
          ),
          IconButton(
              onPressed: () {
                Get.to(SearchScreen());
              },
              icon: Icon(Icons.arrow_back)),
        ]),
      ),
    );
  }

  Widget _imgWidget() {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(widget.img),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _detailsWidget() {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          prodName(),
          SizedBox(
            height: 10.0,
          ),
          prodVol(),
          SizedBox(
            height: 30.0,
          ),
          row1(),
          SizedBox(
            height: 15.0,
          ),
          row2(),
        ],
      ),
    );
  }

  prodName() {
    return Text(
      widget.name,
      style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 30.0),
    );
  }

  prodVol() {
    return Text(widget.Volume);
  }

  row1() {
    return Container(
      // color: Colors.red,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Expanded(child: _qty()),
          // Spacer(),
          Expanded(child: _price())],
      ),
    );
  }

//
  row2() {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Expanded(child: favBtn()),
        Spacer(),
        buyNowBtn()],
    );
  }

  Widget favBtn() {
    return Container(
       height: 45,
      //  width: 15,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.black45)),
      child: Icon(Icons.monitor_heart),
    );
  }

  Widget buyNowBtn() {
    return Container(
         height: 50,
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.black,
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            "Buy Now",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ));
  }

  Widget _qty() {
    return Container(
      // width: 180,
       height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.amber,
      ),
      child: Row(
        children: [
          SizedBox(
            width: 30.0,
          ),
          _qtyButton(Icons.remove, Colors.brown),
          SizedBox(
            width: 30.0,
          ),
          Text("1"),
          SizedBox(
            width: 30.0,
          ),
          _qtyButton(Icons.add, Colors.black),
        ],
      ),
    );
  }
  Widget _qtyButton(icon, color) {
    return GestureDetector(
      onTap: () {},
      child: Icon(icon),
    );
  }
  Widget _price() {
    return Container(
      alignment: Alignment.center,
      // color: Colors.red,
      child: Text("\$" + widget.Price.toString(),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
          )),
    );
  }
}
