import 'package:flutter/material.dart';
import 'package:workshop_basilicata/item_model.dart';
import 'package:workshop_basilicata/price_widget.dart';

class ItemDetail extends StatelessWidget {
  const ItemDetail({
    required this.item,
    Key? key,
  }) : super(key: key);

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Hero(
                tag: item.id,
                child: Icon(
                  Icons.accessibility,
                  size: 200,
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SelectableText(
                item.description +
                    "lorem ipsum lorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsum",
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Align(
          alignment: AlignmentDirectional.centerEnd,
          child: Hero(
            tag: 'price ${item.id}',
            child: PriceWidget(price: item.price),
          ),
        ),
      ),
    );
  }
}
