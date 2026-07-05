class Product {
final int? id;
final String name;
final String sku;
final double price;
final int stockQuantity;
final int lowStockThreshold;

Product({
this.id,
required this.name,
required this.sku,
required this.price,
required this.stockQuantity,
required this.lowStockThreshold,
});

Map<String, dynamic> toMap() {
return {
'id': id,
'name': name,
'sku': sku,
'price': price,
'stock_quantity': stockQuantity,
'low_stock_threshold': lowStockThreshold,
};
}

factory Product.fromMap(Map<String, dynamic> map) {
return Product(
id: map['id'],
name: map['name'],
sku: map['sku'],
price: (map['price'] as num).toDouble(),
stockQuantity: map['stock_quantity'],
lowStockThreshold: map['low_stock_threshold'],
);
}
}
