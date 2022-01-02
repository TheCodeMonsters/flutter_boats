import 'package:flutter/material.dart';
import 'package:flutter_boats/ui/screens/cart.dart';
import 'package:flutter_boats/ui/screens/home.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Boats',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
      home: const HomeScreen(),
      routes: {
        'cart': (context) => const CartScreen(),
      },
    );
  }
}
