import 'package:flutter/material.dart';

import '../home_screen.dart';
import '../profile.dart';

class body extends StatelessWidget {
  const body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: [
              buildbulerimage(
                date: '5/15',
                name: 'Faezeh Aghajani',
                onPressed: () {},
                number: '5162' '    ',
              ),
              titleandicon(
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => Activitise()));
                },
              ),
              profileimage(),
              titleandText(),


              // buildprofile(onPressed: () {  },  images: 'assets/images/image4.png',),
            ],
          ),
        ],
      ),
    );
  }
}
