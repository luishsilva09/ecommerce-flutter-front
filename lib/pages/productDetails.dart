import 'package:ecommerce/pages/cart.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final productDetailName;
  final productDetailPrice;
  final productDetailPicture;
  final productDetailDescription;

  const ProductDetails(
      {super.key,
      this.productDetailName,
      this.productDetailPrice,
      this.productDetailPicture,
      this.productDetailDescription});

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
        actions: <Widget>[
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Cart()));
            },
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
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(widget.productDetailName),
                  title: Row(
                    children: [
                      Expanded(
                        child: Text('R\$ ${widget.productDetailPrice}'),
                      )
                    ],
                  ),
                ),
              ),
              child: Container(
                color: Colors.white,
                child: Image.network(
                  widget.productDetailPicture,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Descrição: \n ${widget.productDetailDescription}",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: const Text("Comprar agora"),
                ),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.add_shopping_cart)),
            ],
          ),
        ],
      ),
    );
  }
}
