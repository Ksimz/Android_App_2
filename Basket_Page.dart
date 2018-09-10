import 'package:flutter/material.dart';


class IncrementWidget extends StatefulWidget{
  @override
  SuperWidgetState createState()=>SuperWidgetState();
}

class SuperWidgetState extends State<IncrementWidget>
{
  @override
  Widget build(BuildContext context)
  {
    return new Container(child:Icon(Icons.add_circle),color: Colors.blue,);
  }

}

class DecrementWidget extends StatefulWidget{
  @override
  DecrementWidgetState createState()=>DecrementWidgetState();
}

class DecrementWidgetState extends State<DecrementWidget>
{
    @override
    Widget build (BuildContext context)
    {
       return new Icon(Icons.remove_circle,color: Colors.blue,);
    }
}

class ViewBasket extends StatefulWidget {
  var items;
  var prices;
  ViewBasket(var items1,var prices1)
  {
    this.items=items1;
    this.prices=prices1;
  }
  @override
  ViewBasketState createState() => ViewBasketState(items,prices);
}

class ViewBasketState extends State<ViewBasket> {
  var items2;
  var items3;
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
  ViewBasketState(var i,var j)
  {
    this.items2=i;
    this.items3=j;

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
              child: Column(children: <Widget>[Row(
                children: <Widget>[
                  Expanded(child: Text(items2[index])),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Text("Price"),
                        Text("R ${ items3[index]}")
                      ],
                    ),
                  ),
                  Expanded(
                      child: Row(children: <Widget>[
                            IncrementWidget(),Text(" 1 "),DecrementWidget()
                      ]))
                ],
              ),
               Divider() ,
           ]) );
          },
        ),

    );}
}