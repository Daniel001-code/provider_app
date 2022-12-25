import 'package:flutter/material.dart';
import 'package:flutter_provider/Providers/ProductProvider.dart';
import 'package:flutter_provider/Screens/MainShoppingScreen.dart';
import 'package:flutter_provider/Screens/ProductDetailScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorSchemeSeed: Colors.purple,
      ),
      home: ChangeNotifierProvider(
          create: (BuildContext context) => Products(),
          child: MainShoppingScreen()),
      routes: {
        ProductDetailScreen.id: (_) => ProductDetailScreen(),
        MainShoppingScreen.id: (_) => MainShoppingScreen(),
      },
    );
  }
}
