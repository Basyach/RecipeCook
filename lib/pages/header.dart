import 'package:flutter/material.dart';
import 'package:recipecook/theme.dart';
class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Stack(
          children: [
            Container(
              height: 230,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: orangeColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(46),
                    bottomRight: Radius.circular(46)),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 50, left: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome',
                      style: blackTextStyle.copyWith(
                          fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    Text(
                      'What are you cooking today?',
                      style: grayTextStyle,
                    )
                  ],
                ),
              ),
            ),
            
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Image.asset(
                'assets/chef.png',
                height: 250,
                width: 205,
                alignment: Alignment.topRight,
              ),
            ]),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: kdefaultpadding),
                padding: EdgeInsets.symmetric(horizontal: kdefaultpadding),
                height: 54,
                decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [BoxShadow()]),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "search your recipe...",
                    hintStyle: TextStyle(color: blackColor),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    icon: (Image.asset(
                      'assets/search.png',
                      color: blackColor,
                      height: 20,
                    )),
                  ),
                ),
              ),
            ), 
            
          ],
        );
  }
}