import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  static const id = '/ProductDetailScreen';

  @override
  Widget build(BuildContext context) {
    var id = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
        centerTitle: true,
      ),
    );
  }
}
