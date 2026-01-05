import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';
import '../widgets/custom_text.dart';
import '../widgets/custom_horizontal_product_card.dart';
import '../widgets/custom_vertical_product_card.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.fromLTRB(
          ScreenUtil().setSp(20),
          ScreenUtil().setSp(60),
          ScreenUtil().setSp(20),
          0,
        ),
        color: Colors.white,
        width: ScreenUtil().screenWidth,
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: CircleAvatar(
                radius: ScreenUtil().setSp(30),
                backgroundColor: NU_YELLOW,
                child: Padding(
                  padding: EdgeInsets.all(ScreenUtil().setSp(12.5)),
                  child: Image.asset('assets/images/nubdexchange_logo.png'),
                ),
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                text: 'Hello, Gabriel Josh!',
                fontSize: ScreenUtil().setSp(20),
                color: NU_BLUE,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                text:
                    'Welcome to Bulldogs Exchange! The Official Merchandise Store of National University.',
                fontSize: ScreenUtil().setSp(12),
                color: Colors.grey,
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                text: 'Barked',
                fontSize: ScreenUtil().setSp(15),
                color: NU_BLUE,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            SizedBox(
              width: ScreenUtil().setWidth(1000),
              child: const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    // TODO: Create 5 Barked Items [Use CustomVerticalProductCard Widget]
                    CustomVerticalProductCard(
                      prodName: 'NU Varsity Jacket',
                      prodSize: 'Large',
                      prodImage: 'assets/images/nu_varsity.png',
                      prodPrice: '\₱2250.00',
                      numStars: 5,
                      quantity: 1,
                      description: 'VARSITY JACKET | NATIONAL UNIVERSITY',
                    ),
                    CustomVerticalProductCard(
                      prodName: 'NU Emblem T-Shirt',
                      prodSize: 'Medium',
                      prodImage: 'assets/images/nu_emblem.png',
                      prodPrice: '\₱800.00',
                      numStars: 4,
                      quantity: 1,
                      description: 'EMBLEM TEES | NATIONAL UNIVERSITY',
                    ),
                    CustomVerticalProductCard(
                      prodName: 'NU Classic T-Shirt',
                      prodSize: 'Medium',
                      prodImage: 'assets/images/nu_classic.png',
                      prodPrice: '\₱800.00',
                      numStars: 5,
                      quantity: 1,
                      description: 'VARSITY CLASSIC TEES | NATIONAL UNIVERSITY',
                    ),
                    CustomVerticalProductCard(
                      prodName: 'NU Hoodie',
                      prodSize: 'Large',
                      prodImage: 'assets/images/nu_hoodie.png',
                      prodPrice: '\₱1750.00',
                      numStars: 5,
                      quantity: 1,
                      description: 'HOODIE | NATIONAL UNIVERSITY',
                    ),
                    CustomVerticalProductCard(
                      prodName: 'NU Sweater',
                      prodSize: 'Small',
                      prodImage: 'assets/images/nu_sweater.png',
                      prodPrice: '\₱1500.00',
                      numStars: 3,
                      quantity: 1,
                      description: 'SWEATER | NATIONAL UNIVERSITY',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                text: 'On Sale!',
                fontSize: ScreenUtil().setSp(15),
                color: NU_YELLOW,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            // TODO: Create 10 On Sale Items [Use CustomHorizontalProductCard]
            CustomHorizontalProductCard(
              prodName: 'NU Varsity Jacket',
              prodSize: 'Large',
              prodImage: 'assets/images/nu_varsity.png',
              prodPrice: '\₱2250.00',
              numStars: 5,
              quantity: 1,
              description: 'VARSITY JACKET | NATIONAL UNIVERSITY',
            ),
            CustomHorizontalProductCard(
              prodName: 'NU Emblem T-Shirt',
              prodSize: 'Medium',
              prodImage: 'assets/images/nu_emblem.png',
              prodPrice: '\₱800.00',
              numStars: 4,
              quantity: 1,
              description: 'EMBLEM TEES | NATIONAL UNIVERSITY',
            ),
            CustomHorizontalProductCard(
              prodName: 'NU Classic T-Shirt',
              prodSize: 'Medium',
              prodImage: 'assets/images/nu_classic.png',
              prodPrice: '\₱800.00',
              numStars: 5,
              quantity: 1,
              description: 'VARSITY CLASSIC TEES | NATIONAL UNIVERSITY',
            ),
            CustomHorizontalProductCard(
              prodName: 'NU Hoodie',
              prodSize: 'Large',
              prodImage: 'assets/images/nu_hoodie.png',
              prodPrice: '\₱1750.00',
              numStars: 5,
              quantity: 1,
              description: 'HOODIE | NATIONAL UNIVERSITY',
            ),
            CustomHorizontalProductCard(
              prodName: 'NU Sweater',
              prodSize: 'Small',
              prodImage: 'assets/images/nu_sweater.png',
              prodPrice: '\₱1500.00',
              numStars: 3,
              quantity: 1,
              description: 'SWEATER | NATIONAL UNIVERSITY',
            ),
          ],
        ),
      ),
    );
  }
}
