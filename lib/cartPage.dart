import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/cart.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    var cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Items',
        ),
      ),
      body: ListView.builder(itemCount:cart.basketitem.length,itemBuilder: (context,index){
        return  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(cart.basketitem[index].name ?? ''),
            IconButton(
              onPressed: () {
                cart.removeitem(cart.basketitem[index]);
              },
              icon: Icon(
                Icons.remove,
                color: Colors.black,
              ),
            )
          ],
        );
      }),
    );
  }
}
