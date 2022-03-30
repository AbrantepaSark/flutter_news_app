import 'package:flutter/material.dart';

import './navScreen.dart';

import '../Containers/button.dart';

class Landing extends StatelessWidget {
  static const routeName = "landing";

  const Landing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        height: queryData.size.height,
        width: queryData.size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/land.jpg"),
          fit: BoxFit.cover,
        )),
        child: Stack(
          children: [
            Container(
              color: Colors.black.withOpacity(.35),
            ),
            Positioned(
              bottom: 250,
              left: 15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'The',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontFamily: 'Bellota',
                    ),
                  ),
                  // Text(
                  //   'GLOBAL',
                  //   style: TextStyle(
                  //     fontSize: 35,
                  //     color: Colors.white,
                  //     //fontFamily: 'OpenSans',
                  //     fontWeight: FontWeight.w400,
                  //   ),
                  // ),
                  Text(
                    'DIARIES',
                    style: TextStyle(
                      color: Color.fromARGB(255, 253, 249, 5),
                      fontSize: 60,
                      letterSpacing: -3,
                      fontWeight: FontWeight.bold,
                      //fontFamily: 'OpenSans',
                    ),
                  ),
                  Text(
                    'We give you all news around the globe.',
                    style: TextStyle(
                      color: Color.fromARGB(255, 228, 240, 229),
                      fontSize: 16,
                      fontFamily: 'Pacifico',
                    ),
                  ),
                  Text(
                    'Stay connected for more feed from the rightful sources.',
                    style: TextStyle(
                      color: Color.fromARGB(255, 228, 240, 229),
                      fontSize: 16,
                      fontFamily: 'Pacifico',
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 60,
              left: 15,
              right: 15,
              child: SubmitButton(
                width: queryData.size.width,
                color: Colors.white,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(NavScreen.routeName);
                  },
                  child: const Text(
                    'Explore',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
