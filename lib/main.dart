import 'package:expense_tracker/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _currindex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> items = [
      new Container(
        color: white,
      ),
      new Container(
        color: black,
      ),
    ];
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: new Container(
        child: new Stack(
          children: <Widget>[
            new Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: new Container(
                color: blue,
                height: height / 1.5,
              ),
            ),
            new Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.topCenter,
                height: height / 2,
                child: new SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: new Container(
                          alignment: Alignment.topCenter,
                          margin: EdgeInsets.only(
                              top: width / 20,
                              left: width / 20,
                              right: width / 20),
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              new Icon(
                                FontAwesomeIcons.bars,
                                color: white,
                              ),
                              new Text(
                                "Account",
                                style: TextStyle(
                                    color: white, fontFamily: "Montserrat"),
                              ),
                              Container(
                                height: height / 20,
                                width: width / 10,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7.0),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: new AssetImage(
                                            "assets/image.jpg"))),
                              )
                            ],
                          ),
                        ),
                      ),
                      new Expanded(
                        flex: 1,
                        child: new Container(
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              new Text(
                                "Current Balance",
                                style: TextStyle(
                                    color: white,
                                    wordSpacing: 2,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold),
                              ),
                              new Padding(
                                padding: EdgeInsets.all(5.0),
                              ),
                              new Text(
                                "2805.00",
                                style: TextStyle(
                                    color: white,
                                    fontSize: 20,
                                    fontFamily: "Montserrat"),
                              ),
                            ],
                          ),
                        ),
                      ),
                      new Expanded(
                        flex: 1,
                        child: new Container(
                            margin: EdgeInsets.only(
                                left: width / 20, right: width / 20),
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                new Expanded(
                                  flex: 1,
                                  child: new Container(
                                    child: new Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        new Container(
                                          height: height / 20,
                                          width: width / 10,
                                          decoration: BoxDecoration(
                                              color: white.withOpacity(0.2),
                                              shape: BoxShape.circle),
                                          child: new Icon(
                                            FontAwesomeIcons.arrowDown,
                                            color: white,
                                          ),
                                        ),
                                        new Padding(
                                          padding: EdgeInsets.all(5.0),
                                        ),
                                        new Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            new Text(
                                              "\$32,500",
                                              style: TextStyle(
                                                  color: white,
                                                  fontSize: 20,
                                                  fontFamily: "Montserrat"),
                                            ),
                                            new Text(
                                              "Expenses",
                                              style: TextStyle(
                                                  color: white.withOpacity(0.5),
                                                  wordSpacing: 2,
                                                  letterSpacing: 1,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                new Expanded(
                                  flex: 1,
                                  child: new Container(
                                    child: new Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        new Container(
                                          height: height / 20,
                                          width: width / 10,
                                          decoration: BoxDecoration(
                                              color: white.withOpacity(0.2),
                                              shape: BoxShape.circle),
                                          child: new Icon(
                                            FontAwesomeIcons.arrowUp,
                                            color: white,
                                          ),
                                        ),
                                        new Padding(
                                          padding: EdgeInsets.all(5.0),
                                        ),
                                        new Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            new Text(
                                              "\$12,500",
                                              style: TextStyle(
                                                  color: white,
                                                  fontSize: 20,
                                                  fontFamily: "Montserrat"),
                                            ),
                                            new Text(
                                              "Income",
                                              style: TextStyle(
                                                  color: white.withOpacity(0.5),
                                                  wordSpacing: 2,
                                                  letterSpacing: 1,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ),
            new Align(
              alignment: Alignment.topCenter,
              child: new ListView(
                padding: EdgeInsets.all(0.0),
                physics: BouncingScrollPhysics(),
                children: <Widget>[
                  new Container(
                    height: height / 2,
                  ),
                  new Container(
                    // height: height / 1.5,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0)),
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                              top: width / 20,
                              left: width / 20,
                              right: width / 20),
                          child: new Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              new Text(
                                "Expences",
                                style: TextStyle(
                                    color: _currindex == 0
                                        ? dark
                                        : black.withOpacity(0.5),
                                    fontWeight: FontWeight.bold),
                              ),
                              new Text(
                                "Income",
                                style: TextStyle(
                                    color: _currindex == 1
                                        ? dark
                                        : black.withOpacity(0.5),
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: height / 1.5,
                          width: width,
                          margin: EdgeInsets.only(
                              top: width / 20,
                              left: width / 20,
                              right: width / 20),
                          child: new PageView(
                            onPageChanged: (i) {
                              setState(() {
                                _currindex = i;
                              });
                            },
                            physics: BouncingScrollPhysics(),
                            children: items,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
