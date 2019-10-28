import 'package:flutter/material.dart';

class Dummy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   Stack(
        children: <Widget>[
          Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                    fit: BoxFit.cover,
                    image: new NetworkImage(
                        'https://i.pinimg.com/originals/c2/47/e9/c247e913a0214313045a8a5c39f8522b.jpg'))),
          ),
          Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  CircleAvatar(
                    radius: 58.0,
                    child: Text('Travel'),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        hintStyle: TextStyle(color: Colors.white),
                        filled: true,
                        fillColor: Colors.black45,
                        hintText: 'Username'),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        filled: true,
                        prefixIcon: Icon(Icons.lock, color: Colors.white),
                        hintStyle: TextStyle(color: Colors.white),
                        fillColor: Colors.black45,
                        hintText: 'Password'),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        filled: true,
                        prefixIcon: Icon(Icons.lock, color: Colors.white),
                        hintStyle: TextStyle(color: Colors.white),
                        fillColor: Colors.black45,
                        hintText: 'Password'),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        filled: true,
                        prefixIcon: Icon(Icons.lock, color: Colors.white),
                        hintStyle: TextStyle(color: Colors.white),
                        fillColor: Colors.black45,
                        hintText: 'Password'),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        filled: true,
                        prefixIcon: Icon(Icons.lock, color: Colors.white),
                        hintStyle: TextStyle(color: Colors.white),
                        fillColor: Colors.black87,
                        hintText: 'Password'),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        filled: true,
                        prefixIcon: Icon(Icons.lock, color: Colors.white),
                        hintStyle: TextStyle(color: Colors.white),
                        fillColor: Colors.black45,
                        hintText: 'Password'),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot your Password?',
                        style: TextStyle(color: Colors.white),
                      )),
                  SizedBox(
                    height: 15.0,
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: Padding(
                        padding: EdgeInsets.all(15.0), child: Text('LOGIN')),
                    color: Colors.redAccent,
                    textColor: Colors.white,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: Padding(
                        padding: EdgeInsets.all(15.0), child: Text('REGISTER')),
                    color: Colors.grey,
                    textColor: Colors.white,
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Divider(
                          color: Colors.white,
                          height: 8.0,
                        ),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        'OR',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.white,
                          height: 8.0,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      // TODO Social Icons
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget input(String hint) {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 20, right: 20),
      child: TextField(
        decoration: InputDecoration(
          hintText: hint,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.indigo, width: 2.0),
          ),
        ),
      ),
    );
  }

  Widget button(BuildContext context) {
    return ButtonBar(
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
            print('oh-oh!');
          },
          color: Colors.green,
          child: Text(
            'SIGNUP',
            style: TextStyle(fontFamily: 'Montserrat', fontSize: 15.0),
          ),
          textColor: Colors.white,
        )
      ],
    );
  }
}
