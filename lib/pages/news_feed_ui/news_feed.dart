import 'package:cisapp_projects/components/favourite_items.dart';
import 'package:cisapp_projects/components/second_row_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'custom_card.dart';

class NewsFeed extends StatefulWidget {
 
  @override
  _NewsFeedState createState() => _NewsFeedState();
}

class _NewsFeedState extends State<NewsFeed> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 3,
          child: SafeArea(
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                title: ListTile(
                  minLeadingWidth: 20,
                  leading: CircleAvatar(
                    radius: 21,
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvosUMJLcQM87K9HU0sGb6Uc4c1mRvpKQWmw&usqp=CAU'),
                  ),
                  title: Text('CISApp',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        letterSpacing: 1,
                      )),
                  subtitle: Text(
                    'Public',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search),
                    iconSize: 32,
                    color: Colors.black87,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications_none),
                    iconSize: 32,
                    color: Colors.black,
                  )
                ],
                bottom: TabBar(
                 labelPadding:EdgeInsets.only(left:35),
                    indicatorPadding: EdgeInsets.only(left: 5),              
                    tabs: <Widget>[
                      Tab(
                        child: Text(
                          '   Feed',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Messenger',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Explore',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ]),
              ),
              body: ListView(
                children: [
                  SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        FavouriteItem(
                          text: 'Fashion',
                        ),
                        FavouriteItem(text: 'Photography'),
                        FavouriteItem(text: 'food'),
                        FavouriteItem(text: 'Art'),
                        FavouriteItem(
                          text: 'Mem',
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                   // crossAxisAlignment: CrossAxisAlignment.center,
                   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin:EdgeInsets.only(left: 15),
                        child: Expanded(
                         
                          child: SecondRowItem(
                            
                            colour1: Colors.purple[100],
                            colour2: Colors.purple[800],
                            colour3:Colors.purple[800],
                            text: 'Posts',
                          icon: SvgPicture.asset('assets/image.svg',color:Colors.purple[800]),
                          ),
                        ),
                      ),
                  
                      Expanded(
                        child: SecondRowItem(
                            colour1: Colors.orange[100],
                            colour2: Colors.orange[100],
                            colour3: Colors.orange[800],
                            text: 'Videos',
                            icon: SvgPicture.asset('assets/play_circle2.svg',color:Colors.orange[800])),
                      ),
                      Container(
                        margin: EdgeInsets.only(right:9),
                        child: Expanded(
                          child: SecondRowItem(
                            colour1: Colors.pink[100],
                            colour2: Colors.pink[100],
                            colour3:Colors.pink[800],
                            text: 'Articles',
                         icon: SvgPicture.asset('assets/document.svg',color: Colors.pink[800],),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                CustomCard(),
                CustomCard(),
                CustomCard(),
                CustomCard(),
                
                ],
                
              ),
              floatingActionButton: FloatingActionButton(onPressed: (){},backgroundColor: Color(0xFF3696D2),child:Icon(Icons.add,size: 40,),),
            ),
            
          ),
        ),
      ),
    );
  }
}