import 'package:flutter/material.dart';
import './Order_Status.dart';

var item = [1, 1, 1, 1, 1, 1, 1, 1];


class ViewBasket extends StatefulWidget {
  var items;
  var prices;

  ViewBasket(var items1, var prices1) {
    this.items = items1;
    this.prices = prices1;
  }

  @override
  ViewBasketState createState() => ViewBasketState(items, prices);
}

class ViewBasketState extends State<ViewBasket> {

  var items2;
  var items3;
  var TempVal=[];
  var _value = [
    1.0,
    1.0,
    1.0,
    1.0,
    1.0,
    1.0,
    1.0,
    1.0,
    1.0,
    1.0,
    1.0,
    1.0,
    1.0,
    1.0,
    1.0,
    1.0,
    1.0,
    1.0,
    1.0,
    1.0,
    1.0,
    1.0,
    1.0
  ];

  ViewBasketState(var i, var j) {
    this.items2 = i;
    this.items3 = j;
    for(int t=0;t<items2.length;t++){
      TempVal.add(items3[t]);
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Shopping Basket"),
      ),
      body: new ListView.builder(
        itemCount: items2 == null ? 0 : items2.length,
        itemBuilder: (BuildContext context, int index) {
          return new Container(
              child: Column(children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(child: Text(items2[index])),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text("Price"),
                      Text("R ${items3[index]}")
                    ],
                  ),
                ),
                Expanded(
                    child: Row(children: <Widget>[Expanded(child:
                  new IconButton(icon: Icon(Icons.add_circle), onPressed: (){setState(() {
                    item[index]=item[index]+1;
                    items3[index]=items3[index]+TempVal[index];

                  });})),
                  Expanded(child:
                  Text("${item[index]}")),
                  Expanded(child:
                  new IconButton(
                    icon: Icon(Icons.remove_circle),onPressed: (){setState(() {
                      item[index]=item[index]-1;
                      items3[index]=items3[index]-TempVal[index];
                      if (item[index]<0){
                        item[index]=0;
                      }
                      if(items3[index]<0){
                        items3[index]=0.00;
                      }
                    });},
                  ))
                ]))
              ],
            ),
            Divider(),
          ]));
        },
      ),
    floatingActionButton: FloatingActionButton(child:Text("Order"),onPressed: (){Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Order_Status(items3)),
    );},backgroundColor: Colors.blue,),);
  }
}
