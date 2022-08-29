import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';
import 'package:stock_buying_app_assignment/constants.dart';
import 'package:collection/collection.dart';
class StockData extends ChangeNotifier{
  var stocksList = List<int>.filled(kstocksList.length, 0, growable: true); // [0, 0, 0]
  var quantitesList = List<int>.filled(kstocksList.length, 0, growable: true); // [0, 0, 0]
  var addedStocks =  List<int>.filled(kstocksList.length, 0, growable: true); // [0, 0, 0]
  int totalPrice = 0;
  StockData()
  {
    setStockPrice();
  }
  void setStockPrice()
  {
    var time = const Duration(milliseconds: 1000);
    Timer.periodic(time, (timer) {
       for(int i=0;i<kstocksList.length;i++)
         {
           stocksList[i] = Random().nextInt(101);
         }
       setQuantity();
    });
    notifyListeners();

  }

  void setQuantity()
  {
    for(int i=0;i<kstocksList.length;i++)
    {
      if(stocksList[i] < 20)
        {
          quantitesList[i] += 1;
          addedStocks.add(stocksList[i]);
        }

    }

    totalPrice = addedStocks.sum;


    notifyListeners();

  }

}