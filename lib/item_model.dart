class ItemModel {
  ItemModel({
    required this.id,
    required this.name,
    required this.description,
    this.price = 0,
  });

  final String id;
  final String name;
  final String description;
  final double price;
}
