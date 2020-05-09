import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:programming_competition/component/animated_background.dart';
import 'package:programming_competition/component/animated_wave.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 15.0),
      color: Colors.blue,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 25.0, left: 30.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Social media :'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 25.0, left: 95.0),
                child: Align(
                  child: Text('Organized by :'),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 22.0),
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.instagram),
                  onPressed: () async {
                    const url = 'https://www.instagram.com/fskmuitmmelaka/';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                ),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.facebook),
                  onPressed: () async {
                    const url =
                        'https://www.facebook.com/fskmuitmcawanganmelaka/';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                ),
                Container(
                  margin: EdgeInsets.only(left: 100.0),
                  child: Row(
                    children: <Widget>[
                      Image(
                        image: AssetImage('images/UITM-Logo.png'),
                        width: 75.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
          child: Center(
            child: Hero(
              tag: 'pc_image_1',
              child: Image(
                image: AssetImage('images/pc_2019_1.jpg'),
              ),
            ),
          ),
          onTap: () {
            Navigator.pop(context);
          }),
    );
  }
}

class DetailScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
          child: Center(
            child: Hero(
              tag: 'pc_image_2',
              child: Image(
                image: AssetImage('images/pc_2019_2.jpg'),
              ),
            ),
          ),
          onTap: () {
            Navigator.pop(context);
          }),
    );
  }
}

class DetailScreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
          child: Center(
            child: Hero(
              tag: 'pc_image_3',
              child: Image(
                image: AssetImage('images/pc_2019_3.jpg'),
              ),
            ),
          ),
          onTap: () {
            Navigator.pop(context);
          }),
    );
  }
}

class DetailScreen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
          child: Center(
            child: Hero(
              tag: 'pc_image_4',
              child: Image(
                image: AssetImage('images/pc_2019_4.jpg'),
              ),
            ),
          ),
          onTap: () {
            Navigator.pop(context);
          }),
    );
  }
}

class DetailScreen5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
          child: Center(
            child: Hero(
              tag: 'pc_image_5',
              child: Image(
                image: AssetImage('images/pc_2018_1.jpg'),
              ),
            ),
          ),
          onTap: () {
            Navigator.pop(context);
          }),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.blue.shade300)
    );

    onBottom(Widget child) => Positioned.fill(
      child: Align(
        widthFactor: 400,
        alignment: Alignment.bottomCenter,
        child: child,
      ),
    );

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            //header (Start)
            ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0)),
              child: Container(
                color: Colors.blue.shade300,
                height: 250.0,
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(child: AnimatedBackground()),
                    onBottom(AnimatedWave(
                      height: 180,
                      speed: 1.0,
                    )),
                    onBottom(AnimatedWave(
                      height: 120,
                      speed: 0.9,
                      offset: pi,
                    )),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, top: 25.0),
                      child: Text(
                        'Programming Competition Event',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Roboto Slab Black',
                          fontSize: 40.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //header (End)
            //body (Start)
            Container(
              margin: EdgeInsets.all(25.0),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'About',
                          style: TextStyle(
                            fontFamily: 'Source Sans Pro',
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'UiTM Jasin usually will held programming competition every year '
                              'in KICTM Carnival. This competition will generally involves the '
                              'participants to solve logical or mathematical problems known as '
                              'puzzels and compete to win the prize.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Source Sans Pro',
                            fontSize: 20.0,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                    child: Divider(
                      color: Colors.teal.shade100,
                    ),
                  ),
                  Text(
                    'Upcoming Event',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0, left: 52.0),
                    child: ListView(
                      shrinkWrap: true,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Date',
                              style: TextStyle(
                                fontFamily: 'Source Sans Pro',
                                fontSize: 20.0,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                '    : 22/5/2020',
                                style: TextStyle(
                                  fontFamily: 'Source Sans Pro',
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Time',
                              style: TextStyle(
                                fontFamily: 'Source Sans Pro',
                                fontSize: 20.0,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                '   : 9.00 A.M - 5.00 P.M',
                                style: TextStyle(
                                  fontFamily: 'Source Sans Pro',
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Venue',
                              style: TextStyle(
                                fontFamily: 'Source Sans Pro',
                                fontSize: 20.0,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                ' : Makmal Big Data',
                                style: TextStyle(
                                  fontFamily: 'Source Sans Pro',
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                    child: Divider(
                      color: Colors.teal.shade100,
                    ),
                  ),
                  Text(
                    'Past Events',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Programming Competition 2016',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Card(
                    child: Image(
                      image: AssetImage('images/pc_2016_main.jpg'),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Programming Competition 2018',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Card(
                    child: Image(
                      image: AssetImage('images/pc_2018_main.jpg'),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Card(
                          child: GestureDetector(
                              child: Hero(
                                tag: 'pc_image_5',
                                child: Image(
                                  image: AssetImage('images/pc_2018_1.jpg'),
                                  width: 50.0,
                                ),
                              ),
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) {
                                      return DetailScreen5();
                                    }));
                              }),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Programming Competition 2019',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Card(
                    child: Image(
                      image: AssetImage('images/rpc_2019_main.jpg'),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Card(
                          child: GestureDetector(
                              child: Hero(
                                tag: 'pc_image_1',
                                child: Image(
                                  image: AssetImage('images/pc_2019_1.jpg'),
                                  width: 50.0,
                                ),
                              ),
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) {
                                      return DetailScreen();
                                    }));
                              }),
                        ),
                        Card(
                          child: GestureDetector(
                              child: Hero(
                                tag: 'pc_image_2',
                                child: Image(
                                  image: AssetImage('images/pc_2019_2.jpg'),
                                  width: 50.0,
                                ),
                              ),
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) {
                                      return DetailScreen2();
                                    }));
                              }),
                        ),
                        Card(
                          child: GestureDetector(
                              child: Hero(
                                tag: 'pc_image_4',
                                child: Image(
                                  image: AssetImage('images/pc_2019_4.jpg'),
                                  width: 50.0,
                                ),
                              ),
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) {
                                      return DetailScreen4();
                                    }));
                              }),
                        ),
                        Card(
                          child: GestureDetector(
                              child: Hero(
                                tag: 'pc_image_3',
                                child: Image(
                                  image: AssetImage('images/pc_2019_3.jpg'),
                                  width: 50.0,
                                ),
                              ),
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) {
                                      return DetailScreen3();
                                    }));
                              }),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                    child: Divider(
                      color: Colors.teal.shade100,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Please click this ',
                            style: TextStyle(
                              fontFamily: 'Source Sans Pro',
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                              text: 'link ',
                              style: TextStyle(
                                fontFamily: 'Source Sans Pro',
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  launch(
                                      'https://forms.gle/XJhhQANVEAmSH4oAA');
                                }),
                          TextSpan(
                            text: 'to join our exciting event.',
                            style: TextStyle(
                              fontFamily: 'Source Sans Pro',
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
            //body (End)
            Footer(),
          ],
        ),
      ),
    );
  }
}