import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:internet_radio_app/screens/station_list.dart';
import 'package:internet_radio_app/util/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int currentViewIndex = 0;
  List<Widget> pagesList = [StationList(), Text("Screen Two")];
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        backgroundColor: primaryLightColor,
        body: pagesList[currentViewIndex],
        bottomNavigationBar: Container(
          height: 70,
          margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          decoration: BoxDecoration(
              color: primaryDarkColor,
              borderRadius: BorderRadius.all(Radius.circular(10)),
             ),
          child: GNav(
            tabMargin: EdgeInsets.all(8),
            curve: Curves.fastOutSlowIn,
            duration: Duration(milliseconds: 500),
            tabs:[
            GButton(
            gap: 10,
            icon:Icons.list,
            iconColor: Colors.white24,
            iconActiveColor: Color(0xffE55800),
            text: "Station List",
            textColor: Color(0xffE55800),
            backgroundColor: Colors.deepOrange.withOpacity(0.2),
            iconSize: 24,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          ),
          GButton(
              gap: 10,
              icon: Icons.favorite_border_rounded,
              iconColor: Colors.white24,
              iconActiveColor: Color(0xffE55800),
              text: "Favorite List",
              textColor: Color(0xffE55800),
              backgroundColor: Colors.deepOrange.withOpacity(0.2),
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15)),

          ],
            selectedIndex: currentViewIndex,
            onTabChange: (index){
               setState(() {
                 currentViewIndex = index;
               });
            },
          ),
        )
      ),
    );
  }
}

