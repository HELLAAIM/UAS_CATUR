import 'dart:ui';

import 'package:npm30_uas_catur_api/Views/Screens/Dashboard.dart';
import 'package:npm30_uas_catur_api/Views/Login/Register.dart';
import 'package:flutter/material.dart';
import 'package:npm30_uas_catur_api/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:npm30_uas_catur_api/style.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: graycolor,
        body : SafeArea(
          bottom: false,
          child: ListView(
            padding: EdgeInsets.all(10),
            children: <Widget> [
              SizedBox(
                height: 15,
              ),
              Container(
                child: Text('9:41',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: colorPrimary,
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
                        primary: whitecolor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )
                    ),
                  ),

                ],

              ),
              Container(
                alignment: Alignment.topLeft,
                child:Text('Welcome back! Glad to see you, Again!',
                  textAlign: TextAlign.left ,
                  style: TextStyle(
                    color: colorPrimary,
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    fontFamily: GoogleFonts.urbanist().fontFamily,
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
                      labelText: 'Enter your email'
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),),
                      labelText: 'Enter your password',
                      suffixIcon: Icon(Icons.visibility_off_outlined)
                  ),
                ),
              ),
              Container(
                padding:  EdgeInsets.all(10),
                child: Text('Forgot Password?',
                  textAlign: TextAlign.right,
                  style: TextStyle(color: colorPrimary,
                      fontSize: 14,
                      fontFamily: GoogleFonts.urbanist().fontFamily),
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
                  child: Text('Login',
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
                child: Text('Or Login with',
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
                height: 50,
              ),
              TextButton(
                  onPressed:(() {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) {
                      return RegisterPage();
                    })));}
                  ),
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