import 'package:flutter/material.dart';

class MyCartWidget extends StatelessWidget {
  const MyCartWidget(
      {Key? key,
      required this.img,
      required this.name,
      required this.volume,
      required this.price})
      : super(key: key);
  final String img;
  final String name;
  final String volume;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
           padding: EdgeInsets.all(12),
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(3,2),
                spreadRadius: 2,
                blurRadius: 9,

              )
            ],
            borderRadius: BorderRadius.circular(25),
            color: Colors.white
          ),
          child: Row(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  // color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage(img), fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              _content()
            ],
          ),
        ),
        _cancelBut(),
      ],
    );
  }

  Widget _cancelBut() {
    return Positioned(
      top: 15.0,
      right: 15.0,
      child: CircleAvatar(
        backgroundColor: Colors.white,
        child: Icon(
          Icons.cancel,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _content() {
    return Expanded(
      child: Container(
        // color: Colors.amber,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _productName(),
            SizedBox(
              height: 5.0,
            ),
            _prodDetails(),
            SizedBox(
              height: 10.0,
            ),
            _qty()
          ],
        ),
      ),
    );
  }

  Widget _productName() {
    return Text(
      name,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
    );
  }

  Widget _prodDetails() {
    return Text(volume);
  }

  Widget _qty() {
    return Container(
      // color: Colors.blueAccent,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _qtyButton(Icons.remove, Colors.brown),
          SizedBox(
            width: 20.0,
            child: Center(child: Text("1")),
          ),
          _qtyButton(Icons.add, Colors.black),
          Spacer(),
          _priceWidget()
        ],
      ),
    );
  }
  Widget _priceWidget() {
    return Container(
      padding: EdgeInsets.all(8),
      alignment: Alignment.center,
      // width: 55,
      // height: 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.amber,
      ),
      child: Text("\$" + price),
    );
  }

  Widget _qtyButton(icon, color) {
    return GestureDetector(
      onTap: () {},
      child: CircleAvatar(
        radius: 10,
        child: Icon(
          icon,
          size: 20,
        ),
        backgroundColor: color,
      ),
    );
  }
}
