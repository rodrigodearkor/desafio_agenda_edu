import 'package:desafio_agenda_edu/theme.dart';
import 'package:desafio_agenda_edu/view/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent));

  // SystemChrome.setPreferredOrientations(
  //     [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);

  runApp(Root());
}

class Root extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: themeData,
      home: Scaffold(
          body: LoginScreen()),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: true,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(15.0, 50.0, 0.0, 0.0),
                      child: Text(
                        "Signup",
                        style: TextStyle(
                          fontSize: 80.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(270.0, 50.0, 0.0, 0.0),
                      child: Text(
                        ".",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 80.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'USER NAME',
                          labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'EMAIL',
                          labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 100.0),
                      ButtonBar(
                        alignment: MainAxisAlignment.end,
                        children: <Widget>[
                          FlatButton(
                              onPressed: () {},
                              child: Text(
                                'CANCEL',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),
                              )),
                          RaisedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) => null,
                                  fullscreenDialog: false));
                            },
                            color: Colors.green,
                            child: Text(
                              'SIGNUP',
                              style: TextStyle(
                                  fontFamily: 'Montserrat', fontSize: 15.0),
                            ),
                            textColor: Colors.white,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
