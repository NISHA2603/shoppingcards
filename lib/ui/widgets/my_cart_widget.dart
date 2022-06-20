import 'package:flutter/material.dart';

class MyCartWidget extends StatelessWidget {
  const MyCartWidget(
      {Key? key, required this.img, required this.name, required this.volume})
      : super(key: key);

  final String img;
  final String name;
  final String volume;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            // color: Colors.brown,
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
              _content()
            ],
          ),
        ),
        _cancelBut()
      ],
    );
  }

  Widget _cancelBut() {
    return Positioned(
      top: 5.0,
      right: 10.0,
      child: CircleAvatar(
        backgroundColor: Colors.white,
        child: Icon(
          Icons.cancel_sharp,
          color: Colors.grey,
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
          children: [_productName(), _prodDetails(), _qty()],
        ),
      ),
    );
  }

  Widget _productName() {
    return Text(name);
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
      // color: Colors.amber,
      child: Text("\$220"),
    );
  }

  Widget _qtyButton(icon, color) {
    return GestureDetector(
      onTap: () {},
      child: CircleAvatar(
        radius: 13,
        child: Icon(icon),
        backgroundColor: color,
      ),
    );
  }
}
