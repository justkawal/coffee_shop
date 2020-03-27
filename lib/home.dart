import 'package:coffee_shop/item_model.dart';
import 'package:flutter/material.dart';

import 'cafe_model.dart';

class CoffeeHome extends StatefulWidget {
  @override
  _CoffeeHomeState createState() => _CoffeeHomeState();
}

class _CoffeeHomeState extends State<CoffeeHome> {
  int selectedSideMenuIndex = 0;

  List<String> sideList = ["Featured", "Coffee", "Tea"];

  Widget sideWidget(int index) {
    return GestureDetector(
      onTap: () {
        selectedSideMenuIndex = index;
        setState(() {});
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 9,
            height: 9,
            decoration: BoxDecoration(
                border: Border.all(
                    color: selectedSideMenuIndex == index
                        ? Color(0xFFcd9847)
                        : Colors.white,
                    width: 2),
                borderRadius: BorderRadius.circular(20)),
          ),
          SizedBox(width: 5),
          RotatedBox(
            quarterTurns: -1,
            child: Text(
              sideList[index],
              style: TextStyle(
                  color: selectedSideMenuIndex == index
                      ? Color(0xFFcd9847)
                      : Color(0xFF5a4941),
                  fontSize: 22),
            ),
          ),
        ],
      ),
    );
  }

  Widget getItemsWidget(int index, Item item) {
    return Container(
      padding: EdgeInsets.only(left: index == 0 ? 35 : 0),
      margin: EdgeInsets.only(right: 19),
      width: index == 0 ? 240 : 205,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 40, left: 10, right: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(75),
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              child: Container(
                color: Color(0xFFd39233),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 7,
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.only(left: 24, right: 24, top: 61),
                        decoration: BoxDecoration(
                            color: Color(0xFFf3f0f1),
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(23),
                                bottomLeft: Radius.circular(23))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              item.name,
                              style: TextStyle(
                                  color: Color(0xFF917264),
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                              overflow: TextOverflow.clip,
                            ),
                            SizedBox(height: 33),
                            Text(
                              item.description[0],
                              style: TextStyle(
                                  color: Color(0xFFc8b7af), fontSize: 15.5),
                              overflow: TextOverflow.clip,
                            ),
                            Text(
                              item.description[1],
                              style: TextStyle(
                                  color: Color(0xFFc8b7af), fontSize: 15.5),
                              overflow: TextOverflow.clip,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding: EdgeInsets.only(left: 18, right: 18),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              item.price,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold),
                              overflow: TextOverflow.clip,
                            ),
                            Icon(Icons.add, color: Colors.white, size: 29)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned.directional(
            textDirection: TextDirection.ltr,
            start: 30,
            top: -2,
            child: Image(
              width: 170,
              height: 90,
              fit: BoxFit.contain,
              image: AssetImage("assets/images/${itemList[index].imageUrl}"),
            ),
          ),
        ],
      ),
    );
  }

  Widget getCafeWidget(Cafe cafe) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 18, horizontal: 26),
      height: 90,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(54),
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              child: Image(
                height: 90,
                width: 90,
                fit: BoxFit.cover,
                image: AssetImage("assets/images/${cafe.imageUrl}"),
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              padding: EdgeInsets.only(left: 21, top: 6, bottom: 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    cafe.name,
                    overflow: TextOverflow.fade,
                    maxLines: 1,
                    style: TextStyle(color: Color(0xFF56463b), fontSize: 25),
                  ),
                  SizedBox(height: 10),
                  Text(
                    cafe.address,
                    overflow: TextOverflow.fade,
                    maxLines: 1,
                    style: TextStyle(color: Color(0xFFc8b7af), fontSize: 20.5),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF624639),
        body: Container(
          child: Stack(
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.only(top: 100, left: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Pick of the day",
                                  style: TextStyle(
                                      color: Color(0xFFc6b3aa), fontSize: 20),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Vanilla Espresso",
                                  style: TextStyle(
                                      color: Color(0xFFfefcfa), fontSize: 30),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 185,
                                  padding: EdgeInsets.only(top: 2),
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFdd9e42),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(50),
                                      topLeft: Radius.circular(50),
                                    ),
                                  ),
                                  child: Center(
                                    child: RichText(
                                      text: TextSpan(
                                        text: 'only ',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20.5),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: '\$3.25',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(80),
                          ),
                          child: Container(
                            color: Colors.white,
                            child: ListView(
                              children: <Widget>[
                                SizedBox(height: 20),
                                Container(
                                  width: double.infinity,
                                  height: 310,
                                  color: Colors.white,
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.only(top: 35),
                                          color: Colors.white,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: sideList
                                                .asMap()
                                                .entries
                                                .map((MapEntry map) {
                                              return sideWidget(map.key);
                                            }).toList(),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 6,
                                        child: Container(
                                          child: ListView(
                                            scrollDirection: Axis.horizontal,
                                            children: itemList
                                                .asMap()
                                                .entries
                                                .map((MapEntry map) {
                                              return getItemsWidget(
                                                  map.key, map.value);
                                            }).toList(),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  margin: EdgeInsets.only(
                                      left: 26, right: 26, top: 26, bottom: 16),
                                  height: 50,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        "Choose a Store",
                                        overflow: TextOverflow.fade,
                                        style: TextStyle(
                                          fontSize: 31,
                                          color: Color(0xFF5e4337),
                                        ),
                                      ),
                                      Text(
                                        "Change City",
                                        overflow: TextOverflow.fade,
                                        style: TextStyle(
                                          fontSize: 24,
                                          color: Color(0xFFd19843),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                for (Cafe cafeValue in cafeList)
                                  getCafeWidget(cafeValue)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned.directional(
                textDirection: TextDirection.ltr,
                top: -90,
                end: -85,
                child: Transform.scale(
                  scale: 0.44,
                  child: Image(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/espresso_coffee.png"),
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
