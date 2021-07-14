import 'package:flutter/material.dart';
import 'package:flutter_online_shop/models/product.dart';
import 'package:flutter_online_shop/screens/details/widgets/details_body.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        backgroundColor: product.color,
        elevation: 0,
        leading: IconButton(icon: SvgPicture.asset("assets/icons/back.svg"), onPressed: () => Navigator.pop(context)),
        actions: <Widget>[
          IconButton(
              icon: SvgPicture.asset("assets/icons/search.svg",
                  color: kTextColor),
              onPressed: () {}),
          IconButton(
              icon: SvgPicture.asset("assets/icons/cart.svg",
                  color: kTextColor),
              onPressed: () {}),
          SizedBox(width: kDefaultPadding/2,)
        ],
      ),
      body:  DetailsBody(product: product),
    );
  }
}
