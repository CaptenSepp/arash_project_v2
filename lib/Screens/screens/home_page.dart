import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () => _openNavigation(context), // Sliding navigation action
        ),
      ),
      body: const Center(
        child: Text('Home Content'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          // Add items for settings, like, etc.
          // Here's an example for settings:
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'menu',
          )
          // ... (add other items)
        ],
        onTap: (index) {
          // Add navigation logic for each item
          // Example: Navigate to settings screen for index 0
          if (index == 0) {
            Navigator.pushNamed(context, '/settings');
          }
          // ... (add logic for other items)
        },
      ),
    );
  }

  // Sliding navigation implementation (example using a Drawer)
  void _openNavigation(BuildContext context) {
    Navigator.pushNamed(context, '/settings');
  }
}
