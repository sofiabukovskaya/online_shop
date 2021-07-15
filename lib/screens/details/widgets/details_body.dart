import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_online_shop/constants.dart';
import 'package:flutter_online_shop/models/product.dart';
import 'package:flutter_online_shop/screens/details/widgets/product_title_with_image.dart';

class DetailsBody extends StatelessWidget {
  final Product product;

  const DetailsBody({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPadding,
                      right: kDefaultPadding),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Color"),
                             Row(
                               children: [
                                 ColorDot(color: Color(0xFF356C95), isSelected: true,),
                                 ColorDot(color: Colors.orange[900]),
                                 ColorDot(color: Colors.brown)
                               ],
                             )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;

  const ColorDot({Key key, this.color, this.isSelected = false}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: kDefaultPadding / 4,
          right: kDefaultPadding / 2),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border:
          Border.all(color: isSelected ? color : Colors.transparent)),
      child:
      DecoratedBox(decoration:
      BoxDecoration(
          color: color,
          shape: BoxShape.circle
      )),
    );
  }
}
