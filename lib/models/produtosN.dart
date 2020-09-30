import 'package:flutter/foundation.dart';

class Produt with ChangeNotifier {
  final String id;
  final String categoria;
  final String nome;
  final String descricao;
  final String imgUrl;
  final double preco;

  Produt(
      {@required this.id,
      @required this.categoria,
      @required this.nome,
      @required this.descricao,
      @required this.imgUrl,
      @required this.preco});
}

class Produts with ChangeNotifier {
  List<Produt> _items = [
    Produt(
        id: '1',
        nome: 'PlayStation 5',
        imgUrl:
            'https://a-static.mlcdn.com.br/618x463/console-playstation-5-ps5-sony/magazineluiza/043079500/75ede8c14ef0d8c50a5b120067c5cb91.jpg',
        descricao:
            'Novo console do Playstation lançado pela sony,compotencial gráfico muito superior',
        preco: 4000,
        categoria: 'Games'),
    Produt(
        id: '2',
        nome: 'Conto da Aia',
        imgUrl:
            'https://a-static.mlcdn.com.br/618x463/livro-o-conto-da-aia/magazineluiza/223256200/f3e718a67ba99b7680fea1940cc4040f.jpg',
        descricao: 'Livro o Conto da Aia,por Margarete Atwood',
        preco: 50,
        categoria: 'Livros'),
    Produt(
        id: '3',
        nome: 'Notebook Asus',
        imgUrl:
            'https://samsungbr.vtexassets.com/arquivos/ids/311066-800-auto?width=800&height=auto&aspect=true',
        descricao: 'notebook da marca Asus',
        preco: 4000,
        categoria: 'computador'),
  ];

  List<Produt> get items {
    return [..._items];
  }

  Produt findById(String id) {
    return _items.firstWhere((pdt) => pdt.id == id);
  }
}
