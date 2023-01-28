import 'package:ecommerce/products.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: const Text("username"),
              accountEmail: const Text("email"),
              currentAccountPicture: GestureDetector(
                child: const CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: const BoxDecoration(color: Colors.blueGrey),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text("Categoria"),
                leading: Icon(Icons.dashboard),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text("Produtos"),
          ),
          Container(
            height: 1000,
            child: Products(),
          )
        ],
      ),
    );
  }
}
