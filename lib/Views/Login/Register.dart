import 'dart:ui';

import 'package:npm30_uas_catur_api/main.dart';
import 'package:flutter/material.dart';
import 'package:npm30_uas_catur_api/Views/Screens/Dashboard.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:npm30_uas_catur_api/style.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body : SafeArea(
          bottom: false,
          child: ListView(
            padding: EdgeInsets.all(10),
            children: <Widget> [
              Container(
                child: Text('9:41',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset('images/signal.png'),
                  Image.asset('images/Wifi.png'),
                  Image.asset('images/Battery.png')
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(
                    onPressed:(() {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                        return WelcomePage();
                      }));
                    }
                    ),
                    child: Image.asset('images/back.jpeg',
                      width: 20,
                      height: 20,
                    ),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(5.0),
                        minimumSize: Size(5.0, 5.0),
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.topLeft,
                child:Text('Hello! Register to get started',
                  textAlign: TextAlign.left ,
                  style: TextStyle(
                    color: colorPrimary,
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    fontFamily: GoogleFonts.urbanist ().fontFamily,
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),),
                      labelText: 'Username'
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),),
                    labelText: 'Email',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),),
                    labelText: 'Password',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),),
                    labelText: 'Confirm Password',
                  ),
                ),
              ),

              Container(
                height: 56,
                width: MediaQuery.of(context).size.width - 2 * 24,
                child: ElevatedButton(
                  onPressed:(() {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) {
                      return HomeScreen();
                    })));}
                  ),
                  child: Text('Register',
                    style:TextStyle(color: Colors.white,
                      fontSize:15,
                      fontWeight: FontWeight.w700,),),
                  style: ElevatedButton.styleFrom(
                      primary: colorPrimary,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                      )),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Text('Or Register with',
                  style: TextStyle(color: colorPrimary,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    fontFamily: GoogleFonts.urbanist().fontFamily,),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment : MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('images/Facebook.png'),
                  Image.asset('images/Google.png'),
                  Image.asset('images/Apple.png'),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Text('Don’t have an account? Register Now',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: colorPrimary,
                      fontSize: 15,
                      fontFamily: GoogleFonts.urbanist().fontFamily
                  ),
                ),
              ),
            ],
          ),
        )
    );

  }
}