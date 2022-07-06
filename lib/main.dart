import 'package:npm30_uas_catur_api/Views/Login/Login.dart';
import 'package:npm30_uas_catur_api/Views/Login/Register.dart';
import 'package:flutter/material.dart';
import 'package:npm30_uas_catur_api/style.dart';
part 'welcome.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
