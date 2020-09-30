import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/produtosN.dart';
import './pdt.item.dart';

class Produtos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ProductData = Provider.of<Produts>(context);
    final pdts = ProductData.items;

    return GridView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        itemCount: pdts.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
            value: pdts[i],
            child: PdtItem(nome: pdts[i].nome, imgUrl: pdts[i].imgUrl)));
  }
}
