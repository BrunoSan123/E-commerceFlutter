import 'package:ecomer/models/produtosN.dart';
import 'package:ecomer/telas/pdt_detalhes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/produtosN.dart';
import '../models/carrinho.dart';

class PdtItem extends StatelessWidget {
  final String nome;
  final String imgUrl;

  PdtItem({this.nome, this.imgUrl});
  @override
  Widget build(BuildContext context) {
    final pdt = Provider.of<Produt>(context);
    final cart = Provider.of<Carro>(context);
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(PagDetalhe.routeName, arguments: pdt.id);
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridTile(
          child: Image.network(imgUrl),
          footer: GridTileBar(
            title: Text(nome),
            trailing: IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  Scaffold.of(context).showSnackBar(SnackBar(
                    duration: Duration(seconds: 3),
                    content: Text('Adicionado ao Carrinho'),
                  ));
                  cart.addItem(pdt.id, pdt.nome, pdt.preco);
                }),
            backgroundColor: Colors.black87,
          ),
        ),
      ),
    );
  }
}
