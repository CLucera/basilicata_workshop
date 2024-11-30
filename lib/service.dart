import 'package:workshop_basilicata/item_model.dart';

Future<List<ItemModel>?> fetchItems() async {

  await Future.delayed(Duration(seconds: 1));

  return List.generate(20, (i) {
    return ItemModel(
      id: '$i',
      name: 'Item $i',
      description: 'Description $i',
      price: i % 2 == 0 ? 10.0 + i : 0.0,
    );
  });
}
