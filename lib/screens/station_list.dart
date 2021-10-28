
import 'package:flutter/material.dart';
import 'package:internet_radio_app/model/radio_model.dart';
import 'package:internet_radio_app/util/colors.dart';
import 'package:internet_radio_app/widgets/playing_now_station.dart';
import 'package:internet_radio_app/widgets/station_row.dart';

class StationList extends StatefulWidget {
  const StationList({Key key}) : super(key: key);

  @override
  _StationListState createState() => _StationListState();
}

class _StationListState extends State<StationList> {
  final _searchQuery = new TextEditingController();
  RadioModel radioModel = RadioModel(id: 1 , radioName: "90.90" , radioDesc:  "هواها مصري" , radioPic: "https://2.bp.blogspot.com/-f7sCcrMx3Cg/V6YOI57SZsI/AAAAAAAAEPk/zwzL45Rt9O04iS_rFaHT6BcvXzZBEJ7LgCLcB/s1600/%25D8%25A7%25D8%25B3%25D8%25AA%25D9%2585%25D8%25A7%25D8%25B9%2B%25D8%25A7%25D8%25B0%25D8%25A7%25D8%25B9%25D8%25A9%2B%25D8%25B1%25D8%25A7%25D8%25AF%25D9%258A%25D9%2588%2B9090%2B%25D8%25A7%25D9%2581%2B%25D8%25A7%25D9%2585%2B%25D8%25A8%25D8%25AB%2B%25D9%2585%25D8%25A8%25D8%25A7%25D8%25B4%25D8%25B1%2B%25D8%25A8%25D8%25AF%25D9%2588%25D9%2586%2B%25D8%25AA%25D9%2582%25D8%25B7%25D9%258A%25D8%25B9%2BRadio%2BFM%2B9090.PNG"
  ,radioURL: "yuu");
  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryLightColor,
      child: Column(children: [
        _appLogo(),
        _searchBar(),
        _buildRadioStationList(),
        PlayingNowStation(radioName: radioModel.radioName,radioPic: radioModel.radioPic,)
    ],),);
  }

  Widget _searchBar() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.search),
           Flexible(
            child:  TextField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(5),
                hintText: 'Search Radio',
              ),
              controller: _searchQuery,
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }

  Widget _appLogo() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: primaryDarkColor,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
      ),
      height: 80,
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Center(
          child: Row(children: [
            Image.asset(
              "assets/images/radio.png",
              width: 50,
              height: 50,
            ),
            SizedBox(width: 30,),
            Text(
            "Radio APP",
            style: TextStyle(fontFamily: "Pacifico" , fontSize: 30 ,color: primaryLightColor)),
          ],)
          ),
        ),
    );
  }

  Widget _buildRadioStationList(){
    return Expanded(child:Padding(padding: EdgeInsets.zero,
    child: ListView(
      physics: BouncingScrollPhysics(),
      children: [
        ListView.separated(
          physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context , index){
          return StationRow(radioModel: radioModel);
        }, separatorBuilder: (context , index){
            return Divider();
        }, itemCount: 10)
      ],
    ),
    ));
  }


}
