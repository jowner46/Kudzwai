import 'package:e_commerce/UserScreens/cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemDetail extends StatefulWidget {
  String itemName;
  String itemImage;
  String itemSubName;
  double itemPrice;
  double itemRating;

  ItemDetail(
    {this.itemName,
    this.itemImage,
    this.itemRating,
    this.itemPrice,
    this.itemSubName,
  });

  @override 
  _ItemDetailState createState() => _ItemDetailState();
}

class _ItemDetailState extends State<ItemDetail> {
  @override 
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Item Detail"),
        centerTitle: false,
        iconTheme: IconThemeData(color: Colors.white),
        ),
        body: new Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            new Container(
              height: 300.0,
              decoration: new BoxDecoration(
                color: Colors.grey.withAlpha(50),
                  borderRadius: new BorderRadius.only(
                    bottomRight: new Radius.circular(120.0),
                    bottomLeft: new Radius.circular(120.0),
                    )),
              ),
              new Container(
              height: 300.0,
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new NetworkImage(widget.itemImage),
                  fit: BoxFit.fitHeight),
                  borderRadius: new BorderRadius.only(
                    bottomRight: new Radius.circular(120.0),
                    bottomLeft: new Radius.circular(120.0),
                    )),
              ),
              new SingleChildScrollView(
                child: new Column(
                  children: <Widget>[
                    new SizedBox(
                      height:50.0,
                    ),
                    new Card(
                      child:new Container(
                        width:screenSize.width,
                        margin: new EdgeInsets.only(left: 20.0, right: 20.0),
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new SizedBox(
                              height:10.0,
                            ),
                            new Text(
                              widget.itemName,
                              style: new TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.w700),
                                ),
                                new SizedBox(
                                  height: 10.0,
                                ),
                                new Text(
                                  "Item Sub Name",
                                  style: new TextStyle(
                                    fontSize: 14.0, fontWeight: FontWeight.w400
                                  ),
                                  ),
                                  new SizedBox(
                                    height: 10.0
                                  ),
                                  new Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      new Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          new Icon(
                                            Icons.star,
                                            color: Colors.blue,
                                            size: 20.0,
                                          ),
                                          new SizedBox(
                                            height: 10.0,
                                          ),
                                        ]
                                      )
                                    ],
                                  )
                          ],)
                      )
                    ),
                    new Card(
                      child: new Container(
                        width: screenSize.width,
                        height: 150.0,
                        child: new ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return new Stack(
                              alignment: Alignment.center,
                              children: <Widget>[
                                new Container(
                                  margin:
                                  new EdgeInsets.only(left: 5.0, right: 5.0),
                                  height: 140.0,
                                  width: 100.0,
                                  child: new Image.network(widget.itemImage),
                                ),
                                new Container(
                                  margin:
                                  new EdgeInsets.only(left: 5.0, right: 5.0),
                                  height: 140.0,
                                  width: 100.0,
                                  decoration: new BoxDecoration(
                                    color: Colors.grey.withAlpha(50)),
                                ),
                              ],
                            );
                          },
                        ),
                        ),
                    ),
                    new Card(
                      child: new Container(
                        width: screenSize.width,
                        margin: new EdgeInsets.only(left: 20.0, right: 20.0),
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new SizedBox(
                              height: 10.0,
                            ),
                            new Text(
                              "Description",
                              style: new TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.w700),
                                ),
                                new SizedBox(
                                  height: 10.0,
                                ),
                                new Text("My item full information",
                                style: new TextStyle(
                                  fontSize: 14.0, fontWeight: FontWeight.w400),
                                  ),
                                  new SizedBox(
                                    height: 10.0,
                                  ),
                                  new Card(
                                    child: new Container(
                                      width:screenSize.width,
                                      margin: new EdgeInsets.only(left: 20.0, right: 20.0),
                                      child: new Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          new SizedBox(
                                            height: 10.0,
                                            ),
                                            new Text(
                                              "Colors",
                                              style: new TextStyle(
                                                fontSize: 18.0, fontWeight: FontWeight.w700),
                                                ),
                                                new SizedBox(
                                                  height: 10.0,
                                                ),
                                                new SizedBox(
                                                  height: 50.0,
                                                  child: new ListView.builder(
                                                    scrollDirection: Axis.horizontal,
                                                    itemCount: 4,
                                                    itemBuilder: (context, index) {
                                                      return Padding(
                                                        padding: const EdgeInsets.all(4.0),
                                                        child: new ChoiceChip(
                                                          label: new Text("Color ${index}"),
                                                           selected: false),
                                                           );
                                                    }),
                                                ),
                                                new SizedBox(
                                                  height: 10.0,
                                                ),
                                                new SizedBox(
                                                  height: 50.0,
                                                  child:new ListView.builder(
                                                    scrollDirection: Axis.horizontal,
                                                    itemCount: 4,
                                                    itemBuilder: (context, index) {
                                                      return Padding(
                                                        padding: const EdgeInsets.all(4.0),
                                                        child: new ChoiceChip(label: new Text("Sizes ${index}"),
                                                         selected: false),
                                                         );
                                                    }), 
                                                ),
                                                new SizedBox(
                                                  height: 10.0,
                                                ),
                                                new Text("Sizes",
                                                style:new TextStyle(
                                                  fontSize: 18.0, fontWeight: FontWeight.w700),
                                                  ),new SizedBox(
                                                    height: 10.0,
                                                  ),
                                                  new Row(
                                                    mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                                    children: <Widget>[
                                                      new CircleAvatar(
                                                        child: new Icon(Icons.remove),
                                                      ),
                                                      new Text("0"),
                                                      new CircleAvatar(
                                                        child: new Icon(Icons.add),
                                                      ),
                                                    ],
                                                  ),
                                                  new SizedBox(
                                                    height:50.0,
                                                  ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                          )
                      ),
                    )
                    ],
                    ), 
              ),
          ],
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
          ],
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: new BottomAppBar(
            color: Theme.of(context).primaryColor,
            elevation: 0.0,
            shape: new CircularNotchedRectangle(),
            notchMargin: 5.0,
            child: new Container(
              height: 50.0,
              decoration: new BoxDecoration(color: Theme.of(context).primaryColor),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Container(
                    width: (screenSize.width - 20) / 2,
                    child: new Text("ADD TO FAVORITES",
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700),
                      ),
                  ),
                  new Container(
                    width: (screenSize.width - 20) / 2,
                    child: new Text(
                      "ORDER NOW",
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700
                      ),
                      ),
                  ),
                ],
              ),
              ),
          ),
    );
    
  }
}