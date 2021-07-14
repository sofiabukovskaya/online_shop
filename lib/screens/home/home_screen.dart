import 'package:flutter/material.dart';
import 'package:flutter_online_shop/constants.dart';
import 'package:flutter_online_shop/screens/home/widgets/body.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white30,
        elevation: 0,
        leading: IconButton(
            icon: SvgPicture.asset("assets/icons/back.svg"), onPressed: () {}),
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
      body: Body(),
    );
  }
}
