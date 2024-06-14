import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Stream<Map<String, dynamic>?> productStream;

  ProductCard({
    required this.productStream,
    required ValueKey key,
  });

  List<Map<String, dynamic>> getIngredients(Map<String, dynamic>? product) {
    if (product == null) return [];
    return List<Map<String, dynamic>>.from(product['ingredients'].map((ing) {
      return {
        'name': ing,
        'allergic': isUserAllergicTo(ing),
      };
    }));
  }

  int getAllergicIngredientsCount(List<Map<String, dynamic>> ingredients) {
    return ingredients.where((ing) => ing['allergic']).length;
  }

  bool isUserAllergicTo(String ingredient) {
    // Add your logic to check if the user is allergic to the ingredient
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Map<String, dynamic>?>(
      stream: productStream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        }

        final product = snapshot.data;
        final ingredients = getIngredients(product);
        final allergicIngredientsCount =
            getAllergicIngredientsCount(ingredients);

        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
            border: Border.all(
              color: Color(0xFF424242),
              width: 1.0,
            ),
            color: Colors.white,
          ),
          padding: EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (product != null && product['image'] != null)
                Image.network(
                  product['image'],
                  width: 150.0,
                  height: 150.0,
                  fit: BoxFit.cover,
                ),
              SizedBox(width: 16.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product?['name'] ?? 'No name available',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      product?['code'] ?? 'No code available',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      product?['barcode'] ?? 'No barcode available',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    if (allergicIngredientsCount > 0)
                      Container(
                        color: Colors.amberAccent,
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          'Warning! This product contains $allergicIngredientsCount ingredients that you are allergic to.',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    SizedBox(height: 8.0),
                    Row(
                      children: ingredients
                          .map((ing) => Container(
                                margin: EdgeInsets.only(right: 8.0),
                                child: Chip(
                                  label: Text(
                                    ing['name'],
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  backgroundColor: ing['allergic']
                                      ? Colors.red
                                      : Colors.green,
                                ),
                              ))
                          .toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
