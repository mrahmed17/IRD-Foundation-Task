import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  final Function(int) onItemSelected;

  const MainScreen({Key? key, required this.onItemSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Menu',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          _buildMenuItem(Icons.home, 'Home', 0),
          _buildMenuItem(Icons.person, 'Profile', 1),
          _buildMenuItem(Icons.location_on, 'Nearby', 2),
          Divider(),
          _buildMenuItem(Icons.bookmark, 'Bookmark', 3),
          _buildMenuItem(Icons.notifications, 'Notification', 4),
          _buildMenuItem(Icons.message, 'Message', 5),
          Divider(),
          _buildMenuItem(Icons.settings, 'Setting', 6),
          _buildMenuItem(Icons.help, 'Help', 7),
          _buildMenuItem(Icons.logout, 'Logout', 8),
        ],
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String title, int index) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () => onItemSelected(index),
    );
  }
}
