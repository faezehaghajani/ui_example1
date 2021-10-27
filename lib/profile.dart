

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_ui/colors.dart';
import 'package:flutter_app_ui/dataila/datails_Screen.dart';

class profileimage extends StatelessWidget {
  const profileimage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          buildprofile(
            images: 'assets/images/pro.png',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
          buildprofile(onPressed: () {}, images: "assets/images/image1.png"),
          buildprofile(
            images: 'assets/images/image2.png',
            onPressed: () {},
          ),
          buildprofile(
            images: 'assets/images/image3.png',
            onPressed: () {},
          ),
          buildprofile(
            images: 'assets/images/image4.png',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class buildprofile extends StatelessWidget {
  final void Function() onPressed;
  final String images;

  const buildprofile({Key? key, required this.onPressed, required this.images})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              left: kDefultPadding,
              top: kDefultPadding / 2,
            ),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  images,
                  width: 110,
                  height: 110,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue, width: 2),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ],
      ),
    );
  }
}
