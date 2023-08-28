class Product {
     late  int _totalSize;
     late  int _typeId;
     late  int _offset;
 late List<Products> _products;
 List<Products> get products => _products ;

  Product({required totalSize, required typeId, required offset, required products}) {
    this._totalSize = totalSize;
    this._typeId = typeId;
    this._offset = offset;
    this._products = products;


  }

  Product.fromJson(Map<String, dynamic> json) {
    _totalSize = json['total_size'];
    _typeId = json['type_id'];
    _offset = json['offset'];
    if (json['products'] != null) {
      _products = <Products>[];
      json['products'].forEach((v) {
        _products!.add(new Products.fromJson(v));
      });
    }
  }


}

class Products {
 late int? id;
 late String? name;
 late String? description;
 late int? price;
 late int? stars;
 late String? img;
 late String? location;
 late String? createdAt;
 late String? updatedAt;
 late int? typeId;

  Products(
      {this.id,
      this.name,
      this.description,
      this.price,
      this.stars,
      this.img,
      this.location,
      this.createdAt,
      this.updatedAt,
      this.typeId});

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    price = json['price'];
    stars = json['stars'];
    img = json['img'];
    location = json['location'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    typeId = json['type_id'];
  }

}
