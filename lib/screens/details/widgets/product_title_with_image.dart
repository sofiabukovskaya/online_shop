
import 'package:flutter_online_shop/models/product.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class ProductTitleWithImage extends StatelessWidget{
  final Product product;

  const ProductTitleWithImage({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Aristoctic Hand Bag",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.title,
            style: Theme.of(context).textTheme.headline4.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              RichText(
                  text: TextSpan(children: [
                    TextSpan(text: "Price\n"),
                    TextSpan(
                        text: "\$${product.price}",
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            .copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold))
                  ])),
              SizedBox(
                width: kDefaultPadding,
              ),
              Expanded(
                  child: Image.asset(
                    "${product.image}",
                    fit: BoxFit.fill,
                  ))
            ],
          )
        ],
      ),
    );
  }

}