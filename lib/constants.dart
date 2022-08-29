import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stock_buying_app_assignment/DataFiles/StockStructure.dart';
import 'package:stock_buying_app_assignment/stockWidget.dart';
TextStyle kfontStyle = GoogleFonts.rocknRollOne(
  fontSize: 32,
  fontWeight: FontWeight.w400,
  color: Colors.black,
);


List<SingleStockWidget> kstocksList = [
  SingleStockWidget(stock: Stock(title: 'Apple',icData: Icons.apple,), idx: 0,),
  SingleStockWidget(stock: Stock(title: 'Facebook',icData: Icons.facebook,),idx: 1,),
  SingleStockWidget(stock: Stock(title: 'Google',icData: Icons.g_mobiledata,),idx: 2,),
  SingleStockWidget(stock: Stock(title: 'Snapchat',icData: Icons.snapchat,),idx: 3,),

];
