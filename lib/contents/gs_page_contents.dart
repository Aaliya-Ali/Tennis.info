import 'package:flutter/material.dart';

class DesktopContents extends StatelessWidget {
  final pagesInfo;
  DesktopContents(this.pagesInfo);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        Card(
          child:  Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.asset(pagesInfo['image2'], height: 400.0,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.calendar_today),
                        SizedBox(width: 20.0),
                        Text(pagesInfo['when'], style: TextStyle(color:Colors.black, fontSize: 20.0, fontWeight: FontWeight.normal),),
                        ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.location_on),
                    SizedBox(width: 20.0),
                    Text(pagesInfo['where'], 
                      style: TextStyle(
                        color:Colors.black, 
                        fontSize: 20.0, 
                        fontWeight: FontWeight.normal
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ),
        Card(
          child:  Padding(
            padding: const EdgeInsets.all(8.0),
              child: Column(
              children: [
                Image.asset(pagesInfo['image3'],height: 400.0,),
                Row(
                  children: [
                    Icon(Icons.looks_one),
                    SizedBox(width: 20.0),
                    Text(pagesInfo['winner'], 
                      style: TextStyle(
                      color:Colors.black, 
                      fontSize: 20.0, 
                      fontWeight: FontWeight.normal
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.looks_two),
                    SizedBox(width: 20.0),
                    Text(pagesInfo['runner-up'],
                      style: TextStyle(
                      color:Colors.black, 
                      fontSize: 20.0, 
                      fontWeight: FontWeight.normal
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ),
      ]
    );
  }
}

class MobileContents extends StatelessWidget {
  final pagesInfo;
  MobileContents(this.pagesInfo);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children:[
        Card(
          child:  Padding(
          padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.asset(pagesInfo['image2'], height: 300.0,),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.calendar_today),
                        SizedBox(width: 20.0),
                        Text(pagesInfo['when'],
                        style: TextStyle(
                          color:Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.normal
                          ),
                        ),
                     ],  
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.location_on),
                    SizedBox(width: 20.0),
                    Text(pagesInfo['where'],
                    style: TextStyle(
                      color:Colors.black, 
                      fontSize: 20.0, 
                      fontWeight: FontWeight.normal
                      ),
                   ),
                  ],
                ),
             ],
            ),
          )
        ),
        Card(
          child:  Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(pagesInfo['image3'],height: 300.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.looks_one),
                    SizedBox(width: 20.0),
                    Text(pagesInfo['winner'], style: TextStyle(color:Colors.black, fontSize: 20.0, fontWeight: FontWeight.normal),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.looks_two),
                    SizedBox(width: 20.0),
                    Text(pagesInfo['runner-up'], style: TextStyle(color:Colors.black, fontSize: 20.0, fontWeight: FontWeight.normal),),
                  ],
                ),
              ],
            ),
          )
        ),
      ],
    );
  }
}