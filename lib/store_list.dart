import 'package:flutter/material.dart';
import 'package:workshop_basilicata/item_list_tile.dart';
import 'package:workshop_basilicata/item_model.dart';

class StoreList extends StatelessWidget {
  const StoreList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final items = [
      ItemModel(
        id: '0',
        name: 'Item',
        description: 'Description',
        price: 10,
      ),
      ItemModel(
        id: '1',
        name: 'Item 2',
        description: 'Description',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Store application"),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ItemListTile(
            item: items[index],
          );
        },
      ),
    );
  }
}
