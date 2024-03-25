import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/views/homescreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return const HomeScreen();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Image.asset(
              'images/splash_pic.jpg',
              fit: BoxFit.cover,
              height: height * 0.5,
              width: double.infinity,
              
            ),
            SizedBox(height: height * 0.04),
            Text(
              "Top Headlines",
              style: GoogleFonts.anton(
                letterSpacing: .6,
                color: Colors.grey.shade700,
              ),
            ),
            SizedBox(height: height * 0.04),
            const SpinKitFadingCircle(
              color: Colors.black,
              size: 40,
            )
          ],
        ),
      ),
    );
  }
}
/* apikey: cca39fa7be1c44c7a38c8866025b7dc9
https://newsapi.org/v2/everything?q=bitcoin&apiKey=cca39fa7be1c44c7a38c8866025b7dc9

https://newsapi.org/v2/top-headlines?country=us&apiKey=cca39fa7be1c44c7a38c8866025b7dc9

 */
