import 'package:flutter/material.dart';
import 'package:recipecook/pages/home.dart';
import 'package:recipecook/theme.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/splash_image.png'),
                        fit: BoxFit.cover))),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 150),
                      child: Text(
                        'Recipe Cook',
                        style: whiteTextStyle.copyWith(
                            fontSize: 50, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(height:400),
                 Container(
                    width: 250,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                            );
                      },
                      child: Text('Get Started',style: whiteTextStyle.copyWith(fontWeight: FontWeight.bold,fontSize:20),),
                      style: ElevatedButton.styleFrom(
                         primary: orangeColor,
                        onPrimary: whiteColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  Text('By Basyach',style:whiteTextStyle .copyWith(fontSize:18))
              ],
            )
          ],
        ),
      ),
    );
  }
}
