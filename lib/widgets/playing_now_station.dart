import 'package:flutter/material.dart';
import 'package:internet_radio_app/util/colors.dart';

class PlayingNowStation extends StatelessWidget {
  final String radioName;
  final String radioPic;

  const PlayingNowStation({Key key, this.radioName, this.radioPic})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: secondaryLightColor,
      child: SingleChildScrollView(
        child: Container(
          color: secondaryLightColor,
          child: Column(
            children: [_buildStationRow()],
          ),
        ),
      ),
    );
  }

  Widget _buildStationRow() {
    return Card(
      elevation: 10,
      color: Colors.deepPurple,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
          height: 90,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                      image: NetworkImage(radioPic),
                      fit: BoxFit.fill,
                      width: 80,
                      height: 80,
                    )),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      radioName,
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 20,
                          color: primaryDarkColor),
                    ),
                    Text(
                      "is playing now..",
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 17,
                          color: primaryDarkColor),
                    )
                  ],
                ),
                SizedBox(
                  width: 40,
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  icon: Icon(Icons.stop_circle_outlined,
                      size: 30, color: orangeLightColor),
                  onPressed: () {},
                ),
                SizedBox(
                  width: 15,
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  icon: Icon(Icons.share_rounded,
                      size: 30, color: Colors.black26),
                  onPressed: () {},
                ),
              ],
            ),
          )),
    );
  }
}
