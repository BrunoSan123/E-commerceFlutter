import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/carrinho.dart';

class CarItem extends StatelessWidget {
  final String id;
  final String produtoId;
  final double preco;
  final int quantidade;
  final String nome;

  CarItem(this.id, this.produtoId, this.preco, this.quantidade, this.nome);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
        key: ValueKey(id),
        direction: DismissDirection.endToStart,
        background: Container(
          color: Colors.red,
        ),
        onDismissed: (direction) {
          Provider.of<Carro>(context).removeitem(produtoId);
        },
        child: Card(
          child: ListTile(
            leading: CircleAvatar(
              child: FittedBox(
                child: Text('\$$preco'),
              ),
            ),
            title: Text(nome),
            subtitle: Text('Total: \$${(preco * quantidade)}'),
            trailing: Text('$quantidade x'),
          ),
        ));
  }
}
