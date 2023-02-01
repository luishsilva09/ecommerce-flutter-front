import 'package:flutter/material.dart';

import 'package:ecommerce/components/cart_products.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text("Carrinho"),
        actions: const <Widget>[
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: const CartProducts(),
      bottomNavigationBar: Container(
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
          color: Colors.white,
          child: Row(
            children: <Widget>[
              const Expanded(
                child: ListTile(
                  title: Text("Total"),
                  subtitle: Text("R\$300"),
                ),
              ),
              Expanded(
                child: MaterialButton(
                    onPressed: () {},
                    color: Colors.red,
                    child: const Text(
                      "Finalizar",
                      style: TextStyle(color: Colors.white),
                    )),
              )
            ],
          )),
    );
  }
}
