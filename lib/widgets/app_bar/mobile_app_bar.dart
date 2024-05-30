import 'package:flutter/material.dart';

class MobileAppBar extends StatelessWidget {
  final bool showIcon;

  const MobileAppBar({super.key, this.showIcon = true});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: const Color.fromARGB(255, 84, 92, 236),
        title: const Text(
          'Felipe Moon',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: showIcon
            ? IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              )
            : null,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ));
  }
}
