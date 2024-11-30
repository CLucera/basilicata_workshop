import 'package:flutter/material.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({required this.price, Key? key}) : super(key: key);

  final double price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.euro),
        SizedBox(width: 8,),
        Text(
          price.toStringAsFixed(2),
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ],
    );
  }
}
