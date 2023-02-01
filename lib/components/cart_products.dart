import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  const CartProducts({super.key});

  @override
  State<CartProducts> createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var ProductsOnCart = [
    {
      "nome": "Fantastic Steel Salad",
      "descricao":
          "The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality",
      "categoria": "Refined",
      "imagem": "http://placeimg.com/640/480/nature",
      "preco": "716.00",
      "material": "Metal",
      "departamento": "Tools",
      "id": "2"
    },
    {
      "nome": "Fantastic Steel Salad",
      "descricao":
          "The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality",
      "categoria": "Refined",
      "imagem": "http://placeimg.com/640/480/nature",
      "preco": "716.00",
      "material": "Metal",
      "departamento": "Tools",
      "id": "2"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ProductsOnCart.length,
      itemBuilder: (context, index) {
        return Text("prodito");
      },
    );
  }
}
