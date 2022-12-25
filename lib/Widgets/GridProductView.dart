import 'package:flutter/material.dart';
import 'package:flutter_provider/Model/Product.dart';
import 'package:flutter_provider/Screens/ProductDetailScreen.dart';
import 'package:provider/provider.dart';

class GridProoductItem extends StatelessWidget {
  // final String id, title, image;
  GridProoductItem(
      //    {required this.id, required this.title, required this.image}
      );
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .pushNamed(ProductDetailScreen.id, arguments: product.id);
            },
            child: Image.asset(product.image)),
        footer: GridTileBar(
          title: Text(
            product.title,
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.black54,
          leading: IconButton(
              onPressed: (() {
                product.toggleIsFav();
              }),
              icon: product.isFavourite
                  ? Icon(Icons.favorite)
                  : Icon(Icons.favorite_border)),
          trailing: IconButton(
              onPressed: (() {}), icon: Icon(Icons.shopping_cart_outlined)),
        ),
      ),
    );
  }
}
