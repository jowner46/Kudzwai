import 'package:e_commerce/UserScreens/about_us.dart';
import 'package:e_commerce/UserScreens/address.dart';
import 'package:e_commerce/UserScreens/cart.dart';
import 'package:e_commerce/UserScreens/favorites.dart';
import 'package:e_commerce/UserScreens/history.dart';
import 'package:e_commerce/UserScreens/login.dart';
import 'package:e_commerce/UserScreens/messages.dart';
import 'package:e_commerce/UserScreens/notifications.dart';
import 'package:e_commerce/UserScreens/profile.dart';
import 'package:e_commerce/tools/store.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/UserScreens/itemdetails.dart';


class MyHomePage extends StatefulWidget {
  @override 
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  BuildContext context;
  @override 
  Widget build(BuildContext context) {
    this.context = context;
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Gugulethu"),
        centerTitle: true,
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.favorite,
          color: Colors.white,
          ),
           onPressed: (){
             Navigator.of(context).push(
               new CupertinoPageRoute(builder: (BuildContext context) {
                 return new GuguFavorites();
               })); 
           },
           ),
           new Stack(
             alignment: Alignment.topLeft,
             children: <Widget>[
               new IconButton(icon: new Icon(Icons.chat,
          color: Colors.white,
          ),
           onPressed: (){
             Navigator.of(context).push(
               new CupertinoPageRoute(builder: (BuildContext context) {
                 return new GuguMessages();
               })); 
           },
           ),
           new CircleAvatar(
             radius: 10.0,
             backgroundColor: Colors.red,
             child: new Text(
               "0",
               style: new TextStyle(color: Colors.white, fontSize: 12.0),
               ),
               ),
             ]
           )
        ],
      ),
      body: new Center(
        child: new Column(
          children: <Widget> [
            new Flexible(
              child: new GridView.builder(
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
                   itemCount: storeItems.length,
                   itemBuilder: (BuildContext context, int index) {
                     return new GestureDetector(
                       onTap: () {
                         Navigator.of(context).push(
                           new MaterialPageRoute(builder: (
                             context) => new ItemDetail(
                               itemImage: storeItems[index].itemImage,
                               itemName: storeItems[index].itemName,
                               itemPrice: storeItems[index].itemPrice,
                               itemRating: storeItems[index].itemRating,
                             )));
                       },
                           child: new Card(
                         child: Stack(
                           alignment: FractionalOffset.topLeft,
                           children: <Widget>[
                             new Stack(
                               alignment: FractionalOffset.bottomCenter,
                               children: <Widget>[
                                 new Container(
                                    
                                   decoration: new BoxDecoration(
                                     image: new DecorationImage(
                                       fit: BoxFit.fitWidth,
                                       image: new NetworkImage(
                                         storeItems[index].itemImage),
                                         )
                                   ),
                                   ),
                                  new Container(
                                    height: 35.0,color: Colors.black.withAlpha(100),
                                    child: new Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: new Row(
                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                     children: <Widget>[
                                       new Text("${storeItems[index].itemName.substring(0, 8)}...", 
                                       style: new TextStyle(fontWeight: FontWeight.w700, 
                                       fontSize: 16.0, color: Colors.white),
                                       ),
                                       new Text("USD${storeItems[index].itemPrice}", 
                                       style: new TextStyle(
                                         color: Colors.red[500], fontWeight:
                                         FontWeight.w700),
                                         ),
                                     ],
                                   ),
                                 ),
                                  )
                                ],
                               ),
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                 children: <Widget>[
                                   new Container(
                                     height: 30.0,
                                     width: 50.0,
                                     decoration:new BoxDecoration(
                                       color: Colors.black,
                                       borderRadius: new BorderRadius.only(
                                      topRight: new Radius.circular(5.0),
                                      bottomRight: new Radius.circular(5.0),
                                      ),
                                      ),
                                    child: new Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        new Icon(Icons.star, color: Colors.blue,),
                                        new Text("${storeItems[index].itemRating}",
                                        style: new TextStyle(color: Colors.white),
                                        )
                                      ]
                                    ),
                                   ),
                                   new IconButton(icon: Icon(Icons.favorite_border, color: Colors.blue,
                                   ),
                                   onPressed: () {})
                                 ],
                               )
                           ],
                         )
                       ),
                     );
                   }, 
                  ))
          ],
        )
      ),
      floatingActionButton: new Stack(
        alignment: Alignment.topLeft,
        children: <Widget>[
          new FloatingActionButton(
            onPressed: (){
             Navigator.of(context).push(
               new CupertinoPageRoute(builder: (BuildContext context) {
                 return new GuguCart();
               })); 
           },
          child: new Stack(
            children: <Widget>[
             new Icon(
               Icons.shopping_cart,
               ),
          ],
          ),
          ),
          new CircleAvatar(
             radius: 10.0,
             backgroundColor: Colors.red,
             child: new Text(
               "0",
               style: new TextStyle(color: Colors.white, fontSize: 12.0),
               ),
           ),
        ],
      ),
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new UserAccountsDrawerHeader(accountName: new Text(
              "Mitchelle Ngarandi"), 
              accountEmail: new Text(
                "mitchellengarandi@gmail.com"),
                currentAccountPicture: new CircleAvatar(
                  backgroundColor: Colors.white,
                  child: new Icon(Icons.person),
                  ),
                ),
                new ListTile(
                  leading: new CircleAvatar(
                    child: new Icon(
                      Icons.notifications,
                    color: Colors.white,
                    size: 20.0,
                    ),
                  ),
                  title: new Text("Order Notifications"),
                  onTap: (){
                    Navigator.of(context).push(
                      new CupertinoPageRoute(
                        builder: (BuildContext context) => 
                        new GuguNotifications()));
                  },
                ), 
                new ListTile(
                  leading: new CircleAvatar(
                    child: new Icon(
                      Icons.history,
                    color: Colors.white,
                    size: 20.0,
                    ),
                  ),
                  title: new Text("Order History"),
                  onTap: (){
                    Navigator.of(context).push(
                      new CupertinoPageRoute(
                        builder: (BuildContext context) => 
                        new GuguHistory()));
                  },
                ), 
                new Divider(),
                new ListTile(
                  leading: new CircleAvatar(
                    child: new Icon(
                      Icons.person,
                    color: Colors.white,
                    size: 20.0,
                    ),
                  ),
                  title: new Text("Profile Settings"),
                  onTap: (){
                    Navigator.of(context).push(
                      new CupertinoPageRoute(
                        builder: (BuildContext context) => 
                        new GuguProfile()));
                  },
                ), new ListTile(
                  leading: new CircleAvatar(
                    child: new Icon(
                      Icons.home,
                    color: Colors.white,
                    size: 20.0,
                    ),
                  ),
                  title: new Text("Delivery Address"),
                  onTap: (){
                    Navigator.of(context).push(
                      new CupertinoPageRoute(
                        builder: (BuildContext context) => 
                        new GuguAddress()));
                  },
                ),
                new Divider(),
                new ListTile(
                  trailing: new CircleAvatar(
                    child: new Icon(
                      Icons.live_help,
                    color: Colors.white,
                    size: 20.0,
                    ),
                  ),
                  title: new Text("About Us"),
                  onTap: (){
                    Navigator.of(context).push(
                      new CupertinoPageRoute(
                        builder: (BuildContext context) => 
                        new AboutUs()));
                  },
                ),
                new ListTile(
                  trailing: new CircleAvatar(
                    child: new Icon(
                      Icons.exit_to_app,
                    color: Colors.white,
                    size: 20.0,
                     ),
                  ),
                  title: new Text("Login"),
                  onTap: (){
                    Navigator.of(context).push(
                      new CupertinoPageRoute(
                        builder: (BuildContext context) => 
                        new Login()));
                  },
                ),
          ],
        ),
      ),
    );
  }
}

