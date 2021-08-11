import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:cisapp_projects/pages/news_feed_ui/zoom_image.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCard extends StatefulWidget {
  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  Color iconColour = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      margin:EdgeInsets.only(left: 5,right:3),
      child: Column(
     
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://i.pinimg.com/736x/50/df/34/50df34b9e93f30269853b96b09c37e3b.jpg'),
            ),
            title: Text(
              'Trivikram',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Yesterday 05:10 AM'),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_horiz,
                  color: Colors.black87,
                )),
          ),
          //news post
          Expanded(
            child: GestureDetector(
              child: Container(
       
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                   
                      'https://cdn.fstoppers.com/styles/full/s3/photos/2019/02/857ebd7658e56c84a4dc65cc4453a305.jpg?itok=rpCL6_UU',),
                ),
                ),
              ),
              onTap: () {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ZoomImage()));
                });
              },
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Container(
            margin: EdgeInsets.only(left: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  child: SvgPicture.asset('assets/like.svg'),
                  onTap: () {
                   
                  },
                ),
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  child:SvgPicture.asset('assets/comment.svg'),
                  onTap: () {},
                ),
                SizedBox(
                  width: 20,
                ),
               SvgPicture.asset('assets/share.svg'),
                SizedBox(width:50),
                Text('171 likes  ',style:TextStyle(color: Colors.black87,fontWeight:FontWeight.bold )),   
               Icon(Icons.circle,size: 5,),
                Text('  30 comments',style:TextStyle(color: Colors.black87,fontWeight:FontWeight.bold, )),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text('     This goes back to the positive environment point youqw ',style: TextStyle(fontWeight: FontWeight.bold),),
          Text('be around with others who are just ambitious as you.',style: TextStyle(fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          Divider(
            color: Colors.grey[400],
          )
        ],
      ),
    );
  }
}
