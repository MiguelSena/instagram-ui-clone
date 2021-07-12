import 'package:flutter/material.dart';

class StoriesComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(6.0),
      child: new Container(
          width: 60.0,
          height: 60.0,
          decoration: new BoxDecoration(
            shape: BoxShape.circle,
            image: new DecorationImage(
              image: new NetworkImage('https://cdn.discordapp.com/attachments/843318526769233940/861354982767067156/arduino.png')
            )
          ),
      )
    );
  }
}