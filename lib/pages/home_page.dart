import 'package:flutter/material.dart';
import 'package:portifolio/breakpoints.dart';
import 'package:portifolio/widgets/app_bar/web_app_bar.dart';
import 'package:portifolio/widgets/app_bar/mobile_app_bar.dart';
import 'package:portifolio/widgets/my_drawer.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context){
    return LayoutBuilder(builder: (context, constraints){
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: constraints.maxWidth > breakpointMobile
        ? const PreferredSize(
          preferredSize: Size(double.infinity, 100),
          child: WebAppBar(currentIndex: 0),
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
              "Bem-vindo!",
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
                  child: SizedBox(
                    width: 400,
                    child: Text(
                      "Meu nome é Felipe Moon e sou estudante de ciência da computação pelo IMT. Atualmente, 2024, estou cursando o 3º semestre do ensino superior em busca de experiência profissional no mercado de trabalho.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(50),
                  child: SizedBox(
                    width: 400,
                    child: Image(
                      image: AssetImage("assets/images/fotoPerfil.jpeg"),
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

