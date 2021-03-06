import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SecondRowItem extends StatelessWidget {
  final SvgPicture icon;
  final String text;
  final Color colour1;
  final Color colour2;
  final Color colour3;
  SecondRowItem(
      {this.text, this.icon, this.colour1, this.colour2, this.colour3});
  @override
  Widget build(BuildContext context) {
    return Container(
       height: 31,
       width: 120,
      alignment: Alignment.center,
      margin: EdgeInsets.all(5),
     padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: colour1,
        border: Border.all(
          color: colour2,
        ),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
       
        children: [
          icon,
          SizedBox(width: 5),
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold, color: colour3,fontSize: 15),
          ),
        ],
      ),
    );
  }
}
