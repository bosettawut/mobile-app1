import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter/rendering.dart';
class ScrollerD extends StatelessWidget {

  const ScrollerD();

  @override
  Widget build(BuildContext context) {
    final double categoryHeight = MediaQuery.of(context).size.height * 0.30 - 50;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: FittedBox(
          fit: BoxFit.fill,
          alignment: Alignment.topCenter,

          child: Row(

            children: <Widget>[

              Container(
                width: 150,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight,
                decoration: const BoxDecoration( image: DecorationImage(image: AssetImage('images/bua-loy.webp'),
                  fit:BoxFit.cover,),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)
                  ),
                ),
                child: ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 0.5, sigmaY: 0.5),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(

                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Text(
                            "Most\nFavorite",
                            style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold,),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),),),
              Container(
                width: 150,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight,
                decoration: const BoxDecoration( image: DecorationImage(image: AssetImage('images/saku.jpg'),
                  fit:BoxFit.cover,),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)
                  ),
                ),
                child: ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 0.5, sigmaY: 0.5),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(

                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Text(
                            "Best\nSweet",
                            style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold,),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),),),
              Container(
                width: 150,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight,
                decoration: const BoxDecoration( image: DecorationImage(image: AssetImage('images/khanomchan.jpg'),
                  fit:BoxFit.cover,),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)
                  ),
                ),
                child: ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 0.5, sigmaY: 0.5),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(

                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Text(
                            "Simple",
                            style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold,),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}