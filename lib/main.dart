import 'package:bubble_tea_app/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BubbleTeaShop(),
      builder: (context, child) => MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
  primarySwatch: Colors.brown,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.brown,
    foregroundColor: Colors.white,
  ),
   sliderTheme: SliderThemeData(   
    activeTrackColor: Colors.brown,
    thumbColor: Colors.brown,
    inactiveTrackColor: Colors.brown.shade100,
    valueIndicatorColor: Colors.brown,
  ),
),
      home: HomePage(),
       ),
     );
  }
}