import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      'Faça seu login',
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'SFProDisplay',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Icon(
                      Icons.lock_open,
                      size: 25,
                      color: Colors.yellow,
                    )
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      'E-mail ou usuário',
                      style: TextStyle(fontSize: 14),
                    )),
                _buildLogin(),
                SizedBox(
                  height: 24,
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Senha',
                      style: TextStyle(fontSize: 14),
                    )),
                _buildPassword(),
                SizedBox(height: 24,),
                // Align(
                //   alignment: FractionalOffset.bottomCenter,
                //   child: _buildLoginButton(context),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  TextField _buildLogin() {
    return TextField(
      decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 2),
          ),
          suffixIcon: Icon(Icons.lock),
          hintText: 'rodrigodearkor@gmail.com'),
      style: TextStyle(fontSize: 20),
    );
  }

  TextField _buildPassword() {
    return TextField(
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        border: OutlineInputBorder(
          borderSide: BorderSide(width: 2),
        ),
        suffixIcon: Icon(Icons.inbox),
      ),
      style: TextStyle(fontSize: 20),
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    final color = Theme.of(context).primaryColor;
    return Container(
      constraints: BoxConstraints.expand(
        height: 50
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(33),
      ),
      child: RaisedButton(
        color: color,
        child: Text(
          'Enviar',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
        ),
        onPressed: () {
          print('Oh-oh! too early');
        },
      ),
    );
  }
}
