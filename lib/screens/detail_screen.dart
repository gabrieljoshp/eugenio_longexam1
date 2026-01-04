import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';
import '../widgets/custom_text.dart';

class DetailScreen extends StatelessWidget {
  final String prodName;
  final String prodSize;
  final String prodPrice;
  final int numStars;
  final int quantity;
  final String description;
  const DetailScreen({
    super.key,
    required this.prodName,
    required this.prodSize,
    required this.prodPrice,
    required this.numStars,
    required this.quantity,
    this.description = 'Lorem Ipsum',
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  // TODO: Update the placeholder into prodImage
                  Placeholder(
                    fallbackHeight: ScreenUtil().setHeight(200),
                    fallbackWidth: double.infinity,
                  ),
                  Positioned(
                    top: ScreenUtil().setHeight(10),
                    left: ScreenUtil().setWidth(10),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.keyboard_backspace,
                        size: ScreenUtil().setSp(40),
                      ),
                    ),
                  ),
                  Positioned(
                    top: ScreenUtil().setHeight(10),
                    left: ScreenUtil().setWidth(10),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.yellow[700],
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.star, color: Colors.white, size: 16),
                          SizedBox(width: 4),
                          CustomText(
                            text: '$numStars',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: ScreenUtil().setSp(14),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: ScreenUtil().setHeight(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _dotIndicator(isActive: true),
                  _dotIndicator(isActive: false),
                  _dotIndicator(isActive: false),
                ],
              ),
              SizedBox(height: ScreenUtil().setHeight(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: prodName,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: ScreenUtil().setSp(24),
                  ),
                  CustomText(
                    text: prodPrice,
                    color: NU_BLUE,
                    fontWeight: FontWeight.bold,
                    fontSize: ScreenUtil().setSp(24),
                  ),
                ],
              ),
              SizedBox(height: ScreenUtil().setHeight(20)),
              CustomText(
                text: 'Available color versions:',
                fontSize: ScreenUtil().setSp(15),
                color: Colors.black,
              ),

              SizedBox(height: ScreenUtil().setHeight(8)),
              Row(
                children: [
                  _colorDot(Colors.red),
                  const SizedBox(width: 8),
                  _colorDot(Colors.green),
                  const SizedBox(width: 8),
                  _colorDot(Colors.blue),
                  const SizedBox(width: 8),
                ],
              ),
              SizedBox(height: ScreenUtil().setHeight(16)),
              CustomText(
                text: 'Description',
                fontSize: ScreenUtil().setSp(15),
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: ScreenUtil().setHeight(5)),
              CustomText(text: description, fontSize: ScreenUtil().setSp(12)),

              SizedBox(height: ScreenUtil().setHeight(16)),
              Spacer(),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow[700],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: CustomText(
                  text: 'Add to Cart',
                  fontSize: ScreenUtil().setSp(18),
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _colorDot(Color color) {
    return CircleAvatar(radius: 12, backgroundColor: color);
  }

  Widget _dotIndicator({required bool isActive}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        color: isActive ? Colors.blue : Colors.grey[300],
        shape: BoxShape.circle,
      ),
    );
  }
}
