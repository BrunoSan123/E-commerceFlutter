import 'package:ecomer/models/carrinho.dart';
import 'package:ecomer/models/produtosN.dart';
import 'package:ecomer/telas/pdt_detalhes.dart';
import 'package:flutter/material.dart';
import './telas/home.dart';
import 'package:provider/provider.dart';
import './models/carrinho.dart';
import './telas/carrinho_tela.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Produts(),
        ),
        ChangeNotifierProvider.value(
          value: Carro(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'E-commerce em Flutter',
        theme: ThemeData(primaryColor: Colors.teal, accentColor: Colors.white),
        home: Home(),
        routes: {
          PagDetalhe.routeName: (ctx) => PagDetalhe(),
          TelaCar.routeName: (ctx) => TelaCar(),
        },
      ),
    );
  }
}
