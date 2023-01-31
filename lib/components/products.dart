import 'package:ecommerce/pages/productDetails.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "nome": "Refined Plastic Bike",
      "descricao":
          "New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart",
      "categoria": "Fantastic",
      "imagem": "http://placeimg.com/640/480/business",
      "preco": "127.00",
      "material": "Metal",
      "departamento": "Grocery",
      "id": "1"
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
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return SingleProduct(
            productName: product_list[index]['nome'],
            productPicture: product_list[index]['imagem'],
            productPrice: product_list[index]['preco'],
          );
        });
  }
}

class SingleProduct extends StatelessWidget {
  final productName;
  final productPicture;
  final productPrice;

  const SingleProduct(
      {super.key, this.productName, this.productPicture, this.productPrice});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: productName,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductDetails(
                  productDetailName: productName,
                  productDetailPicture: productPicture,
                  productDetailPrice: productPrice,
                ),
              ),
            ),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(productName, style: TextStyle(fontSize: 10)),
                  title: Text(
                    "R\$$productPrice",
                    style: TextStyle(fontSize: 13),
                  ),
                ),
              ),
              child: Image.network(
                productPicture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
