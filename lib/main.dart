import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/src/pages/home_page.dart';
import 'package:provider_example/src/providers/person_info.dart';
import 'package:provider_example/src/providers/pet_info.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  //
  // @override
  // Widget build(BuildContext context) {
  //   return ChangeNotifierProvider(
  //     create: (context) => PersonInfo(),
  //     child: MaterialApp(
  //       initialRoute: 'home',
  //       routes: {'home': (ctx) => const HomePage()},
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => PersonInfo()),
          ChangeNotifierProvider(create: (context) => PetInfo())
        ],
        child: MaterialApp(
          initialRoute: 'home',
          routes: {'home': (ctx) => const HomePage()},
        ));
  }
}
