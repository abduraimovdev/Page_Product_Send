import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:product_navigator/features/domain/entity.dart';

class ViewProductPage extends StatefulWidget {
  const ViewProductPage({super.key});

  @override
  State<ViewProductPage> createState() => _ViewProductPageState();
}

class _ViewProductPageState extends State<ViewProductPage> {
  @override
  Widget build(BuildContext context) {
    final data =
        ModalRoute.of(context)!.settings.arguments as Map<String, Object?>;
    Product product = data["data"] as Product;

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Image.asset(product.img),
          ),
          Expanded(
            child: Text("${product.name}"),
          ),
          Expanded(
            child: Text("\$${product.price}"),
          ),
          Expanded(
            child: Text("\$${product.ball}"),
          ),
          Expanded(
            child: Text("\$${product.description}"),
          ),
        ],
      ),
    );
  }
}
