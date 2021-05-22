import 'package:flutter/material.dart';
import 'package:recipecook/models/various.dart';
import 'package:recipecook/widgets/card_various.dart';
import 'package:recipecook/pages/header.dart';
import 'package:recipecook/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 250,
                  child: Header(),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Various Recipes',
                      style: blackTextStyle.copyWith(fontSize: 20),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: orangeColor),
                      height: 24,
                      width: 70,
                      child: GestureDetector(
                        child: Center(
                            child: Text(
                          'show all',
                          style: whiteTextStyle,
                        )),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.only(left: kdefaultpadding),
                  child: Container(
                    height: 210,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        VariousCard(
                          Various(
                            id: 1,
                            name: 'asia',
                            imageUrl: 'assets/gulai.png',
                          ),
                        ),
                        SizedBox(width: 15),
                        VariousCard(
                          Various(
                            id: 2,
                            name: 'eropa',
                            imageUrl: 'assets/steak.png',
                          ),
                        ),
                        SizedBox(width: 15),
                        VariousCard(
                          Various(
                            id: 3,
                            name: 'indonesia',
                            imageUrl: 'assets/sate.png',
                          ),
                        ),
                        SizedBox(width: 15),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.only(
                    left: kdefaultpadding,
                  ),
                  child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Favorit Recipes',
                        style: blackTextStyle.copyWith(fontSize: 20),
                      ),
                       Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: orangeColor),
                      height: 24,
                      width: 70,
                      child: GestureDetector(
                        child: Center(
                            child: Text(
                          'show all',
                          style: whiteTextStyle,
                        )),
                      ),
                    ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: kdefaultpadding,
                      ),
                      child:  ClipRRect(
                          borderRadius: BorderRadius.circular(18),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: 220,
                                    width: 180,
                                    child: Image.asset('assets/gulai.png',
                                        width: 280, fit: BoxFit.cover),
                                    decoration: BoxDecoration(
                                      color: grayColor,
                                    ),
                                    
                                  ),
                                  Padding(
                                    padding:  EdgeInsets.only(left:45 ),
                                    child: Text('Gulai',style:whiteTextStyle.copyWith(fontSize:30)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                    ),
                    SizedBox(width: 12),
                    Column(
                      children: [
                         ClipRRect(
                          borderRadius: BorderRadius.circular(18),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: 120,
                                    width: 150,
                                    child: Image.asset('assets/gulai.png',
                                        width: 280, fit: BoxFit.cover),
                                    decoration: BoxDecoration(
                                      color: grayColor,
                                    ),
                                    
                                  ),
                                  Padding(
                                    padding:  EdgeInsets.only(left:30 ),
                                    child: Text('Gulai',style:whiteTextStyle.copyWith(fontSize:30)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(18),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: 120,
                                    width: 150,
                                    child: Image.asset('assets/gulai.png',
                                        width: 280, fit: BoxFit.cover),
                                    decoration: BoxDecoration(
                                      color: grayColor,
                                    ),
                                    
                                  ),
                                  Padding(
                                    padding:  EdgeInsets.only(left:30 ),
                                    child: Text('Gulai',style:whiteTextStyle.copyWith(fontSize:30)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
