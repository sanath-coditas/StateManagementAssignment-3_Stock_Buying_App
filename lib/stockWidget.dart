import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'DataFiles/data.dart';
import 'constants.dart';
import 'DataFiles/StockStructure.dart';
class SingleStockWidget extends StatelessWidget {
  Stock stock;
  int idx;
  SingleStockWidget({
    Key? key,
    required this.stock,
    required this.idx,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/4.5,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child:
      Column(
          children: [
            const SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.all(10),
              width: 343,
              height: 158,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFFAADE98),
              ),
              child: Row(
                children:  [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(stock.icData,
                      color: Colors.black,
                      size: 60,
                    ),
                  ),
                  const SizedBox(width: 20,),
                  Expanded(child: FittedBox(
                      fit: BoxFit.fill,
                      child: Text(stock.title,style: kfontStyle,
                      ))),
                  const SizedBox(width: 30,),
                  Expanded(child: Text('\$${Provider.of<StockData>(context).stocksList[idx].toString()}',style: kfontStyle,))
                ],
              ),
            ),
          ]
      ),
    );
  }
}