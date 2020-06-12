import 'package:flutter/material.dart';
import 'package:test_tennis_app/contents/grand_slam_info.dart';
import 'package:test_tennis_app/contents/custom_end_drawer.dart';
import 'package:test_tennis_app/contents/gs_page_contents.dart';

class GrandSlamPage extends StatelessWidget {
  final int index;
  GrandSlamPage(this.index);
  @override
  Widget build(BuildContext context) {
  var pagesInfo = GrandSlamInfo[index];
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Image.asset('images/atp-logo.png', width: 100,),
        flexibleSpace: Container(
        decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.white, Colors.blue.shade400]))
        ),
      ),
      endDrawer: CustomDrawer(),
      body: ListView(
        children: [ Container(
          color: Colors.black,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(pagesInfo['image1'], height: 100.0,),
                  VerticalDivider(width: 10.0, thickness: 10.0, color: Colors.white,),
                  Text(' The Highlights🏆', style: TextStyle(color: Colors.grey[100], fontSize: 20.0, fontWeight: FontWeight.bold,fontFamily: 'Roboto Slab'),)
                ],
              ),
              LayoutBuilder(builder: (context, constraints){
                if(constraints.maxWidth>1200){
                  return DesktopContents(pagesInfo);
                }else{
                  return MobileContents(pagesInfo);
                }
              },),
            ],
          ),
        ),
      ]),
    );
  }
}

