import 'package:flutter/material.dart';

import 'constants.dart';
import 'softControl.dart';

class PlayerPage extends StatefulWidget {
  @override
  _PlayerPageState createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CircularSoftButton(
                  icon: Icon(Icons.arrow_back_ios),
                ),
                Text('Fav. Album'),
                CircularSoftButton(
                  icon: Icon(Icons.more_horiz),
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width - 50,
                  height: MediaQuery.of(context).size.width - 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.width),
                    gradient: LinearGradient(
                      colors: [shadowColor, lightShadowColor],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: shadowColor,
                          offset: Offset(8, 6),
                          blurRadius: 12),
                      BoxShadow(
                          color: lightShadowColor,
                          offset: Offset(-8, -6),
                          blurRadius: 12),
                    ],
                  ),
                ),
                Positioned(
                  top: 10,
                  bottom: 10,
                  left: 10,
                  right: 10,
                  child: CircleAvatar(
                    backgroundImage: Image.asset('assets/fog.jpg').image,
                  ),
                )
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Surat Al Baqarah',
              style: TextStyle(fontSize: 28, color: textColor),
            ),
            Text(
              'mishari alafasy',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: textColor),
            ),
            SizedBox(height: 16),
            Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(32),
                  width: double.infinity,
                  height: 24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: backgroundColor,
                    boxShadow: [
                      BoxShadow(
                          color: lightShadowColor,
                          offset: Offset(1, 4),
                          blurRadius: 12),
                      BoxShadow(color: shadowColor, offset: Offset(-1, -4)),
                    ],
                  ),
                ),
                Positioned(
                  top: 2,
                  bottom: 2,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                    width: 200,
                    height: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: LinearGradient(
                        colors: [seekbarDarkColor, seekbarLightColor],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CircularSoftButton(
                    icon: Icon(Icons.skip_previous),
                  ),
                  CircularSoftButton(
                    icon: Icon(Icons.play_arrow),
                    radius: 40,
                  ),
                  CircularSoftButton(
                    icon: Icon(Icons.skip_next),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
