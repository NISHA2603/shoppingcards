import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
        child: Container(
          color: Colors.grey,
          child: Column(
            children: [
              _imgWidget(),
              _detailsWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _imgWidget() {
    return Expanded(
      child: Container(
        // height: 200,
        // width: 100,
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
    return Expanded(
      child: Container(
        color: Colors.grey,
        child: Column(
          children: [
            prodName(),
            prodVol(),
            row1(),
            row2(),
          ],
        ),
      ),
    );
  }

  prodName() {
    return Text(
      widget.name,
    );
  }

  prodVol() {
    return Text(widget.Volume);
  }

  row1() {
    return Row(
      children: [_qty(), _price()],
    );
  }

//
  row2() {
    return Row(
      children: [favBtn(), buyNowBtn()],
    );
  }

  Widget favBtn() {
    return Container(
      height: 32,
      width: 32,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
      ),
      child: SvgPicture.asset("assets/icons/heart-solid.svg")
    );
  }

  Widget buyNowBtn() {
    return Container(
        height: 30,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.black,
        ),
        child: Text(
          "Buy Now",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ));
  }

  Widget _qty() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.red,
      ),
      child: Row(
        children: [
          _qtyButton(Icons.remove, Colors.brown),
          Text("1"),
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
    return Text("\$" + widget.Price.toString());
  }
}
