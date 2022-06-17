import 'package:flutter/material.dart';
import 'package:project1/recipe/somTum.dart';
import 'recipe/bua-loy.dart';
import 'recipe/khaNomChan.dart';
import 'recipe/saku.dart';
import 'recipe/padKraPao.dart';
import 'recipe/padThai.dart';
import 'recipe/somTum.dart';
import 'pages/HomeScreen.dart';
import 'pages/Main.dart';
import 'card/stopwatch.dart';
import 'pages/Dessert.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/stop',
  routes: {
    '/stop': (context) => StopWatch(),
    '/dessert':(context) => Dessert(),
    '/home':(context) => HomeScreen(),
    '/main':(context) => Main(),
    '/buaLoy':(context) => BuaLoy(),
    '/saku':(context) => Saku(),
    '/khaNomChan':(context) => KhaNomChan(),
    '/padThai':(context) => PadThai(),
    '/padKraPao':(context) => krapao(),
    '/somTum':(context) => SomTum(),
  },
));