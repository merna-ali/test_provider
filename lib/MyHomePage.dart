import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/cartPage.dart';
import 'cart.dart';
import 'item_model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<ItemModel> foodMenu = [
    ItemModel(
      name: 'Vegetable Pizza',
      price: 120.0,
    ),
    ItemModel(
      name: 'Mix Pizza',
      price: 240.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
          actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage(),));
          }, icon: Icon(Icons.add_shopping_cart),),

    Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25, top: 15),
      child: Text('${cart.price}'),
    )
    ],
    ),
    body: ListView.builder(
    itemCount: foodMenu.length,
    itemBuilder: (context, index) {
    return Container(
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Text(foodMenu[index].name ?? ''),
    IconButton(
    onPressed: () {
    cart.addItem(foodMenu[index]);
    },
    icon: Icon(
    Icons.add,
    color: Colors.black,
    ),
    )
    ],
    ),
    );
    })
    ,
    );
  }
}

// class Model extends ChangeNotifier {
//   String name = "mernda";
//   String number = '01210213223';
//
//   changeName() {
//     name = "merna";
//     notifyListeners();
//   }
//
//   changeNumber() {
//     number = "012102565255";
//     notifyListeners();
//   }
// }
