import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_ui/colors.dart';
import 'package:flutter_app_ui/dataila/body.dart';
import 'package:flutter_app_ui/home_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      appBar: Appbar(),
    );
  }

  Appbar() {
    return AppBar(
      backgroundColor: BackgrundColor,
      centerTitle: true,
      title: Text(
        "Activities",
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
      ],
    );
  }
}

class Priceanddetails extends StatelessWidget {
  const Priceanddetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 60, left: 15),
          child: Row(
            children: [
              Text(
                "\$7,520",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet<dynamic>(
                          isScrollControlled: true,
                          barrierColor: Colors.transparent,
                          backgroundColor: Colors.grey.withOpacity(0),
                          context: context,
                          builder: (BuildContext bc) {
                            return Container(
                              height: MediaQuery.of(context).size.height - 145,
                              child: Stack(
                                children: [
                                  Positioned(
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height:
                                          MediaQuery.of(context).size.height -
                                              400,
                                    ),
                                  ),
                                  Positioned(
                                    top: 0,
                                    right: 29,
                                    child: Container(
                                      width: 110,
                                      height: 300,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.blue,
                                      ),
                                      child: Column(
                                        children: [
                                          listMonths(
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          });
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 130),
                      width: 110,
                      height: 65,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: Colors.white10,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 22, left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "1 month",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.arrow_drop_down_outlined,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            children: [
              Text(
                "-20%",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      "than last month",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            Image.asset(
              "assets/images/diagram.png",
              fit: BoxFit.cover,
            ),
          ],
        ),
      ],
    );
  }
}

class SearchBox extends StatelessWidget {
  const SearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: kDefultPadding),
      padding: EdgeInsets.symmetric(horizontal: kDefultPadding),
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              onChanged: (value) {},
              decoration: InputDecoration(
                hintText: "Search Transaction",
                hintStyle: TextStyle(color: Colors.white),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          SvgPicture.asset(
            "assets/icons/search1.svg",
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class ListTransaction extends StatelessWidget {
  const ListTransaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ListNameUsers(
                image: "assets/images/pic1.png",
                onPressed: () {},
                title: "Spotify",
                subtitle: "june10 - 12:30"),
            ListNameUsers(
                image: "assets/images/pic.png",
                onPressed: () {},
                title: "Netflix",
                subtitle: "june11 - 10:30"),
            ListNameUsers(
                image: "assets/images/pic3.png",
                onPressed: () {},
                title: "Note",
                subtitle: "june25 - 9:30"),
            ListNameUsers(
                image: "assets/images/pic1.png",
                onPressed: () {},
                title: "Spotify",
                subtitle: "june10 - 12:30"),
            ListNameUsers(
                image: "assets/images/pic1.png",
                onPressed: () {},
                title: "Spotify",
                subtitle: "june10 - 12:30"),
          ],
        ),
      ),
    );
  }
}

class ListNameUsers extends StatelessWidget {
  const ListNameUsers(
      {Key? key,
      required this.image,
      required this.onPressed,
      required this.title,
      required this.subtitle})
      : super(key: key);

  final String image, title, subtitle;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //  Padding(
        // padding: const EdgeInsets.all(10.0),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            //  color: Colors.white24,
            decoration: BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              onTap: () {},
              leading: Container(
                width: 60,
                height: 100,
                // padding: EdgeInsets.all(5),
                decoration: BoxDecoration(shape: BoxShape.rectangle),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Image.asset(
                    image,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              title: Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                subtitle,
                style: TextStyle(fontSize: 10, color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class listMonths extends StatelessWidget {
  final double? fontSize;
  final String? text;
  final String? text2;
  final String? text3;
  final String? text4;
  final String? text5;
  final String? text6;
  final Function()? onTap;
  final Color? textColor;

  const listMonths({
    Key? key,
    this.fontSize = 20,
    this.textColor = Colors.white,
    this.text,
    this.onTap,
    this.text2,
    this.text3,
    this.text4,
    this.text5,
    this.text6,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Text(
                "Cancel", style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "month1",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "month2",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "month3",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "month5",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "month6",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "month12",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
