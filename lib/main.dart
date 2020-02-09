import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: HomePage(title: "Tech Eletra Shop"),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tech Electronix Shop"),
        ),
        body: ShopWidget());

  }
}

class ShopWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Image.asset('assets/xiaomi.jpg'),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            title: Text("Xiaomi Smart Phone"),
                            subtitle: Text('\$900'),
                          ),
                          ListTile(
                            subtitle: Text(
                                'Xiaomi Mi A3 is a mid-range performance oriented smartphone. '
                                    'The excellent battery backup and good storage capacity make the device a perfect buy for consumers. '
                                    'However, it has a hybrid slot and a full HD display, which can be problematic for many users.'),
                          ),
                          RaisedButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.add_shopping_cart, color: Colors.white,),
                            label: Text('Add To Cart', textScaleFactor: 1.0),
                            textColor: Colors.white,
                            color: Colors.deepOrange,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Image.asset('assets/hp-spectre-folio.jpg'),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            title: Text("HP Spectre Folio"),
                            subtitle: Text('\$989'),
                          ),
                          ListTile(
                            subtitle: Text(
                                'HP - Spectre Folio Leather 2-in-1 13.3" Touch-Screen Laptop - Intel Core i7 - 8GB Memory - 256GB Solid '
                                    'State Drive - Cognac Brown'),
                          ),
                          RaisedButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.add_shopping_cart, color: Colors.white,),
                            label: Text('Add To Cart', textScaleFactor: 1.0),
                            textColor: Colors.white,
                            color: Colors.deepOrange,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Image.asset('assets/mikrotek-jumbo.png'),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            title: Text("Microtek UPS"),
                            subtitle: Text('\$1989'),
                          ),
                          ListTile(
                            subtitle: Text(
                                'Microtek UPS SEBz 1000VA Pure Sine Wave Inverter. 4.3. (90) ₹3,9696,59039% off. '
                                    'Microtek Ups 24x7 Hb 725,v2 Pure Sine Wave Inverter.'),
                          ),
                          RaisedButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.add_shopping_cart, color: Colors.white,),
                            label: Text('Add To Cart', textScaleFactor: 1.0),
                            textColor: Colors.white,
                            color: Colors.deepOrange,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ],
    );
  }
}
