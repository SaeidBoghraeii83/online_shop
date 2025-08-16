import 'package:flutter/material.dart';

class Profile_Screen extends StatelessWidget {
  const Profile_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: 25,
                vertical: 10,
              ),
              sliver: SliverToBoxAdapter(
                child: Container(
                  height: 46,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Positioned(
                        left: 20,
                        child: Image.asset('images/icon_apple_blue.png'),
                      ),
                      Text(
                        'حساب کاربری',
                        style: TextStyle(
                          color: Color(0xff3B5EDF),
                          fontFamily: 'SM',
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsetsGeometry.symmetric(vertical: 30),
              sliver: SliverToBoxAdapter(
                child: Column(
                  children: [
                    Text(
                      ' Flutter Developer : سعید بقرائی',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'SM',
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '+9809190073472',
                      style: TextStyle(
                        color: Color(0xff858585),
                        fontFamily: 'SM',
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
