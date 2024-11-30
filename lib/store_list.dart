import 'package:flutter/material.dart';
import 'package:workshop_basilicata/item_list_tile.dart';
import 'package:workshop_basilicata/item_model.dart';
import 'package:workshop_basilicata/service.dart';

class StoreList extends StatelessWidget {
  const StoreList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = fetchItems();

    return Scaffold(
      appBar: AppBar(
        title: Text("Store application"),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: FutureBuilder<List<ItemModel>?>(
        future: items,
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.data != null) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return ItemListTile(
                  item: snapshot.data![index],
                );
              },
            );
          }

          return Center(
            child: Text("An error occurred"),
          );
        },
      ),
    );
  }
}
