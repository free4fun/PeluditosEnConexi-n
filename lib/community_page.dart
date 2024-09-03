import 'package:flutter/material.dart';

// Page for Social Community functionality
class CommunityPage extends StatelessWidget {
  final List<String> posts = [
    'Welcome to the community!',
    'Share your pet stories here.'
  ];

  CommunityPage({super.key}); // Example posts

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Social Community'), // Title in the app bar
      ),
      body: Column(
        children: [
          const TextField(
            decoration: InputDecoration(
              labelText: 'Write a post',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Implement post submission logic
            },
            child: const Text('Post'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(posts[index]),
                  subtitle: const Text('User comment'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
