import 'dart:math';

import 'package:flutter/material.dart';

class Shopping_Basket extends StatelessWidget {
  const Shopping_Basket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CustomScrollView(
              slivers: [
                SliverPadding(
                  padding: EdgeInsetsGeometry.symmetric(
                    horizontal: 25,
                    vertical: 10,
                  ),
                  sliver: SliverToBoxAdapter(child: _getAppbarBasket()),
                ),
                SliverPadding(
                  padding: EdgeInsetsGeometry.symmetric(
                    horizontal: 30,
                    vertical: 4,
                  ),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate((context, index) {
                      return getBasketCard();
                    }, childCount: 5),
                  ),
                ),
                SliverPadding(padding: EdgeInsetsGeometry.only(bottom: 40)),
              ],
            ),

            _getBasketButton(), // دکمه سبد خرید
          ],
        ),
      ),
    );
  }

  Widget _getBasketButton() {
    // دکمه سبد خرید
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity, 60),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ), // This removes the border radius
          ),
          backgroundColor: Color(0xff1DB68B),
        ),
        onPressed: () {},
        child: Text(
          'ادامه فرایند خرید',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
            fontFamily: 'SM',
          ),
        ),
      ),
    );
  }

  getBasketCard() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: Container(
        width: 340,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              right: 4,
              top: 25,
              child: Image.asset('images/iphone.png'),
            ),

            Positioned(
              top: 25,
              left: 2,
              child: Container(
                width: 212,
                height: 170,
                child: _getItemProduct(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 230),
              child: Divider(
                color: Colors.grey,
                height: 1,
                thickness: 1,
                indent: 40,
                endIndent: 40,
              ),
            ),
            Positioned(bottom: 30, child: _getPriceProduct()),
          ],
        ),
      ),
    );
  }

  Widget _getPriceProduct() {
    return Row(
      children: [
        Text(
          'تومان',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'SM',
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          ' ۴۵٬۳۵۰٬۰۰۰ ',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'SM',
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _getItemProduct() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [_getTititleAndSubtitleProduct(), SizedBox(height: 10)],
        ),
        _getPriceAndDiscountProduct(),
        SizedBox(height: 10),
        _getDetailsItemProduct(),
        SizedBox(height: 10),
        _getControllDetailsProduct(),
      ],
    );
  }
}

Widget _getTititleAndSubtitleProduct() {
  // گرفتن تایتل و ساب تایتل محصول
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(right: 4),
        child: Text(
          'آیفون ۱۳ پرومکس دوسیم کارت ',
          style: TextStyle(
            fontFamily: 'SM',
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
        ),
      ),

      SizedBox(height: 10),
      Text(
        'گارانتی 18 ماه مدیا پردازش',
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 10,
          overflow: TextOverflow.ellipsis,
          fontWeight: FontWeight.w500,
          fontFamily: 'SM',
          color: Color(0xff858585),
        ),
      ),
    ],
  );
}

Widget _getPriceAndDiscountProduct() {
  //گرفتن قیمت محصول و تخفیف
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.red,
        ),
        width: 29,
        height: 18,
        child: Text(
          textAlign: TextAlign.center,
          '%3',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'SM',
            fontSize: 12,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      SizedBox(width: 8),
      Text(
        'تومان',
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          fontFamily: 'SM',
          color: Color(0xff858585),
        ),
      ),
      Text(
        '  ۴۶٬۰۰۰٬۰۰۰',
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          fontFamily: 'SM',
          color: Color(0xff858585),
        ),
      ),
    ],
  );
}

Widget _getDetailsItemProduct() {
  //گرفتن جزِیات محصول
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: 94,
        height: 24,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Color(0xffE5E5E5)),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('images/icon_options.png'),
            Text(
              'سبز کله غازی',
              style: TextStyle(
                color: Color(0xff858585),
                fontFamily: 'SM',
                fontSize: 10,
              ),
            ),
            Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
      SizedBox(width: 8),
      Container(
        width: 90,
        height: 24,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Color(0xffE5E5E5)),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset('images/icon_options.png'),

              Text(
                '256 گیگابایت',
                style: TextStyle(
                  color: Color(0xff858585),
                  fontFamily: 'SM',
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

Widget _getControllDetailsProduct() {
  // گرفتن کنترلر محصولات
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Color(0xffE5E5E5)),
          borderRadius: BorderRadius.circular(10),
        ),
        width: 69,
        height: 24,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'حذف',
              style: TextStyle(
                color: Color(0xff858585),
                fontFamily: 'SM',
                fontSize: 10,
              ),
            ),
            SizedBox(
              height: 15,
              width: 15,
              child: Image.asset('images/icon_trash.png'),
            ),
          ],
        ),
      ),
      SizedBox(width: 10),
      Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Color(0xffE5E5E5)),
          borderRadius: BorderRadius.circular(10),
        ),
        width: 69,
        height: 24,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'ذخیره',
              style: TextStyle(
                color: Color(0xff858585),
                fontFamily: 'SM',
                fontSize: 10,
              ),
            ),
            SizedBox(
              height: 15,
              width: 15,
              child: Image.asset('images/active_fav_product.png'),
            ),
          ],
        ),
      ),
      SizedBox(width: 10),
      Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Color(0xffE5E5E5)),
          borderRadius: BorderRadius.circular(10),
        ),
        width: 45,
        height: 24,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('images/icon_options.png'),
            Text(
              '۱',
              style: TextStyle(
                color: Color(0xff858585),
                fontFamily: 'SM',
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget _getAppbarBasket() {
  return Container(
    height: 46,
    decoration: BoxDecoration(
      color: Color(0xffFFFFFF),
      borderRadius: BorderRadius.circular(15),
    ),
    child: Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Positioned(left: 20, child: Image.asset('images/icon_apple_blue.png')),
        Text(
          'سبد خرید',
          style: TextStyle(
            color: Color(0xff3B5EDF),
            fontFamily: 'SM',
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    ),
  );
}
