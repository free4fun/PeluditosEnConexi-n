import 'package:flutter/material.dart';

// Page for Marketplace functionality
class MarketplacePage extends StatelessWidget {
  final List<String> products = ['Pet Food', 'Leashes', 'Toys'];

  MarketplacePage({super.key}); // Example list of products

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Marketplace'), // Title in the app bar
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index]),
            subtitle: Text('Details about ${products[index]}'),
            trailing: ElevatedButton(
              onPressed: () {
                // Implement purchase logic
              },
              child: const Text('Buy'),
            ),
          );
        },
      ),
    );
  }
}
