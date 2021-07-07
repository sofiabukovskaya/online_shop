import 'package:flutter/material.dart';
import 'package:flutter_online_shop/models/product.dart';

import '../../../constants.dart';


class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;

  const ItemCard({Key key, this.product, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                  color: product.color, borderRadius: BorderRadius.circular(16.0)),
              child: Image.asset(product.image),
            )),
        Padding(
          padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
          child: Text(
            product.title,
            style: TextStyle(color: kTextLightColor),
          ),
        ),
        Text(
          "\$${product.price}",
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}


