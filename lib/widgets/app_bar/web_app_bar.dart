import 'package:flutter/material.dart';

class WebAppBar extends StatefulWidget {
  final int currentIndex;

  const WebAppBar({super.key, this.currentIndex = 0});

  @override
  // ignore: library_private_types_in_public_api
  _WebAppBarState createState() => _WebAppBarState();
}

class _WebAppBarState extends State<WebAppBar> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.currentIndex;
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 84, 92, 236),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildTextButton("Home", 0),
          _buildTextButton("About", 1),
          _buildTextButton("Contact", 2),
        ],
      ),
    );
  }

  Widget _buildTextButton(String text, int index) {
    return TextButton(
      onPressed: () {
        setState(() {
          _selectedIndex = index;
        });
        switch (index){
          case 0:
            Navigator.pushReplacementNamed(context, '/home');
            break;
          case 1:
            Navigator.pushReplacementNamed(context, '/sobre');
            break;
          case 2:
            Navigator.pushReplacementNamed(context, '/contato');
            break;
        }
      },
      child: Text(
        text,
        style: TextStyle(
          color: _selectedIndex == index ? Colors.white : Colors.white60,
          fontSize: _selectedIndex == index ? 20 : 18,
        ),
      ),
    );
  }
}
