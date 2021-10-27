import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_ui/componets/body.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: buildAppBar(),
      body: body(),
    );
  }

  buildAppBar() {
    return AppBar(
      title: Text("Hello Faezeh"),
      toolbarHeight: 70,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.add_circle_outline_sharp,
            color: Colors.blueAccent,
          ),
          onPressed: () {},
        ),
      ],
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/menu.svg",
          color: Colors.blueAccent,
          width: 30,
        ),
        onPressed: () {},
      ),
    );
  }
}

class buildbulerimage extends StatelessWidget {
  const buildbulerimage(
      {Key? key,
      required this.number,
      required this.date,
      required this.name,
      required this.onPressed})
      : super(key: key);

  final String number, date;

  final String name;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "assets/images/welcome.png",
          width: 400,
          height: 300,
          fit: BoxFit.fill,
        ),
        Column(
          //top: 10,
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                margin: EdgeInsets.only(top: 120),
                padding: const EdgeInsets.all(35),
                color: Colors.grey.withOpacity(0),
              ),
            ),
          ],
        ),
        Positioned(
          top: 150,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Row(
                        children: [
                          Text(
                            "$number",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Row(
                            children: [
                              Text(
                                "$number",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "$number",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "$number",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      child: SizedBox(
                        height: 90,
                        width: 150,
                        child: Row(
                          children: [
                            Text(
                              "$date",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "$name",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class titleandicon extends StatelessWidget {
  const titleandicon({Key? key, required this.onPressed}) : super(key: key);

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Send Money",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            SizedBox(
              height: 70,
              width: 230,
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 30,
              color: Colors.white,
            ),
          ],
        ),
      ],
    );
  }
}

class titleandText extends StatelessWidget {
  const titleandText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            showModalBottomSheet<dynamic>(
                isScrollControlled: true,
                barrierColor: Colors.transparent,
                backgroundColor: Color(0xFF37474F).withOpacity(1),
                context: context,
                builder: (BuildContext bc) {
                  return Container(
                    height: MediaQuery.of(context).size.height - 660,
                    child: Stack(
                      children: [
                        Positioned(
                          child: Container(
                            child: InformationList(),
                          ),
                        ),
                      ],
                    ),
                  );
                });
          },
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Latest Transaction",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              SizedBox(
                height: 70,
                width: 5,
              ),
              Icon(
                Icons.arrow_drop_down_outlined,
                size: 30,
                color: Colors.white,
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "view all",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class InformationList extends StatelessWidget {
  const InformationList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
        ],
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
