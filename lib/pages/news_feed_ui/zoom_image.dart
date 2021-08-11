import 'package:flutter/material.dart';

class ZoomImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://i.pinimg.com/736x/50/df/34/50df34b9e93f30269853b96b09c37e3b.jpg'),
                        )),
                      ),
                    );
  }
}