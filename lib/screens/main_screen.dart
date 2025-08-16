import 'package:flutter/material.dart';
import 'package:online_shop/screens/category_screen.dart';
import 'package:online_shop/screens/home_screen.dart';
import 'package:online_shop/screens/profile_screen.dart';
import 'package:online_shop/screens/shopping_basket.dart';

class Main_Screen extends StatefulWidget {
  const Main_Screen({super.key});

  @override
  State<Main_Screen> createState() => _Main_ScreenState();
}

class _Main_ScreenState extends State<Main_Screen> {
  int _selectedBottomNavigationItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 15,

        selectedLabelStyle: TextStyle(
          fontFamily: 'SM',
          fontSize: 12,
          fontWeight: FontWeight.w700,
        ),
        selectedItemColor: Color(0xff3B5EDF),

        unselectedItemColor: Colors.black,
        unselectedLabelStyle: TextStyle(
          fontFamily: 'SM',
          fontSize: 10,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),

        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xffEEEEEE),
        currentIndex: _selectedBottomNavigationItem,
        onTap: (int index) {
          setState(() {
            _selectedBottomNavigationItem = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            activeIcon: Image.asset('images/icon_profile_active.png'),

            label: 'حساب کاربری',

            icon: Image.asset('images/icon_profile.png'),
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset('images/icon_basket_active.png'),
            label: 'سبد خرید',
            icon: Image.asset('images/icon_basket.png'),
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset('images/icon_category_active.png'),
            label: 'دسته بندی',
            icon: Image.asset('images/icon_category.png'),
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset('images/icon_home_active.png'),
            label: 'خانه',

            icon: Image.asset('images/home.png'),
          ),
        ],
      ),
      body: IndexedStack(
        index: _selectedBottomNavigationItem,
        children: getLayout(),
      ),
    );
  }

  List<Widget> getLayout() {
    return <Widget>[
      Profile_Screen(),
      Shopping_Basket(),
      Category_Screen(),
      HomeScreen(),
    ];
  }
}
