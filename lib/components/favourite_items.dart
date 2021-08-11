import 'package:flutter/material.dart';

class FavouriteItem extends StatelessWidget {
  final String text;

  FavouriteItem({this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      // width: 80,
      // height: 30,
      margin: EdgeInsets.only(left: 15),
      padding: EdgeInsets.symmetric(horizontal: 11, vertical: 7),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
