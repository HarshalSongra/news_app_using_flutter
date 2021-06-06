import 'package:flutter/material.dart';
import 'dart:async';
import 'package:news_app/views/home_view.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () => home());
  }

  void home(){
    runApp(Home());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.black),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 7,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 75.0),
                        child: Text(
                          " Flutter  \n News",
                          style: TextStyle(
                              color: Colors.grey[400],
                              fontWeight: FontWeight.bold,
                              fontSize: 55.0),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[


                      Padding(
                        padding: EdgeInsets.only(bottom: 40.0),
                        child: CircularProgressIndicator(
                          strokeWidth: 4,
                          valueColor:
                              new AlwaysStoppedAnimation<Color>(Colors.blue),
                        ),

                      ),
                      SizedBox(height: 5.0,),
                      Center(child: Text(" Loading.... ", style: TextStyle(color: Colors.grey[500],),)),
                    ],
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
