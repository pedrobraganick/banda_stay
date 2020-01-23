import 'package:flutter/material.dart';
import 'package:banda_stay/home_page.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Banda stay strong',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class DelayScreen extends StatefulWidget {
  @override
  _DelayScreenState createState() => _DelayScreenState();
}

class _DelayScreenState extends State<DelayScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SplashScreen(
        seconds: 5,
        navigateAfterSeconds: HomePage(),
        image: Image.asset('assets/logos/logo.jpg'),
        photoSize: 100.0,
        backgroundColor: Colors.white,
        loaderColor: Colors.black,
        loadingText: Text("Aguarde", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w500),),
      ),
    );
  }
}


