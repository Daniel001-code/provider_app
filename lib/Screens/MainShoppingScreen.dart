import 'package:flutter/material.dart';
import 'package:flutter_provider/Model/Product.dart';
import 'package:flutter_provider/Providers/ProductProvider.dart';
import 'package:flutter_provider/Widgets/GridProductView.dart';
import 'package:provider/provider.dart';

class MainShoppingScreen extends StatelessWidget {
  static const id = '/MainShoppingScreen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Food House'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ProductsGrid(),
      ),
    ));
  }
}

class ProductsGrid extends StatelessWidget {
  const ProductsGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productDate = Provider.of<Products>(context);
    final availProducts = productDate.availProducts;
    return GridView.builder(
        itemCount: availProducts.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1,
          crossAxisSpacing: 10,
          mainAxisSpacing: 30,
        ),
        itemBuilder: ((context, index) {
          return ChangeNotifierProvider<Product>(
            create: (BuildContext context) => availProducts[index],
            child: GridProoductItem(
                // id: availProducts[index].id,
                // title: availProducts[index].title,
                // image: availProducts[index].image,
                ),
          );
        }));
  }
}
