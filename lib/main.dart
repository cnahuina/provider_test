import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/src/pages/home_page.dart';
import 'package:provider_test/src/providers/heroesinfo.dart';
import 'package:provider_test/src/providers/villanosinfo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // // Por si se desea tener un solo Provider
  // @override
  // Widget build(BuildContext context) {
  //   return ChangeNotifierProvider(
  //     builder: (context) => HeroesInfo(),
  //     child: MaterialApp(
  //       title: 'Flutter Demo',
  //       initialRoute: 'home',
  //       routes: {
  //         'home': (context) => HomePage(),
  //       },

  //     ),
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(builder: (context) => HeroesInfo()),
        ChangeNotifierProvider(builder: (context) => VillanosInfo())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Provider Example',
        initialRoute: 'home',
        routes: {
          'home': (context) => HomePage(),
        },
      ),
    );
  }
}