import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 84, 92, 236),
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
              ),
          ),
          _buildListTile('Home', '/home', context),
          _buildListTile('About', '/sobre', context),
          _buildListTile('Contact', '/contato', context),
        ],
      ),
    );
  }

  Widget _buildListTile(String title, String routeName, BuildContext context) {
    return ListTile(
      title: Text(title,
        style: const TextStyle(
          fontSize: 18,
          color: Color.fromARGB(255, 84, 92, 236),
        ),
        ),
      onTap: () {
        Navigator.of(context).pushReplacementNamed(routeName);
      },
    );
  }
}