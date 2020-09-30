import 'package:flutter/material.dart';
import '../models/produtosN.dart';
import 'package:provider/provider.dart';
import '../models/carrinho.dart';

class PagDetalhe extends StatelessWidget {
  /*final String titulo;
  final double preco;
  final String descricao;
  final String img;*/

  //PagDetalhe({this.titulo, this.preco, this.descricao, this.img});
  static const routeName = '/pdt-detalhe';
  @override
  Widget build(BuildContext context) {
    final produtoId = ModalRoute.of(context).settings.arguments as String;
    final loadedPdt = Provider.of<Produts>(context).findById(produtoId);
    final cart = Provider.of<Carro>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedPdt.nome),
      ),
      body: Column(children: <Widget>[
        Container(
            height: 300,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.network(loadedPdt.imgUrl),
            )),
        Text(
          'preço: \$ ${loadedPdt.preco}',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'Descrição: ${loadedPdt.descricao}',
          ),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          cart.addItem(produtoId, loadedPdt.nome, loadedPdt.preco);
        },
        child: Icon(
          Icons.shopping_cart,
          size: 30,
        ),
      ),
    );
  }
}
