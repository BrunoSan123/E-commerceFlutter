import 'package:ecomer/models/carrinho.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/carrinho.dart';
import '../widties/carrinho_item.dart';

class TelaCar extends StatelessWidget {
  const TelaCar({Key key}) : super(key: key);

  static const routeName = '/cart';

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Carro>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Meu carrinho',
          style: TextStyle(
            fontSize: 30,
            color: Theme.of(context).accentColor,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: ListView.builder(
                  itemCount: cart.items.length,
                  itemBuilder: (ctx, i) => CarItem(
                        cart.items.values.toList()[i].id,
                        cart.items.keys.toList()[i],
                        cart.items.values.toList()[i].preco,
                        cart.items.values.toList()[i].quantidade,
                        cart.items.values.toList()[i].nome,
                      ))),
          FlatButton(
              onPressed: () {},
              child: Text(
                'Checkout',
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ))
        ],
      ),
    );
  }
}
