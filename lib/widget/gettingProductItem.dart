import 'package:flutter/material.dart';

class GettingProductItem extends StatelessWidget {
  const GettingProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Container(
              width: 160,
              height: 163,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Positioned(top: 12, child: _getImageProduct()),
                  Positioned(
                    top: 12,
                    right: 8,
                    child: Image.asset('images/active_fav_product.png'),
                  ),

                  Positioned(
                    bottom: 40,
                    left: 6,
                    child: _getDiscountPriceProduct(),
                  ),

                  Positioned(right: 10, bottom: 10, child: _getNameProduct()),
                ],
              ),
            ),
          ],
        ),

        _getPriceProduct(),
      ],
    );
  }

  Widget _getPriceProduct() {
    // بخش قیمت محصول
    return Container(
      width: 160,
      height: 53,
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(15),
          bottomLeft: Radius.circular(15),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'تومان',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 12,
              fontFamily: 'SM',
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '۵٬۳۵۰٬۰۰۰',
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.lineThrough,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  fontFamily: 'SM',
                ),
              ),
              Text(
                '۴۵٬۳۵۰٬۰۰۰',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'SM',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          SizedBox(
            width: 20,
            height: 20,
            child: Image.asset('images/icon_right_arrow_cricle.png'),
          ),
        ],
      ),
    );
  }

  Image _getImageProduct() => Image.asset('images/iphone.png');
}

Widget _getDiscountPriceProduct() {
  return Container(
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
  );
}

Widget _getNameProduct() {
  return Text(
    'آیفون ۱۳ پرومکس',
    style: TextStyle(
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      fontFamily: 'SM',
    ),
  );
}
