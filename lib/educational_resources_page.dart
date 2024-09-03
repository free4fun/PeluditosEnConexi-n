import 'package:flutter/material.dart';

// Page for Educational Resources functionality
class EducationalResourcesPage extends StatelessWidget {
  final List<String> articles = [
    'Pet Care Basics',
    'Training Tips',
    'Health & Wellness'
  ];

  EducationalResourcesPage({super.key}); // Example articles

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Educational Resources'), // Title in the app bar
      ),
      body: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(articles[index]),
            subtitle: Text('Read more about ${articles[index]}'),
            onTap: () {
              // Implement navigation to article details
            },
          );
        },
      ),
    );
  }
}
