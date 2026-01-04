import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_text.dart';

import '../constants.dart';
import '../screens/detail_screen.dart';

class CustomVerticalProductCard extends StatelessWidget {
  // TODO: Dynamic prodImage
  final String prodName;
  final String prodSize;
  final String prodPrice;
  final int numStars;
  final int quantity;
  final String description;

  const CustomVerticalProductCard({
    super.key,
    required this.prodName,
    required this.prodSize,
    required this.prodPrice,
    required this.numStars,
    this.quantity = 1,
    this.description = '',
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 1,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return DetailScreen(
                  prodName: prodName,
                  prodSize: prodSize,
                  prodPrice: prodPrice,
                  numStars: numStars,
                  quantity: quantity,
                  description: description,
                );
              },
            ),
          );
        },
        child: Container(
          width: ScreenUtil().setWidth(140),
          height: ScreenUtil().setHeight(173),
          padding: EdgeInsets.symmetric(
            horizontal: ScreenUtil().setWidth(15),
            vertical: ScreenUtil().setHeight(15),
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // TODO: Dynamic prodImage
              Placeholder(fallbackHeight: ScreenUtil().setHeight(80)),
              SizedBox(height: ScreenUtil().setHeight(5)),
              CustomText(
                text: prodName,
                fontSize: ScreenUtil().setSp(15),
                color: NU_BLUE,
                fontWeight: FontWeight.w900,
              ),
              SizedBox(height: ScreenUtil().setHeight(3)),
              CustomText(
                text: prodSize,
                fontSize: ScreenUtil().setSp(10),
                color: Colors.black,
              ),
              SizedBox(height: ScreenUtil().setHeight(5)),
              CustomText(
                text: prodPrice,
                fontSize: ScreenUtil().setSp(17),
                color: NU_YELLOW,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
