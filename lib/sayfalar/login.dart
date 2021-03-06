
import 'package:chaty/sayfalar/register.dart';

import 'package:flutter/material.dart';

import 'forgotpassword.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xffeee8aa), Color(0xff79cdcd)],
              begin: FractionalOffset(0.3, 1),
            ),
          ),
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                ),
                Flexible(
                  child: Container(
                      height: 200,
                      width: 200,
                      child: Image.network(
                          "https://images.vexels.com/media/users/3/136808/isolated/preview/d3455a22af5f3ed7565fb5fb71bb8d43-send-message-icon-by-vexels.png")),
                ),
                Container(
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  child: Flexible(
                    child: Form(
                      child: Column(
                        children: [
                          Container(
                            width: 275,
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: "Email",
                                hintText: "example@example.com",
                                isDense: true,
                              ),
                            ),
                          ),
                          Container(
                            width: 275,
                            child: TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: "Parola",
                                hintText: "******",
                                isDense: true,
                              ),
                            ),
                          ),
                          SizedBox(height: 2),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 185),
                              child: FlatButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ForgotPassword()));
                                },
                                child: Text(
                                  "Şifremi Unuttum",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          180,
                        ),
                        side: BorderSide(color: Colors.white)),
                    color: Colors.amberAccent[100],
                    child: Text(
                      "Giriş Yap",
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Üye değil misiniz ?",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegisterPage()));
                          },
                          child: Text(
                            "Hemen Ol !",
                            style: TextStyle(
                                color: Colors.amberAccent, fontSize: 20),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
