class ProductsModels {
  final String id;
  final String vendor;
  final String name;
  final String photo;
  final String productDetails;
  final String category;
  final double price;
  final int units;
  final double discountPercentage;
  final DateTime createdAt;
  final DateTime updatedAt;
  final Map<String, dynamic> averageRating;
  final double discountedPrice;

  ProductsModels({
    required this.id,
    required this.vendor,
    required this.name,
    required this.photo,
    required this.productDetails,
    required this.category,
    required this.price,
    required this.units,
    required this.discountPercentage,
    required this.createdAt,
    required this.updatedAt,
    required this.averageRating,
    required this.discountedPrice,
  });

  factory ProductsModels.fromMap(Map<String, dynamic> json) {
    return ProductsModels(
      id: json['id'],
      vendor: json['vendor'],
      name: json['name'],
      photo: json['photo'],
      productDetails: json['productDetails'],
      category: json['category'],
      price: (json['price'] as num).toDouble(),
      units: json['units'],
      discountPercentage: (json['discountPercentage'] as num).toDouble(),
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
      averageRating: json['averageRating'] ?? {},
      discountedPrice: (json['discountedPrice'] as num).toDouble(),
    );
  }


}
