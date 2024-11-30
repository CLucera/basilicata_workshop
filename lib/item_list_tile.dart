import 'package:flutter/material.dart';
import 'package:workshop_basilicata/item_detail.dart';
import 'package:workshop_basilicata/item_model.dart';
import 'package:workshop_basilicata/price_widget.dart';

class ItemListTile extends StatelessWidget {
  const ItemListTile({
    required this.item,
    Key? key,
  }) : super(key: key);

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 16,
      ),
      child: Card(
        child: ListTile(
          leading: Icon(Icons.accessibility),
          title: Text(item.name),
          subtitle: Hero(tag: item.id, child: Text(item.description)),
          trailing: item.price > 0
              ? Hero(
                  tag: 'price ${item.id}',
                  child: PriceWidget(price: item.price),)
              : null,
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return ItemDetail(item: item);
              },
            ));
          },
        ),
      ),
    );
  }
}
