
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internet_radio_app/model/radio_model.dart';
import 'package:internet_radio_app/util/colors.dart';

class StationRow extends StatefulWidget {

  final RadioModel radioModel;
  const StationRow({Key key , this.radioModel}) : super(key: key);
  @override
  _StationRowState createState() => _StationRowState();
}

class _StationRowState extends State<StationRow> {
  @override
  Widget build(BuildContext context) {
    return _buildStationRow();
  }

  Widget _buildStationRow() {
    return Card(
      elevation: 10,
      margin: EdgeInsets.symmetric(vertical: 5 , horizontal: 10),
      color: secondaryLightColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      child: Container(
        height: 90,
          width: double.infinity,
          decoration: BoxDecoration(
              color: secondaryLightColor,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                      image: NetworkImage(this.widget.radioModel.radioPic),
                      fit: BoxFit.fill,
                      width: 80,
                      height: 80,
                    )),
                SizedBox(width: 20,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      this.widget.radioModel.radioName,
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 20,
                          color: primaryDarkColor),
                    ),
                    Text(
                      this.widget.radioModel.radioDesc,
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 20,
                          color: primaryDarkColor),
                    )
                  ],
                ),
                SizedBox(width: 80,),
                Icon(Icons.play_circle_outline_rounded,
                    size: 30, color: orangeLightColor),
                SizedBox(width: 20,),
                Icon(Icons.favorite_border_rounded,
                    size: 30, color: Colors.black26)
              ],
            ),
          )),
    );
  }
}
