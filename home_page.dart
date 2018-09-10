import 'package:flutter/material.dart';
import './Basket_Page.dart';

class OrderPage extends StatefulWidget {
  @override
  OrderPageState createState() => OrderPageState();
}

class OrderPageState extends State<OrderPage> {

  var Choices=[false,false,false,false,false,false,false];
  var Items  =["Small Fries","Large Fries","XLarge Fries","Russian Roll","Chicken Burger","Beef Burger","4 Wings"];
  var Prices =[8.00,16.00,20.00,10.00,18.00,20.00,20.00];
  var Basket = new List();
  var AddPrices = new List();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Place An Order"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: CheckboxListTile(
                title: Text("Small Fries"),
                subtitle: Text("Price R8.00"),
                value: Choices[0],
                activeColor: Colors.redAccent,
                onChanged: (bool value) {
                  setState(() {
                    if (value == true) {
                      Basket.add(Items[0]);
                      AddPrices.add(Prices[0]);
                      Choices[0] = true;
                    } else {
                      Basket.remove(Items[0]);
                      AddPrices.remove(Prices[0]);
                      Choices[0] = false;
                    }
                  });
                }),
          ),
          Divider(),
          Container(
            child: CheckboxListTile(
                title: Text("Large Fries"),
                subtitle: Text("Price R16.00"),
                value: Choices[1],
                activeColor: Colors.redAccent,
                onChanged: (bool value) {
                  setState(() {
                    if (value == true) {
                      Basket.add(Items[1]);
                      AddPrices.add(Prices[1]);
                      Choices[1] = true;
                    } else {
                      Basket.remove(Items[1]);
                      AddPrices.remove(Prices[1]);
                      Choices[1] = false;
                    }
                  });
                }),
          ),
          Divider(),
          Container(
            child: CheckboxListTile(
                title: Text("XLarge Fries"),
                subtitle: Text("Price R20.00"),
                value: Choices[2],
                activeColor: Colors.redAccent,
                onChanged: (bool value) {
                  setState(() {
                    if (value == true) {
                      Basket.add(Items[2]);
                      AddPrices.add(Prices[2]);
                      Choices[2] = true;
                    } else {
                      Basket.remove(Items[2]);
                      AddPrices.remove(Prices[2]);
                      Choices[2] = false;
                    }
                  });
                }),
          ),
          Divider(),
          Container(
            child: CheckboxListTile(
                title: Text("Russian Roll"),
                subtitle: Text("Price R10.00"),
                value: Choices[3],
                activeColor: Colors.redAccent,
                onChanged: (bool value) {
                  setState(() {
                    if (value == true) {
                      Basket.add(Items[3]);
                      AddPrices.add(Prices[3]);
                      Choices[3] = true;
                    } else {
                      Basket.remove(Items[3]);
                      AddPrices.remove(Prices[3]);
                      Choices[3] = false;
                    }
                  });
                }),
          ),
          Divider(),
          Container(
            child: CheckboxListTile(
                title: Text("Chicken Burger"),
                subtitle: Text("Price R18.00"),
                value: Choices[4],
                activeColor: Colors.redAccent,
                onChanged: (bool value) {
                  setState(() {
                    if (value == true) {
                      Basket.add(Items[4]);
                      AddPrices.add(Prices[4]);
                      Choices[4] = true;
                    } else {
                      Basket.remove(Items[4]);
                      AddPrices.remove(Prices[4]);
                      Choices[4] = false;
                    }
                  });
                }),
          ),
          Divider(),
          Container(
            child: CheckboxListTile(
                title: Text("Beef Burger"),
                subtitle: Text("Price R20.00"),
                value: Choices[5],
                activeColor: Colors.redAccent,
                onChanged: (bool value) {
                  setState(() {
                    if (value == true) {
                      Basket.add(Items[5]);
                      AddPrices.add(Prices[5]);
                      Choices[5] = true;
                    } else {
                      Basket.remove(Items[5]);
                      AddPrices.remove(Prices[5]);
                      Choices[5] = false;
                    }
                  });
                }),
          ),
          Divider(),
          Container(
            child: CheckboxListTile(
                title: Text("4 Wings"),
                subtitle: Text("Price R20.00"),
                value: Choices[6],
                activeColor: Colors.redAccent,
                onChanged: (bool value) {
                  setState(() {
                    if (value == true) {
                      Basket.add(Items[6]);
                      AddPrices.add(Prices[6]);
                      Choices[6] = true;
                    } else {
                      Basket.remove(Items[6]);
                      AddPrices.remove(Prices[6]);
                      Choices[6] = false;
                    }
                  });
                }),
          )
          ,
          Divider(),
          Container(
            child: Center(
                child: RaisedButton(
                  onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ViewBasket(Basket,AddPrices)),
                  );},
                  child: Text("View Basket"),
                )),
            padding: const EdgeInsets.all(10.0),
          )
        ],
      ),
    );
  }
}