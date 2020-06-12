import 'package:flutter/material.dart';
import 'package:test_tennis_app/contents/custom_end_drawer.dart';
import 'pages/landing_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('images/atp-logo.png', width: 100,
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.white, Colors.blue.shade400]),
          )
        ),
      ),
      endDrawer: CustomDrawer(),
      body: LandingPage(),
    );
  }
}