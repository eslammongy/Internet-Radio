import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:internet_radio_app/util/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int currentViewIndex = 0;
  List<Widget> pagesList = [Text("Screen One") , Text("Screen Two")];
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryLightColor,
        body: pagesList[currentViewIndex],
        bottomNavigationBar: CurvedNavigationBar(items: <Widget>[
          Icon(Icons.list, size: 30 , color: secondaryLightColor,),
          Icon(Icons.favorite_border_rounded, size: 30 , color: secondaryLightColor),
          ],
          height:60 ,
          color: primaryDarkColor,
          buttonBackgroundColor: orangeLightColor,
          backgroundColor: primaryLightColor,
          animationCurve: Curves.easeInOut,
        onTap: (index){
         setState(() {
           currentViewIndex = index;
         });
        },),
      ),
    );
  }
}
