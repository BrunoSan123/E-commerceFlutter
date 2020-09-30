import 'package:flutter/material.dart';
import '../widties/categoria.dart';
import '../widties/produtos.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Center(
          child: Text('Categorias',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        SizedBox(
          height: 10,
        ),
        Categoria(),
        Center(
          child: Text(
            'Produtos',
            style: TextStyle(fontSize: 20),
          ),
        ),
        Container(height: 400, child: Produtos())
      ],
    );
  }
}
