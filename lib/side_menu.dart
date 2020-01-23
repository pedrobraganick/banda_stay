import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  final PageController pageController;

  SideMenu(this.pageController);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: InkWell(
          child: Stack(
            children: <Widget>[
              ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  DrawerHeader(
                    decoration: BoxDecoration(color: Colors.black),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Stay Strong",
                          style: TextStyle(fontSize: 25.0, color: Colors.white),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ),
                  Container(
                    child: ListTile(
                      contentPadding: EdgeInsets.only(left: 18.0),
                      title: Text("Início"),
                        onTap: (){
                          Navigator.of(context).pop();
                          pageController.jumpToPage(0);
                        }
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Container(
                    child: ListTile(
                      contentPadding: EdgeInsets.only(left: 18.0),
                      title: Text("Agenda"),
                        onTap: (){
                          Navigator.of(context).pop();
                          pageController.jumpToPage(1);
                        }
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(left: 18.0),
                    title: Text("Fotos"),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                ],
              ),
            ],
          )
        )
        );

  }
}
