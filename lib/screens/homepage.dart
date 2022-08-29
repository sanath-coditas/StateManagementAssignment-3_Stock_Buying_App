import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_buying_app_assignment/DataFiles/data.dart';
import '../constants.dart';
import 'package:collection/collection.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          centerTitle: false,
          title: Text(
            'Portfolio',
            style: kfontStyle,
          ),
        ),
        body: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.5,
                  child: ListView(
                    children: kstocksList,
                  ),
                ),
                Text(
                  'Quantity: ${Provider.of<StockData>(context).quantitesList.sum.toString()}',
                  style: kfontStyle,
                ),
                Text(
                  'Total Price: ${Provider.of<StockData>(context).totalPrice.toString()}',
                  style: kfontStyle,
                ),
              ],
            )),
      ),
    );
  }
}
