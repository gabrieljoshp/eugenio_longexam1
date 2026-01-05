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
                    prodName: 'NU Athletic V2',
                    prodSize: 'Small',
                    prodImage: 'assets/images/nu_athleticv2.png',
                    prodPrice: '\₱800.00',
                    numStars: 3,
                    quantity: 1,
                    description: 'ATHLETIC V2 T-SHIRT | NATIONAL UNIVERSITY',
                    isCart: true,
                    btnName: 'Check Out',
                  ),
                  CustomHorizontalProductCard(
                    prodName: 'NU Cheer',
                    prodSize: 'Extra Large',
                    prodImage: 'assets/images/nu_cheer.png',
                    prodPrice: '\₱800.00',
                    numStars: 5,
                    quantity: 1,
                    description: 'CHEER T-SHIRT | NATIONAL UNIVERSITY',
                    isCart: true,
                    btnName: 'Check Out',
                  ),
                  CustomHorizontalProductCard(
                    prodName: 'NU Lanyard',
                    prodSize: 'N/A',
                    prodImage: 'assets/images/nu_lanyard.png',
                    prodPrice: '\₱250.00',
                    numStars: 5,
                    quantity: 1,
                    description: 'LANYARD | NATIONAL UNIVERSITY',
                    isCart: true,
                    btnName: 'Check Out',
                  ),
                  CustomHorizontalProductCard(
                    prodName: 'NU Stickers',
                    prodSize: '5 Set',
                    prodImage: 'assets/images/nu_stickers.png',
                    prodPrice: '\₱150.00',
                    numStars: 4,
                    quantity: 1,
                    description: 'MULTI STICKERS | NATIONAL UNIVERSITY',
                    isCart: true,
                    btnName: 'Check Out',
                  ),
                  CustomHorizontalProductCard(
                    prodName: 'NU Lady Bulldogs V3',
                    prodSize: 'Small',
                    prodImage: 'assets/images/nu_ladybulldogsvbv3.png',
                    prodPrice: '\₱800.00',
                    numStars: 5,
                    quantity: 1,
                    description:
                        'LADY BULLDOGS V3 T-SHIRT | NATIONAL UNIVERSITY',
                    isCart: true,
                    btnName: 'Check Out',
                  ),
                  CustomHorizontalProductCard(
                    prodName: 'NU University',
                    prodSize: 'Medium',
                    prodImage: 'assets/images/nu_university.png',
                    prodPrice: '\₱800.00',
                    numStars: 3,
                    quantity: 1,
                    description: 'UNIVERSITY T-SHIRT | NATIONAL UNIVERSITY',
                    isCart: true,
                    btnName: 'Check Out',
                  ),
                  CustomHorizontalProductCard(
                    prodName: 'NU Lady Bulldogs Champ',
                    prodSize: 'Large',
                    prodImage: 'assets/images/nu_womensvbbtbc.png',
                    prodPrice: '\₱900.00',
                    numStars: 4,
                    quantity: 1,
                    description:
                        'LADY BULLDOGS VOLLEYBALL BACK TO BACK CHAMP T-SHIRT | NATIONAL UNIVERSITY',
                    isCart: true,
                    btnName: 'Check Out',
                  ),
                  CustomHorizontalProductCard(
                    prodName: 'NU Est. 1900',
                    prodSize: 'Medium',
                    prodImage: 'assets/images/nu_est1900.png',
                    prodPrice: '\₱950.00',
                    numStars: 5,
                    quantity: 1,
                    description: 'CAP | NATIONAL UNIVERSITY',
                    isCart: true,
                    btnName: 'Check Out',
                  ),
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
                    prodName: 'NU Baller',
                    prodSize: 'Medium',
                    prodImage: 'assets/images/nu_baller.png',
                    prodPrice: '\₱100.00',
                    numStars: 3,
                    quantity: 1,
                    description: 'RUBBER BALLER | NATIONAL UNIVERSITY',
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
                  CustomHorizontalProductCard(
                    prodName: 'NU Scarf',
                    prodSize: 'Medium',
                    prodImage: 'assets/images/nu_scarf.png',
                    prodPrice: '\₱400.00',
                    numStars: 5,
                    quantity: 1,
                    description: 'SCARF | NATIONAL UNIVERSITY',
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
