import 'package:flutter/material.dart';
import 'package:test_tennis_app/pages/grand_slam_page.dart';

class ScrollCard extends StatelessWidget {
  final String playerRank;
  final String firstName;
  final String lastName;

  ScrollCard(this.playerRank, this.firstName, this.lastName);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 800.0,
      height: 400.0,
      margin: EdgeInsets.only(right: 50.0),
      color: Colors.grey[200],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('World No.', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),),
            Text('$playerRank',style: TextStyle(fontSize: 70.0))
          ],
        ),
        Image.asset('images/players/$playerRank.png'), 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$firstName'),
            Text('$lastName',style: TextStyle(fontSize: 30.0)),
            Image.asset('images/flags/$playerRank.png', width: 100.0),
          ],
        ),
      ]),
    );
  }
}

class GrandSlamCard extends StatelessWidget {
  final String name;
  final String imageName;
  final int index;

  GrandSlamCard(this.name, this.imageName, this.index);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return GrandSlamPage(index);
          }
        ));
      },
      child: Card(child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: 20.0),
          Text('$name', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
          SizedBox(width: 10.0),
          Image.asset('images/$imageName', height: 150.0,)
          ]
        ),
      ),
    );
  }
}