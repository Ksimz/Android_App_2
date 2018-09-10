import 'package:flutter/material.dart';
import './create_account.dart';
import './home_page.dart';
import './Basket_Page.dart';

void main() {
  runApp(MaterialApp(title: "SIR'BILL FOODS", home:   MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var Array1;
  var Array2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SIR'BILL FOODS"),
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Kudzai Simau"),
              accountEmail: new Text("kudziesimz@gmail.com"),
              decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image:
                    new ExactAssetImage("assets/603267744-612x612.jpg"),
                    fit: BoxFit.cover,
                  )),
            ),
            new ListTile(
                title: new Text("Home"), trailing: new Icon(Icons.home),onTap: (){
                Navigator.push(
                   context,
                 MaterialPageRoute(builder: (context) => OrderPage()),
              );
            },),
            new Divider(),
            new ListTile(
                title: new Text("Shopping Basket"),
                trailing: new Icon(Icons.add_shopping_cart),onTap:(){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ViewBasket(Array1,Array2)),
              );
            } ,),

            new Divider(),
            new ListTile(
                title: new Text("View Orders"),
                trailing: new Icon(Icons.fastfood),onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OrderPage()),
              );
            },),
            new Divider(),
            new ListTile(
                title: new Text("Close"), trailing: new Icon(Icons.close)),
            new Divider(),
            new ListTile(
                title: new Text("Help"), trailing: new Icon(Icons.help))
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          Card(
              child: Image
                  .asset("assets/603267744-612x612.jpg")),
          Container(
            child: TextField(
              decoration: InputDecoration(labelText: "User Name"),
              onSubmitted: (String str) {
                setState(() {});
              },
            ),
            padding: const EdgeInsets.all(10.0),
          ),
          Container(
            child: TextField(
              decoration: InputDecoration(labelText: "Password"),
              onSubmitted: (String str1) {
                setState(() {});
              },
            ),
            padding: const EdgeInsets.all(10.0),
          ),
          Container(
            child: Center(
              child: RaisedButton(
                onPressed: () {
                },
                child: Text("Login"),
              ),
            ),
          ),
          Container(
            child: Text(' '),
          ),
          Container(
            child: Center(
              child: RaisedButton(
                onPressed: () {
                },
                child: Text("Create Account"),
              ),
            ),
          )
        ],
      ),

    );
  }
}