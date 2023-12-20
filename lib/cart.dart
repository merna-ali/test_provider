import 'package:flutter/cupertino.dart';

import 'item_model.dart';

class Cart extends ChangeNotifier {
  List<ItemModel> _items =[];
  double _price = 0;

  void addItem(ItemModel itemModel){
    _items.add(itemModel);
    _price += itemModel.price ?? 0;
    notifyListeners();
  }

  void removeitem(ItemModel itemModel){
    _items.remove(itemModel);
    _price -= itemModel.price ?? 0;
    notifyListeners();
  }
  int get count {
    return _items.length;
  }
  double get price {
    return _price;
  }
  List<ItemModel> get basketitem {
    return _items;

  }
}