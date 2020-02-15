import 'package:flutter/material.dart';

class Store{
  String itemName; 
  double itemPrice; 
  String itemImage; 
  double itemRating;
  
  Store.items({
    this.itemName, 
    this.itemPrice, 
    this.itemImage, 
    this.itemRating
    });
    
    }

    List<Store> storeItems = [
      Store.items(
        itemName: "pink Boot",
        itemPrice: 150.00,
        itemImage: "http://bit.ly/38blJwS",
        itemRating: 0.0
      ),

      Store.items(
        itemName: "Black Boot",
        itemPrice: 150.00,
        itemImage: "http://bit.ly/2SuMnKl",
        itemRating: 0.0
        ),
      Store.items(
        itemName: "timberland",
        itemPrice: 150.00,
        itemImage: "http://bit.ly/2vfNohw",
        itemRating: 0.0
      ),

      Store.items(
        itemName: "Bryant 24",
        itemPrice: 150.00,
        itemImage: "http://bit.ly/2veTr68",
        itemRating: 0.0
        ),
      Store.items(
        itemName: "Bryant 8",
        itemPrice: 150.00,
        itemImage: "http://bit.ly/396u7Oe",
        itemRating: 0.0
      ),

      Store.items(
        itemName: "Lebron 23",
        itemPrice: 150.00,
        itemImage: "http://bit.ly/37aj8Cb",
        itemRating: 0.0
        ),
       Store.items(
        itemName: "Jordan 23",
        itemPrice: 150.00,
        itemImage: "http://bit.ly/3bkMWPC",
        itemRating: 0.0
      ),

      Store.items(
        itemName: "Trousers",
        itemPrice: 150.00,
        itemImage: "http://bit.ly/2RXkgVi",
        itemRating: 0.0
        ),
      Store.items(
        itemName: "Air Force",
        itemPrice: 150.00,
        itemImage: "http://bit.ly/2H73RHv",
        itemRating: 0.0
      ),

      Store.items(
        itemName: "Jordan 1",
        itemPrice: 150.00,
        itemImage: "http://bit.ly/378QgtX",
        itemRating: 0.0
        ),
    ];