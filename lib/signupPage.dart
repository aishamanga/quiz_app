import 'package:flutter/material.dart';
import 'loginPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class signupPage extends StatefulWidget {
  const signupPage({super.key});

  @override
  State<signupPage> createState() => _signupPageState();
}

class _signupPageState extends State<signupPage> {
  @override
  final firstnameController =
      TextEditingController(); //adding firstname controller
  final lastnameController =
      TextEditingController(); //adding lastname contollers
  final emailController = TextEditingController(); //adding email controoler
  final passwordController =
      TextEditingController(); //adding password contollers
  final confirmpasswordController =
      TextEditingController(); //adding confirmpassword contollers

  Widget buildFirstName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "First Name",
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
            controller: firstnameController, //connecting firstnamecontroller
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.person,
                  color: Colors.blue,
                ),
                hintText: "Enter First Name",
                hintStyle: TextStyle(color: Colors.black)),
          ),
        )
      ],
    );
  }

  Widget buildLastName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Last Name",
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
            controller: lastnameController, //connecting lastname contoller
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.person,
                  color: Colors.blue,
                ),
                hintText: "Enter Last Name",
                hintStyle: TextStyle(color: Colors.black)),
          ),
        )
      ],
    );
  }

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
            controller: emailController, //connecting emailcontroller
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.blue,
                ),
                hintText: "someone@gmail.com",
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
            controller: passwordController, //connecting passwordcontroller
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

  Widget buildConfirmPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Confirm Password",
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
            controller:
                confirmpasswordController, //connecting confirmpasswordcontroller
            obscureText: true,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.blue,
                ),
                hintText: "Confirm Password",
                hintStyle: TextStyle(color: Colors.black)),
          ),
        )
      ],
    );
  }

  Widget buildCreateAccountBtn() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () async {
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
                email: emailController.text, password: passwordController.text);
            setState(() {});
          },
          child: Text(
            "Create Account",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15))),
        ));
  }

  Widget buildLoginBtn() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => loginPage()));
          },
          child: Text(
            "Already have an account? Log In",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15))),
        ));
  }

  final dropdownList = ["Student", "Lecturer"];
  String dropdownValue = "Student";
  Widget buildDropDown() {
    return Container(
      child: DropdownButtonFormField(
        value: dropdownValue,
        items: dropdownList
            .map((e) => DropdownMenuItem(
                child: Text(
                  e,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                value: e))
            .toList(),
        onChanged: (val) {
          setState(() {
            dropdownValue = val as String;
          });
        },
        icon: Icon(
          Icons.arrow_drop_down_circle,
          color: Colors.black,
        ),
      ),
    );
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
                      "Sign Up",
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    buildDropDown(),
                    SizedBox(
                      height: 5,
                    ),
                    buildFirstName(),
                    SizedBox(
                      height: 15,
                    ),
                    buildLastName(),
                    SizedBox(
                      height: 15,
                    ),
                    buildEmail(),
                    SizedBox(
                      height: 15,
                    ),
                    buildPassword(),
                    SizedBox(
                      height: 15,
                    ),
                    buildConfirmPassword(),
                    buildCreateAccountBtn(),
                    buildLoginBtn(),
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
