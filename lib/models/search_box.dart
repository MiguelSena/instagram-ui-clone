import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20.0, 12.0, 20.0, 4.0),
      child: Container(
        height: 55.0,
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            hintText: 'Pesquisar',
            fillColor: Colors.grey[300],
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(15.0)
              ),

              borderSide: BorderSide(color: Colors.grey[300])
            ),

            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(15.0)
              ),

              borderSide: BorderSide(color: Colors.grey[300])
            )
          )
        ),
      )
    );
  }
}
