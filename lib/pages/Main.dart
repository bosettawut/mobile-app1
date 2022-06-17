import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:project1/pages/Scroller.dart';
import 'package:project1/pages/Dessert.dart';
import 'mainDishConstant.dart';

class  Main extends StatefulWidget {

  @override
  _State createState() => _State();
}

class _State extends State<Main> {
  final Scroller scroller = Scroller();
  ScrollController controller = ScrollController();
  bool closeTopContainer = false;
  List<Widget> itemData = [];

  void getPostsData() {
    List<dynamic> responseList = FOOD_DATA;
    List<Widget> listItems = [];
    responseList.forEach((post) {
      listItems.add(Container(
          height: 150,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20.0)), color: Colors.white, boxShadow: [
            BoxShadow(color: Colors.black.withAlpha(100), blurRadius: 10.0),
          ]),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    InkWell(
                      onTap: () {Navigator.pushNamed(context,post["path"]);},
                    child: Text(
                      post["name"],
                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                Image.asset(
                  "images/small/${post["image"]}",
                  height: double.infinity,
                )
              ],
            ),
          )));
    });
    setState(() {
      itemData = listItems;
    });
  }
  @override
  void initState(){
    super.initState();
    getPostsData();
    controller.addListener(() {
      setState(() {
        closeTopContainer = controller.offset > 50;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
        child:Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            // actions: <Widget>[
            //   IconButton(
            //       onPressed:() {}, icon: const Icon(Icons.search,color: Colors.black)
            //   ),
            //   IconButton(onPressed: (){}, icon: const Icon(Icons.person, color: Colors.black)),
            // ],
          ),
            body: Container(
              height: size.height,
              child: Column(
                children: <Widget> [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      InkWell(
                        onTap:(){Navigator.pushNamed(context,'/dessert');},
                        child: const Text("Dessert",
                        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 20)
                        ),
                      ),
                      const Text("Main Dish",
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20)
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  AnimatedContainer(duration:
                  const Duration(milliseconds: 200),
                  width:size.width,
                  alignment: Alignment.topCenter,
                  height: closeTopContainer?0:size.height*0.30,
                    child: scroller,),
                  Expanded(
                      child: ListView.builder(
                        controller: controller,
                        itemCount: itemData.length,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, int index) {
                          return itemData[index];
                        },
                      ),
                  )
                ],
              )
            ),
        ),

    );
  }
}



