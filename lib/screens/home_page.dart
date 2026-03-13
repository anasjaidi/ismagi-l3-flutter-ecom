import 'package:flutter/material.dart';
import '../models/product.dart';
import 'product_detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Accueil Ismagi")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Bienvenue !", style: TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const ProductListPage())),
              child: const Text("Voir le catalogue"),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Nos Produits")),
      body: ListView.builder(
        itemCount: demoProducts.length,
        itemBuilder: (context, index) {
          final p = demoProducts[index];
          return ListTile(
            leading: Image.network(p.imageUrl, width: 50, fit: BoxFit.cover),
            title: Text(p.name),
            subtitle: Text(p.price),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetailPage(product: p))),
          );
        },
      ),
    );
  }
}