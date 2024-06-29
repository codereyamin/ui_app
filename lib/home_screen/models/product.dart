class Product {
  int? id;
  String? name;
  String? slug;
  String? image;
  String? description;
  int? price;
  int? discountPrice;
  bool? isClick;
  int? quantity;

  Product({
    this.id,
    this.name,
    this.slug,
    this.image,
    this.description,
    this.price,
    this.discountPrice,
    this.isClick = false,
    this.quantity = 1,
  });

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    image = json['image'];
    description = json['description'];
    price = json['price'];
    discountPrice = json['discount_price'];
    isClick = false;
    quantity = 1;
  }
}
