import 'package:banda_stay/agenda_screen.dart';
import 'package:banda_stay/home_screen.dart';
import 'package:banda_stay/side_menu.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      physics: NeverScrollableScrollPhysics(),
      pageSnapping: true,
      children: <Widget>[
        Scaffold(
        drawer: SideMenu(pageController),
        appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Bem Vindo"),
        centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: HomeScreen()
        ),
    Scaffold(
      drawer: SideMenu(pageController),
      appBar: AppBar(
      backgroundColor: Colors.black,
      title: Text("Agenda"),
      centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: AgendaScreen()
    )
      ],
    );
  }
}


