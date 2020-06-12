import 'package:flutter/material.dart';
import 'package:test_tennis_app/main.dart';
import 'package:test_tennis_app/pages/grand_slam_page.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(child: ListView(children: [
      DrawerHeader(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            image: DecorationImage(
              image: AssetImage('images/menu.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          child: Text('  Menu', 
            style: TextStyle(
              color: Colors.white, 
              fontWeight: FontWeight.bold, 
              fontSize: 20.0,
              fontFamily: 'Roboto Slab'
            ),
          ),
        ),
      ),
      ListTile(
        title: Text('Home'), onTap: (){
          Navigator.pushReplacement(
            context, 
            MaterialPageRoute(builder: (BuildContext context) => MyHomePage(),)
          );
        },
      ),
      ListTile(
        title: Text('Australian Open'), onTap: (){
          Navigator.push(
            context, 
            MaterialPageRoute(builder: (BuildContext context) => GrandSlamPage(0),)
          );
        },
      ),
      ListTile(
        title: Text('French Open'), onTap: (){
          Navigator.push(
            context, 
            MaterialPageRoute(builder: (BuildContext context) => GrandSlamPage(1),)
          );
        },
      ),
      ListTile(
        title: Text('Wimbledon'), onTap: (){
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (BuildContext context) => GrandSlamPage(2),)
          );
        },
      ),
      ListTile(title: Text('US Open'), onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (BuildContext context) => GrandSlamPage(3),)
          );
        },
      ),],
      ),
    );
  }
}