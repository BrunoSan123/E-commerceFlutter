import 'package:flutter/material.dart';
import './categoria_card.dart';

class Categoria extends StatelessWidget {
  const Categoria({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            //categoria 1
            CategoriaCard(
                Icon(
                  Icons.book,
                  size: 40,
                ),
                'Livro'),
            //categoria 2
            CategoriaCard(
                Icon(
                  Icons.computer,
                  size: 40,
                ),
                'Computador'),
            //categoria 3
            CategoriaCard(
                Icon(
                  Icons.games,
                  size: 40,
                ),
                'Jogos'),
            //categoria 4
            CategoriaCard(
                Icon(
                  Icons.camera,
                  size: 40,
                ),
                'cameras'),
            //categoria 5
            CategoriaCard(
                Icon(
                  Icons.sd_card,
                  size: 40,
                ),
                'peças'),
            //categoria 6
            CategoriaCard(
                Icon(
                  Icons.airport_shuttle,
                  size: 40,
                ),
                'Viagens')
          ],
        ));
  }
}
