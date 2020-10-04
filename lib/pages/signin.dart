import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Signin extends StatefulWidget {
  Signin({Key key}) : super(key: key);

  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(padding: EdgeInsets.only(top: 80)),
            Container(
              margin: EdgeInsets.only(bottom: 40),
              child: Text(
                "Pard Gigs",
                style: TextStyle(
                    fontFamily: 'Bodoni',
                    color: Color(0xFF8f182b),
                    fontSize: 70),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: signInButton(context),
            ),
            Container(
              
              child: Image(
                image: AssetImage("assets/logos/dyer_center.png"),
                width: MediaQuery.of(context).size.width * .5,
              ),
            ),
            Container(
              child: Image(
                image: AssetImage("assets/logos/lafayette_college.png"),
                width: MediaQuery.of(context).size.width * .9,
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget signInButton(BuildContext context) {
  return FlatButton(
    minWidth: MediaQuery.of(context).size.width * .8,
    height: 50,
    onPressed: () {},
    color: Color(0xFF8f182b),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    child: Text(
      "Sign in with Google",
      style: TextStyle(color: Colors.white, fontSize: 20),
    ),
  );
}
