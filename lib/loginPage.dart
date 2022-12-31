import 'package:flutter/material.dart';
import 'signupPage.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Email",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black, blurRadius: 6, offset: Offset(0, 2))
              ]),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.blue,
                ),
                hintText: "Enter Email",
                hintStyle: TextStyle(color: Colors.black)),
          ),
        )
      ],
    );
  }

  Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Password",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black, blurRadius: 6, offset: Offset(0, 2))
              ]),
          height: 60,
          child: TextField(
            obscureText: true,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.blue,
                ),
                hintText: "Enter Password",
                hintStyle: TextStyle(color: Colors.black)),
          ),
        )
      ],
    );
  }

  Widget buildForgotPasswordBtn() {
    return Container(
      alignment: Alignment.centerRight,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          "Forgot Password",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
      ),
    );
  }

  Widget buildLoginBtn() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 25),
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            "Log In",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15))),
        ));
  }

  Widget buildSignUpBtn() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 25),
        width: double.infinity,
        child: TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => signupPage()));
            },
            child: Text("Don\'t have an Account? Sign Up",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold))));
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: GestureDetector(
        child: Stack(
          children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Colors.blue,
                    Colors.white,
                  ])),
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 120),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Sign In",
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    buildEmail(),
                    SizedBox(
                      height: 20,
                    ),
                    buildPassword(),
                    buildForgotPasswordBtn(),
                    buildLoginBtn(),
                    buildSignUpBtn(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
