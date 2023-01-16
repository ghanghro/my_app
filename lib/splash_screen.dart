import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dashboard.dart';

class Splash_Screen extends StatefulWidget{
  const Splash_Screen({Key? key}) : super(key: key);
  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}
class _Splash_ScreenState extends State<Splash_Screen> {

  @override
  Widget build(BuildContext context) {
      final width = MediaQuery.of(context).size.width;
      final height = MediaQuery.of(context).size.height;
      SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.deepOrange));
      SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    // debugger();
    return  Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 8,
              child: Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                      bottom: Radius.elliptical(
                          MediaQuery
                              .of(context)
                              .size
                              .width, 80.0)
                  ),
                  gradient: const RadialGradient(
                    // begin: Alignment.topRight,
                    // end: Alignment.bottomLeft,
                    colors: [
                      Colors.white,
                      // Colors.deepOrangeAccent,
                      Color(0xfffe5e00),
                    ],
                    // focalRadius: 30,

                  ),
                ),
                 child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Foodator", style: TextStyle(color: Colors.deepPurple,
                      fontSize: 35, fontWeight: FontWeight.w600,
                      letterSpacing: 2,
                    ),),
                    const SizedBox(height: 20),
                    Container(
                        child: Image.asset(
                            'assets/images/bg.png',
                            height: 200)
                    ),
                    const SizedBox(height: 35),
                    const Text("Food Delivery App",
                      style: TextStyle(color: Colors.deepPurple,
                        fontSize: 22, fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                      ),),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),
            Expanded(
              flex: 2,
              child: Center(
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: ElevatedButton(
                      child: Text('Get Started'),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => dashboard(),));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xfffe5e00),
                          padding: EdgeInsets.all(10),
                          fixedSize: Size(160, 45),
                          textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            // letterSpacing: 1
                          ),
                          alignment: Alignment.center,
                          shape: StadiumBorder())),
                ),
              ),
            ),
          ],
        ),
    );
  }
}


