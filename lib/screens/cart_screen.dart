import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';
import '../widgets/custom_horizontal_product_card.dart';
import '../widgets/custom_text.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(
        ScreenUtil().setWidth(20),
        ScreenUtil().setHeight(60),
        ScreenUtil().setWidth(20),
        0,
      ),
      color: Colors.white,
      width: ScreenUtil().screenWidth,
      child: Column(
        children: [
          CustomText(
            text: 'Cart',
            fontSize: ScreenUtil().setSp(25),
            color: NU_BLUE,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(height: ScreenUtil().setHeight(10)),
          Expanded(
            flex: 1,
            child: SizedBox(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  // TODO: Create 15 cart items [set isCart to true and btnName to 'CheckOut']
                  CustomHorizontalProductCard(
                    prodName: 'NU Varsity Jacket',
                    prodSize: 'Large',
                    prodImage: 'assets/images/nu_varsity.png',
                    prodPrice: '\₱2250.00',
                    numStars: 5,
                    quantity: 1,
                    description: 'VARSITY JACKET | NATIONAL UNIVERSITY',
                    isCart: true,
                    btnName: 'Check Out',
                  ),
                  CustomHorizontalProductCard(
                    prodName: 'NU Emblem T-Shirt',
                    prodSize: 'Medium',
                    prodImage: 'assets/images/nu_emblem.png',
                    prodPrice: '\₱800.00',
                    numStars: 4,
                    quantity: 1,
                    description: 'EMBLEM TEES | NATIONAL UNIVERSITY',
                    isCart: true,
                    btnName: 'Check Out',
                  ),
                  CustomHorizontalProductCard(
                    prodName: 'NU Classic T-Shirt',
                    prodSize: 'Medium',
                    prodImage: 'assets/images/nu_classic.png',
                    prodPrice: '\₱800.00',
                    numStars: 5,
                    quantity: 1,
                    description: 'VARSITY CLASSIC TEES | NATIONAL UNIVERSITY',
                    isCart: true,
                    btnName: 'Check Out',
                  ),
                  CustomHorizontalProductCard(
                    prodName: 'NU Hoodie',
                    prodSize: 'Large',
                    prodImage: 'assets/images/nu_hoodie.png',
                    prodPrice: '\₱1750.00',
                    numStars: 5,
                    quantity: 1,
                    description: 'HOODIE | NATIONAL UNIVERSITY',
                    isCart: true,
                    btnName: 'Check Out',
                  ),
                  CustomHorizontalProductCard(
                    prodName: 'NU Sweater',
                    prodSize: 'Small',
                    prodImage: 'assets/images/nu_sweater.png',
                    prodPrice: '\₱1500.00',
                    numStars: 3,
                    quantity: 1,
                    description: 'SWEATER | NATIONAL UNIVERSITY',
                    isCart: true,
                    btnName: 'Check Out',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
