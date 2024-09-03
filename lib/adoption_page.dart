import 'package:flutter/material.dart';

// Page for Pet Adoption functionality
class AdoptionPage extends StatelessWidget {
  final List<String> adoptablePets = ['Charlie', 'Lucy', 'Daisy'];

  AdoptionPage({super.key}); // Example list of adoptable pets

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pet Adoption'), // Title in the app bar
      ),
      body: Column(
        children: [
          const TextField(
            decoration: InputDecoration(
              labelText: 'Search for a pet to adopt',
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: adoptablePets.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(adoptablePets[index]),
                  subtitle: Text('Details about ${adoptablePets[index]}'),
                  trailing: ElevatedButton(
                    onPressed: () {
                      // Implement adoption logic
                    },
                    child: const Text('Adopt'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
