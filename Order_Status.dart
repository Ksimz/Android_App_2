import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Order_Status extends StatefulWidget{
  var prices1;
  Order_Status(var simz){
    this.prices1=simz;
  }
  @override
  Order_Status_State createState()=>Order_Status_State(prices1);
}

class Order_Status_State extends State<Order_Status>{
  final TextEditingController controller1= TextEditingController();
  final TextEditingController controller2 = TextEditingController();
  final TextEditingController controller3 = TextEditingController();

  var prices;
  double cost=0.00;

   Order_Status_State(var Prices2){
     this.prices=Prices2;
     for(int i=0;i<prices.length;i++){
       cost=cost+prices[i];
     }
   }

  @override
  Widget build(BuildContext context){
    return Scaffold(appBar: AppBar(title: Text("Order Status"),),body: ListView(children: <Widget>[Container(
      child:
      Row(children: <Widget>[Expanded(child: Text("Order Number ")),Expanded(child: Text("1"))],),
      padding: const EdgeInsets.all(10.0),
    ),Divider(),Container(
      child:
      Row(children: <Widget>[Expanded(child: Text("Amount Due  ")),Expanded(child: Text("R${cost}"))],),
      padding: const EdgeInsets.all(10.0),
    ),Divider(),Container(
      child:
      Row(children: <Widget>[Expanded(child: Text("Order Status")),Expanded(child: Text("Pending"))],),
      padding: const EdgeInsets.all(10.0),
    ),
    Divider()
    ,
    Center(child:
    new QrImage(
      data: "1234567890",
      size: 200.0,
    ),)],),);
  }

}