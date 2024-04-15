class CartDishes{

  final String category;
  final String price;
  final String name;
  final String image;
  final String description;
  final String? id;
  final String quantity;

  CartDishes({required this.category, this.id, required this.price, required this.name, required this.image,required this.description,required this.quantity});
}