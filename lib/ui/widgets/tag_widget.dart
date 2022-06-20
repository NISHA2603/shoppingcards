import 'package:flutter/material.dart';

class TagWidget extends StatelessWidget {
  TagWidget({Key? key, required this.pname, p}) : super(key: key);

  final String pname;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white60,
      height: 40.0,
      width: 150,
      child: Row(
        children: [
          Text(
            pname,
            style: TextStyle(fontSize: 20),
            //textAlign: TextAlign.center,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.cancel),
           // alignment: Alignment.bottomRight,
          ),
        ],

      ),
      
    );
  }
}
