import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

// import './Models/News.dart';
import './Providers/NewsProvider.dart';

import './Screens/homeScreen.dart';
import './Screens/categoryScreen.dart';
import './Screens/searchScreen.dart';
import './Screens/landing.dart';
import './Screens/navScreen.dart';
import './Screens/singleNewsPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => NewsProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Landing(),
        routes: {
          NavScreen.routeName: (ctx) => const NavScreen(),
          HomeScreen.routeName: (ctx) => const HomeScreen(),
          SearchPage.routeName: (ctx) => const SearchPage(),
          CategoryScreen.routeName: (ctx) => const CategoryScreen(),
          SingleNewsPage.routeName: (ctx) => const SingleNewsPage(),
        },
      ),
    );
  }
}
