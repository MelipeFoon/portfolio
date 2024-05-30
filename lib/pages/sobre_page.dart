import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portifolio/breakpoints.dart';
import 'package:portifolio/widgets/app_bar/web_app_bar.dart';
import 'package:portifolio/widgets/app_bar/mobile_app_bar.dart';
import 'package:portifolio/widgets/my_drawer.dart';

class SobrePage extends StatelessWidget{
  const SobrePage({super.key});

  @override
  Widget build(BuildContext context){
    return LayoutBuilder(builder: (context, constraints){
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: constraints.maxWidth > breakpointMobile 
        ? const PreferredSize(
          preferredSize: Size(double.infinity, 100),
          child: WebAppBar(currentIndex: 1),
        )
        : const PreferredSize(
          preferredSize: Size(double.infinity, 56),
          child: MobileAppBar(showIcon: false),
        ),
        drawer: constraints.maxWidth < breakpointMobile ? MyDrawer() : null,

        body: const Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            Text(
              "Sobre mim",
              style: TextStyle(
                color: Color.fromARGB(255, 84, 92, 236),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(50),
                  child: SizedBox(
                    width: 150,
                    child: Text(""),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(50),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5))
                    ),
                    child: SizedBox(
                      width: 400,
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer eu neque vulputate mauris aliquam lacinia ac eu justo. Morbi lacinia velit eu tempor mollis. Praesent fringilla leo ut rutrum maximus. Etiam commodo lobortis purus.",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(50),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 84, 92, 236),
                      borderRadius: BorderRadius.all(Radius.circular(5))
                    ),
                    child: SizedBox(
                      width: 400,
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer eu neque vulputate mauris aliquam lacinia ac eu justo. Morbi lacinia velit eu tempor mollis. Praesent fringilla leo ut rutrum maximus. Etiam commodo lobortis purus.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
          ),
      );
    });
  }
}