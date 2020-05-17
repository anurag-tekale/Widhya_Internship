import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 15),
      child: SizedBox(
        child: TextField(
          cursorColor: Colors.black,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            hintText: 'Tasks, Challenges',
            fillColor: Colors.white24,
            filled: true,
            focusColor: Colors.black,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white24, width: 2),
              borderRadius: BorderRadius.circular(25),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 2),
              borderRadius: BorderRadius.circular(25),
            ),
          ),
        ),
        height: 60,
        width: 260,
      ),
    );
  }
}
