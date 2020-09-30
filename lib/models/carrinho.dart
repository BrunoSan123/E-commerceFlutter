import 'package:flutter/cupertino.dart';

class ItemCarrinho {
  final String id;
  final String nome;
  final int quantidade;
  final double preco;

  ItemCarrinho(
      {@required this.id,
      @required this.nome,
      @required this.preco,
      @required this.quantidade});
}

class Carro with ChangeNotifier {
  Map<String, ItemCarrinho> _items = {};

  Map<String, ItemCarrinho> get items {
    return {..._items};
  }

  int get intemCount {
    return _items.length;
  }

  void addItem(String pdid, String nome, double preco) {
    if (_items.containsKey(pdid)) {
      _items.update(
          pdid,
          (CarrinhoEsxistente) => ItemCarrinho(
              id: DateTime.now().toString(),
              nome: CarrinhoEsxistente.nome,
              preco: CarrinhoEsxistente.preco,
              quantidade: CarrinhoEsxistente.quantidade + 1));
    } else {
      _items.putIfAbsent(
          pdid,
          () => ItemCarrinho(
              id: DateTime.now().toString(),
              nome: nome,
              preco: preco,
              quantidade: 1));
    }
    notifyListeners();
  }

  void removeitem(String id) {
    _items.remove(id);
    notifyListeners();
  }

  void removeItemUnico(String id) {
    if (!_items.containsKey(id)) {
      return;
    } else if (_items[id].quantidade > 1) {
      _items.update(
          id,
          (CarrinhoEsxistente) => ItemCarrinho(
              id: DateTime.now().toString(),
              nome: CarrinhoEsxistente.nome,
              preco: CarrinhoEsxistente.preco,
              quantidade: CarrinhoEsxistente.quantidade - 1));
    }
    notifyListeners();
  }

  void limpar() {
    _items = {};
    notifyListeners();
  }
}
