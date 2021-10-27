import 'package:flutter/material.dart';

import 'datails_Screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: [
              Priceanddetails(),
              SearchBox(),
              ListTransaction(),
            ],
          ),
        ],
      ),
    );
  }
}
