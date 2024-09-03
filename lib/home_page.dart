import 'package:flutter/material.dart';
import 'lost_pets_page.dart';
import 'adoption_page.dart';
import 'donations_page.dart';
import 'community_page.dart';
import 'marketplace_page.dart';
import 'educational_resources_page.dart';

// HomePage class provides a navigation menu for different features
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pet App MVP'), // Title in the app bar
      ),
      body: ListView(
        children: <Widget>[
          // Navigation option for Lost Pets Search
          ListTile(
            title: const Text('Lost Pets Search'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LostPetsPage()));
            },
          ),
          // Navigation option for Pet Adoption
          ListTile(
            title: const Text('Pet Adoption'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AdoptionPage()));
            },
          ),
          // Navigation option for Donations to Shelters
          ListTile(
            title: const Text('Donations to Shelters'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DonationsPage()));
            },
          ),
          // Navigation option for Social Community
          ListTile(
            title: const Text('Social Community'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CommunityPage()));
            },
          ),
          // Navigation option for Marketplace
          ListTile(
            title: const Text('Marketplace'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MarketplacePage()));
            },
          ),
          // Navigation option for Educational Resources
          ListTile(
            title: const Text('Educational Resources'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => EducationalResourcesPage()));
            },
          ),
        ],
      ),
    );
  }
}
