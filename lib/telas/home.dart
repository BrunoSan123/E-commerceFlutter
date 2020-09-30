import 'package:ecomer/telas/carrinho_tela.dart';
import 'package:ecomer/widties/home_body.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../telas/carrinho_tela.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          title: Text('Lojinha flutter'),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  size: 30,
                ),
                onPressed: () =>
                    Navigator.of(context).pushNamed(TelaCar.routeName))
          ],
        ),
        body: HomeBody());
  }
}
