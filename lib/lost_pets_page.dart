import 'package:flutter/material.dart';

// Page for Lost Pets Search functionality
class LostPetsPage extends StatelessWidget {
  final List<String> lostPets = ['Buddy', 'Max', 'Bella'];

  LostPetsPage({super.key}); // Example list of lost pets

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lost Pets Search'), // Title in the app bar
      ),
      body: Column(
        children: [
          const TextField(
            decoration: InputDecoration(
              labelText: 'Search for a lost pet',
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: lostPets.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(lostPets[index]),
                  subtitle: Text('Description of ${lostPets[index]}'),
                  trailing: const Icon(Icons.pets),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
