import 'package:flutter/material.dart';

class ViewBasket extends StatefulWidget {
  @override
  ViewBasketState createState() => ViewBasketState();
}

class ViewBasketState extends State<ViewBasket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Shopping Basket"),
    ),
    );}
}