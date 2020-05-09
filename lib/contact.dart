import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              AppBar(
                backgroundColor: Colors.lightBlue,
                centerTitle: true,
                title: Text(
                  'Contact Us',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
//                padding: EdgeInsets.only(top: 20.0),
                child: Image(
                  image: AssetImage('images/programming_languages.jpg'),
                )
              ),
              Container(
                padding: EdgeInsets.only(top: 25.0),
                child: Text(
                  'Ikhwan : 012-3456789',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Container(
                child: Text(
                  'Email : ikhwan@gmail.com',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 25.0,
                width: 250.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10.0),
                child: Text(
                  'Location',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20.0),
                child: Text(
                  'UiTM Melaka Kampus Jasin\n77300 Merlimau,\nMelaka Bandaraya Bersejarah,\nMalaysia',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 25.0),
                child: RaisedButton.icon(
                  label: Text(
                    'Click to Get the Location'
                  ),
                  icon: Icon(
                    Icons.map
                  ),
                  onPressed: () async {
                    const url = 'https://goo.gl/maps/ZyjTRkCdiBV7z9sGA';

                    if(await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
