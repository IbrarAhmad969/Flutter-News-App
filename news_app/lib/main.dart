import 'package:flutter/material.dart';
import 'package:news_app/views/splashscreen.dart';

void main(){
  runApp(const MyApp());
} 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        
      debugShowCheckedModeBanner: false,
      title: "News App with API's",
      theme: ThemeData(
       // ignore: deprecated_member_use
       backgroundColor: Colors.white,
      ),
      home:const SplashScreen(),
    );
  }
}




/*
keytool -genkey -v -keystore C:\Users\JUTT\Desktop\NewApp\news_app\android\app\upload-keystore.jks ^
        -storetype JKS -keyalg RSA -keysize 2048 -validity 10000 ^
        -alias upload
 */