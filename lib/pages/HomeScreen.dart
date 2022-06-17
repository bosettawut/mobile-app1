import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: const Text('',
            style: TextStyle(
              color: Colors.black,
              // fontFamily: 'Tiro',
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.grey,
        ),
      body:Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              mainDishCard(context),
              dessertCard(context)
            ],
          ),
        ],
      )
    );
  }
  Widget mainDishCard(BuildContext context) => Card(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(

      borderRadius: BorderRadius.circular(24),
    ),
    child: Stack(
      alignment: Alignment.center,
      children:[
        Ink.image(
          image: AssetImage('images/Thai-Dishes.png'),
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context,'/main');
            },
          ),
          height: 300,
          fit: BoxFit.cover,
        ),
        Text(
          'Main Dish',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ]
    ),
  );
  Widget dessertCard(BuildContext context) => Card(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(

      borderRadius: BorderRadius.circular(24),
    ),
    child: Stack(
        alignment: Alignment.center,
        children:[
          Ink.image(
            image: AssetImage('images/Thai-Dessert.jpg'),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context,'/dessert');
              },
            ),
            height: 300,
            fit: BoxFit.cover,
          ),
          Text(
            'Dessert',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ]
    ),
  );
}