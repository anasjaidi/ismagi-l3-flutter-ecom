class Product {
  final String name;
  final String price;
  final String imageUrl;
  final String description;

  Product({
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.description,
  });
}

final List<Product> demoProducts = [
  Product(
    name: "MacBook Pro",
    price: "15,000 DH",
    imageUrl: "https://images.unsplash.com/photo-1517336714731-489689fd1ca8?w=500",
    description: "Le meilleur outil pour les développeurs Ismagi.",
  ),
  Product(
    name: "iPhone 15",
    price: "10,000 DH",
    imageUrl: "https://images.unsplash.com/photo-1510557880182-3d4d3cba35a5?w=500",
    description: "Écran Super Retina XDR et puce A16 Bionic.",
  ),
  Product(
    name: "Casque Sony",
    price: "2,500 DH",
    imageUrl: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=500",
    description: "Réduction de bruit active de classe mondiale.",
  ),
];