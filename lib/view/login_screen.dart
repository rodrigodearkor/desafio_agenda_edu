import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final passwordNode = FocusNode();
  final buttonNode = FocusNode();

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(top: 184),
            child: Text(
              'Faça seu login',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 36),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 16,
                  child: Text(
                    'E-mail ou usuário',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                _buildLogin(),
                SizedBox(
                  height: 21,
                ),
                SizedBox(
                  height: 16,
                  child: Text(
                    'Password',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                _buildPassword(context),
                SizedBox(
                  height: 80,
                ),
                _buildLoginButton(context),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildLogin() {
    return TextField(
      textInputAction: TextInputAction.next,
      autofocus: true,
      decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 2),
          ),
          suffixIcon: Icon(Icons.lock),
          hintText: 'rodrigodearkor@gmail.com'),
      style: TextStyle(fontSize: 20),
      onSubmitted: (value)  {
        FocusScope.of(context).requestFocus(passwordNode);
      }
    );
  }

  TextField _buildPassword(BuildContext context) {
    return TextField(
      focusNode: passwordNode,
      // textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 13, horizontal: 20),
        border: OutlineInputBorder(
          borderSide: BorderSide(width: 2),
        ),
        suffixIcon: Icon(Icons.inbox),
      ),
      style: TextStyle(fontSize: 24),
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    final color = Theme.of(context).primaryColor;
    return Container(
      height: 50,
      width: double.infinity,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
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
