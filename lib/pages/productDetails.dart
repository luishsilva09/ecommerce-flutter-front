import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final productDetailName;
  final productDetailPrice;
  final productDetailPicture;

  const ProductDetails(
      {super.key,
      this.productDetailName,
      this.productDetailPrice,
      this.productDetailPicture});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("E-commerce"),
        actions: const <Widget>[
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
              height: 300.0,
              color: Colors.amber,
              child: GridTile(
                  child: Container(
                color: Colors.white,
                child: Image.network(
                  widget.productDetailPicture,
                  fit: BoxFit.cover,
                ),
              )))
        ],
      ),
    );
  }
}
