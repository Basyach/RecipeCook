import 'package:flutter/material.dart';
import 'package:recipecook/models/various.dart';
import 'package:recipecook/theme.dart';


class VariousCard extends StatelessWidget {
  final Various various;   
   VariousCard(this.various);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Stack(
        children: [
          Container(
            width: 180,
            height: 210,
            color: Color(0xffF6F7F8),
            child: Column(
              children: [
                Image.asset(
                  various.imageUrl, 
                   width: 180,
                  height: 160,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 10),
                Text(various.name,style: blackTextStyle.copyWith(fontSize:20),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
