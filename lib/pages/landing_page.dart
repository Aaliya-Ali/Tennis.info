import 'package:flutter/material.dart';
import 'package:test_tennis_app/cards.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
      child: ListView(
              children:[ Column(
          children: [
            Card(
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 12.0),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/atp_rankings.png',
                    width: 200.0),
                    Text('  l  ',style: TextStyle(fontSize: 30.0,)),
                    Text('Top 3', 
                      style: TextStyle(fontSize: 30.0, fontFamily: 'Roboto Slab'
                    ),
                  ),
                ],
              ),
            ),
            TopThreeScroller(),
            Divider(thickness: 1.0, color: Colors.black45,),
             Card(
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // SizedBox(height: 30.0,),
                  Text('Young Stars', style: TextStyle(fontSize: 40.0, fontFamily: 'Roboto Slab'),),
                ],
              ),
            ),
            RisingStarsScroller(),
            Divider(thickness: 1.0, color: Colors.black45,),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // SizedBox(height: 30.0,),
                  Text('Last Year In Tennis', style: TextStyle(fontSize: 40.0, fontFamily: 'Roboto Slab'),),
                ],
              ),
            ),
            GrandSlamCard('Australian Open', 'AO.jpg', 0),
            GrandSlamCard('French Open', 'rolland-garros.jpg', 1),
            GrandSlamCard('Wimbledon', 'Wimbledon.jpg', 2),
            GrandSlamCard('US Open', 'USO.jpg', 3),
          ]
        ),
      ],),
    );
  }
}

class TopThreeScroller extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Row(children: [
          ScrollCard('1','Novak','Djokovic'),
          ScrollCard('2','Rafael','Nadal'),
          ScrollCard('3','Dominic','Theim'),
        ],),
      )
    );
  }
}

class RisingStarsScroller extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Row(children: [
          ScrollCard('5','Danil','Medvedev'),
          ScrollCard('6','Stefanos','Tsitsipas'),
          ScrollCard('7','Alexander','Zverev'),
        ],),
      )
    );
  }
}