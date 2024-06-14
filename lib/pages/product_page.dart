import 'dart:async';

import 'package:efood_flutter/components/product_card.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final _productStreamController = StreamController<Map<String, dynamic>?>();

  @override
  void initState() {
    super.initState();
    // Add some example product data to the stream.
    // In a real application, you might fetch this data from an API or database.
    _productStreamController.add({
      'name': 'Example Product',
      'code': 'EX123',
      'barcode': '123456789',
      'image': 'https://via.placeholder.com/150',
      'ingredients': ['ingredient1', 'ingredient2', 'ingredient3']
    });
  }

  @override
  void dispose() {
    _productStreamController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProductCard(
        productStream: _productStreamController.stream,
        key: ValueKey("ProductPage"),
      ),
    );
  }
}
