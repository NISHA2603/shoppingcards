import 'package:flutter/material.dart';
import 'package:shoppingcards/ui/screens/body.dart';
import 'package:shoppingcards/ui/screens/search_screens.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {

  @override
  Widget build(BuildContext context) {
    return Body();
  }
}
