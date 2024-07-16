import 'package:flutter/material.dart';
import 'package:free_swingers/routes/routes.dart';
import 'package:free_swingers/utils/colors.dart';
import 'package:free_swingers/utils/dimensions.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    bool isWidestScreen = Dimensions.isWidestScreen();

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: AppColors.blackColor,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // space
                  SizedBox(
                    height: Dimensions.heightRatio(20),
                  ),
                  // header
                  Row(
                    children: [
                      // space
                      SizedBox(
                        width: Dimensions.widthRatio(50),
                      ),
                      Container(
                        height: Dimensions.heightRatio(60),
                        width: Dimensions.widthRatio(350),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/free_swingers.png',
                            ),
                          ),
                        ),
                      ),
                      // space
                      const Expanded(
                        child: SizedBox(),
                      ),
                      // Login/Sign Up
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoutes.getSignUpPage());
                        },
                        child: Text(
                          'Login/Sign Up',
                          style: TextStyle(
                            color: AppColors.greyColor,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: Dimensions.heightRatio(14),
                          ),
                        ),
                      ),
                      // space
                      SizedBox(
                        width: Dimensions.widthRatio(20),
                      ),
                      // help
                      GestureDetector(
                        child: Text(
                          'Help',
                          style: TextStyle(
                            color: AppColors.greyColor,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: Dimensions.heightRatio(14),
                          ),
                        ),
                      ),
                      // space
                      SizedBox(
                        width: Dimensions.widthRatio(20),
                      ),
                      // wish list
                      GestureDetector(
                        child: Text(
                          'Wishlist',
                          style: TextStyle(
                            color: AppColors.greyColor,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: Dimensions.heightRatio(14),
                          ),
                        ),
                      ),
                      // space
                      SizedBox(
                        width: Dimensions.widthRatio(20),
                      ),
                      // logout
                      GestureDetector(
                        onTap: () {
                          print('logout');
                        },
                        child: Container(
                          width: Dimensions.widthRatio(30),
                          height: Dimensions.heightRatio(30),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/logout.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                      // space
                      SizedBox(
                        width: Dimensions.widthRatio(100),
                      ),
                    ],
                  ),
                  // space
                  SizedBox(
                    height: Dimensions.heightRatio(10),
                  ),
                  // long line
                  Container(
                    height: 1.5,
                    width: double.maxFinite,
                    color: AppColors.greyColor,
                  ),
                  // space
                  SizedBox(
                    height: Dimensions.heightRatio(20),
                  ),
                  //
                  Row(
                    children: [
                      // space
                      SizedBox(
                        width: Dimensions.widthRatio(100),
                      ),
                      // home
                      Column(
                        children: [
                          Text(
                            'Home',
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontFamily: 'Poppins',
                              fontSize: Dimensions.heightRatio(16),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          // space
                          SizedBox(
                            height: Dimensions.heightRatio(5),
                          ),
                          Container(
                            height: Dimensions.heightRatio(2),
                            width: Dimensions.widthRatio(20),
                            color: AppColors.whiteColor,
                          ),
                        ],
                      ),
                      // space
                      SizedBox(
                        width: Dimensions.widthRatio(20),
                      ),
                      // hot pictures
                      Column(
                        children: [
                          Text(
                            'Hot Pictures',
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontFamily: 'Poppins',
                              fontSize: Dimensions.heightRatio(16),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          // space
                          SizedBox(
                            height: Dimensions.heightRatio(5),
                          ),
                          Container(
                            height: Dimensions.heightRatio(2),
                            width: Dimensions.widthRatio(20),
                            color: Colors.transparent,
                          ),
                        ],
                      ),
                      // space
                      SizedBox(
                        width: Dimensions.widthRatio(20),
                      ),
                      // events
                      Column(
                        children: [
                          Text(
                            'Events',
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontFamily: 'Poppins',
                              fontSize: Dimensions.heightRatio(16),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          // space
                          SizedBox(
                            height: Dimensions.heightRatio(5),
                          ),
                          Container(
                            height: Dimensions.heightRatio(2),
                            width: Dimensions.widthRatio(20),
                            color: Colors.transparent,
                          ),
                        ],
                      ),
                      // space
                      SizedBox(
                        width: Dimensions.widthRatio(20),
                      ),
                      // wet and social
                      Column(
                        children: [
                          Text(
                            'Wet  & Social',
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontFamily: 'Poppins',
                              fontSize: Dimensions.heightRatio(16),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          // space
                          SizedBox(
                            height: Dimensions.heightRatio(5),
                          ),
                          Container(
                            height: Dimensions.heightRatio(2),
                            width: Dimensions.widthRatio(20),
                            color: Colors.transparent,
                          ),
                        ],
                      ),
                      // space
                      SizedBox(
                        width: Dimensions.widthRatio(20),
                      ),
                      // playrooms
                      Column(
                        children: [
                          Text(
                            'Playrooms',
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontFamily: 'Poppins',
                              fontSize: Dimensions.heightRatio(16),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          // space
                          SizedBox(
                            height: Dimensions.heightRatio(5),
                          ),
                          Container(
                            height: Dimensions.heightRatio(2),
                            width: Dimensions.widthRatio(20),
                            color: Colors.transparent,
                          ),
                        ],
                      ),
                      // space
                      const Expanded(
                        child: SizedBox(),
                      ),
                      // search
                      GestureDetector(
                        onTap: () {
                          print('search');
                        },
                        child: Container(
                          width: Dimensions.widthRatio(35),
                          height: Dimensions.heightRatio(35),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/search.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                      // space
                      SizedBox(
                        width: Dimensions.widthRatio(20),
                      ),
                      // search
                      GestureDetector(
                        onTap: () {
                          print('menu');
                        },
                        child: Container(
                          width: Dimensions.widthRatio(35),
                          height: Dimensions.heightRatio(35),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/menu.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                      // space
                      SizedBox(
                        width: Dimensions.widthRatio(100),
                      ),
                    ],
                  ),
                  // space
                  SizedBox(
                    height: Dimensions.heightRatio(20),
                  ),
                  // main hero section
                  Container(
                    height: isWidestScreen
                        ? Dimensions.heightRatio(875)
                        : Dimensions.heightRatio(650),
                    width: double.maxFinite,
                    child: Stack(
                      children: [
                        Container(
                          height: Dimensions.heightRatio(870),
                          width: Dimensions.widthRatio(1500),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/girl_bg.png',
                              ),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Positioned(
                          left: Dimensions.widthRatio(1000),
                          top: Dimensions.heightRatio(250),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // big text
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Free',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w900,
                                        fontSize: Dimensions.heightRatio(40),
                                        height: 1.5,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' Swingers\n',
                                      style: TextStyle(
                                        color: AppColors.lilacColor,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w900,
                                        fontSize: Dimensions.heightRatio(40),
                                        height: 1.5,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Just Got Even Better',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w900,
                                        fontSize: Dimensions.heightRatio(40),
                                        height: 1.5,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // space
                              SizedBox(
                                height: Dimensions.heightRatio(10),
                              ),
                              // paragraph
                              Text(
                                'Intrigue awaits! Explore our new chatroom,\neffortless verification & more at FreeSwingers.\nSpark connections & ignite your journey.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontSize: Dimensions.heightRatio(16),
                                  letterSpacing: 1,
                                  height: 1.5,
                                ),
                              ),
                              // space
                              SizedBox(
                                height: Dimensions.heightRatio(75),
                              ),
                              // sign up
                              GestureDetector(
                                onTap: () {
                                  Get.toNamed(AppRoutes.getSignUpPage());
                                },
                                child: Container(
                                  width: Dimensions.widthRatio(180),
                                  height: Dimensions.heightRatio(70),
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/signup.png',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // sponsors
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: isWidestScreen
                          ? Dimensions.heightRatio(40)
                          : Dimensions.heightRatio(0),
                      horizontal: isWidestScreen
                          ? Dimensions.widthRatio(100)
                          : Dimensions.widthRatio(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: Dimensions.heightRatio(200),
                          width: Dimensions.widthRatio(350),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/luxury.png',
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: Dimensions.heightRatio(200),
                          width: Dimensions.widthRatio(350),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/intense.png',
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: Dimensions.heightRatio(200),
                          width: Dimensions.widthRatio(350),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/plum_toys.png',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // elegant ath... another section
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: isWidestScreen
                          ? Dimensions.widthRatio(250)
                          : Dimensions.widthRatio(20),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: Dimensions.heightRatio(650),
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/gay.png',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: Dimensions.heightRatio(650),
                                color: AppColors.lighterBlackColor,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: Dimensions.heightRatio(80),
                                    ),
                                    Center(
                                      child: Text(
                                        'Elegant',
                                        style: TextStyle(
                                          fontFamily: 'Mate',
                                          color: AppColors.lilacColor,
                                          fontWeight: FontWeight.w900,
                                          fontSize: Dimensions.heightRatio(40),
                                          height: 1.5,
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: Text(
                                        'Atmosphere',
                                        style: TextStyle(
                                          fontFamily: 'Mate',
                                          color: AppColors.whiteColor,
                                          fontWeight: FontWeight.w900,
                                          fontSize: Dimensions.heightRatio(40),
                                          height: 1.5,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: Dimensions.heightRatio(80),
                                    ),
                                    Center(
                                      child: Text(
                                        'for a luxurious',
                                        style: TextStyle(
                                          fontFamily: 'Mate',
                                          color: AppColors.whiteColor,
                                          fontWeight: FontWeight.w900,
                                          fontSize: Dimensions.heightRatio(40),
                                          height: 1.5,
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'and',
                                              style: TextStyle(
                                                fontFamily: 'Mate',
                                                color: AppColors.whiteColor,
                                                fontWeight: FontWeight.w900,
                                                fontSize:
                                                    Dimensions.heightRatio(40),
                                                height: 1.5,
                                              ),
                                            ),
                                            TextSpan(
                                              text: ' private',
                                              style: TextStyle(
                                                fontFamily: 'Mate',
                                                color: AppColors.lilacColor,
                                                fontWeight: FontWeight.w900,
                                                fontSize:
                                                    Dimensions.heightRatio(40),
                                                height: 1.5,
                                              ),
                                            ),
                                            TextSpan(
                                              text: ' experience',
                                              style: TextStyle(
                                                fontFamily: 'Mate',
                                                color: AppColors.whiteColor,
                                                fontWeight: FontWeight.w900,
                                                fontSize:
                                                    Dimensions.heightRatio(40),
                                                height: 1.5,
                                              ),
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: Dimensions.heightRatio(650),
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/sexy1.png',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: Dimensions.heightRatio(650),
                                color: AppColors.lighterBlackColor,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: Dimensions.heightRatio(80),
                                    ),
                                    Center(
                                      child: Text(
                                        'Discerning',
                                        style: TextStyle(
                                          fontFamily: 'Mate',
                                          color: AppColors.lilacColor,
                                          fontWeight: FontWeight.w900,
                                          fontSize: Dimensions.heightRatio(40),
                                          height: 1.5,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Center(
                                      child: Text(
                                        'Couples',
                                        style: TextStyle(
                                          fontFamily: 'Mate',
                                          color: AppColors.lilacColor,
                                          fontWeight: FontWeight.w900,
                                          fontSize: Dimensions.heightRatio(40),
                                          height: 1.5,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: Dimensions.heightRatio(80),
                                    ),
                                    Center(
                                      child: Text(
                                        'seeking to',
                                        style: TextStyle(
                                          fontFamily: 'Mate',
                                          color: AppColors.whiteColor,
                                          fontWeight: FontWeight.w900,
                                          fontSize: Dimensions.heightRatio(40),
                                          height: 1.5,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Center(
                                      child: Text(
                                        'expand their horizons.',
                                        style: TextStyle(
                                          fontFamily: 'Mate',
                                          color: AppColors.whiteColor,
                                          fontWeight: FontWeight.w900,
                                          fontSize: Dimensions.heightRatio(40),
                                          height: 1.5,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: Dimensions.heightRatio(650),
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/sexy2.png',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: Dimensions.heightRatio(650),
                                color: AppColors.lighterBlackColor,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: Dimensions.heightRatio(80),
                                    ),
                                    Center(
                                      child: Text(
                                        'Open-minded',
                                        style: TextStyle(
                                          fontFamily: 'Mate',
                                          color: AppColors.whiteColor,
                                          fontWeight: FontWeight.w900,
                                          fontSize: Dimensions.heightRatio(40),
                                          height: 1.5,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Center(
                                      child: Text(
                                        'Couples',
                                        style: TextStyle(
                                          fontFamily: 'Mate',
                                          color: AppColors.lilacColor,
                                          fontWeight: FontWeight.w900,
                                          fontSize: Dimensions.heightRatio(40),
                                          height: 1.5,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: Dimensions.heightRatio(80),
                                    ),
                                    Center(
                                      child: Text(
                                        'who share your',
                                        style: TextStyle(
                                          fontFamily: 'Mate',
                                          color: AppColors.whiteColor,
                                          fontWeight: FontWeight.w900,
                                          fontSize: Dimensions.heightRatio(40),
                                          height: 1.5,
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: Text(
                                        'desire for exploration.',
                                        style: TextStyle(
                                          fontFamily: 'Mate',
                                          color: AppColors.whiteColor,
                                          fontWeight: FontWeight.w900,
                                          fontSize: Dimensions.heightRatio(40),
                                          height: 1.5,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // unleash 1... another section
                  Container(
                    height: isWidestScreen
                        ? Dimensions.heightRatio(900)
                        : Dimensions.heightRatio(600),
                    margin: EdgeInsets.symmetric(
                      horizontal: isWidestScreen
                          ? Dimensions.widthRatio(100)
                          : Dimensions.widthRatio(20),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          height: double.maxFinite,
                          width: Dimensions.widthRatio(1700),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/cp.png',
                              ),
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        Positioned(
                          top: isWidestScreen
                              ? Dimensions.heightRatio(250)
                              : Dimensions.heightRatio(150),
                          right: isWidestScreen
                              ? Dimensions.widthRatio(60)
                              : Dimensions.widthRatio(45),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: isWidestScreen
                                    ? Dimensions.widthRatio(600)
                                    : Dimensions.widthRatio(500),
                                height: isWidestScreen
                                    ? Dimensions.heightRatio(100)
                                    : Dimensions.heightRatio(70),
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/unleash.png',
                                    ),
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ),
                              Container(
                                width: isWidestScreen
                                    ? Dimensions.widthRatio(600)
                                    : Dimensions.widthRatio(500),
                                height: isWidestScreen
                                    ? Dimensions.heightRatio(100)
                                    : Dimensions.heightRatio(70),
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/reconnect.png',
                                    ),
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: isWidestScreen
                                    ? Dimensions.heightRatio(150)
                                    : Dimensions.heightRatio(80),
                              ),
                              // sign up
                              GestureDetector(
                                onTap: () {
                                  Get.toNamed(AppRoutes.getSignUpPage());
                                },
                                child: Container(
                                  width: Dimensions.widthRatio(180),
                                  height: Dimensions.heightRatio(70),
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/signup.png',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // unleash 2 ... another section
                  Container(
                    height: isWidestScreen
                        ? Dimensions.heightRatio(800)
                        : Dimensions.heightRatio(650),
                    margin: EdgeInsets.symmetric(
                      horizontal: isWidestScreen
                          ? Dimensions.widthRatio(100)
                          : Dimensions.widthRatio(20),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: isWidestScreen
                              ? Dimensions.heightRatio(65)
                              : Dimensions.heightRatio(0),
                        ),
                        Container(
                          width: Dimensions.widthRatio(600),
                          height: Dimensions.heightRatio(100),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/unleash.png',
                              ),
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        Container(
                          width: Dimensions.widthRatio(300),
                          height: Dimensions.heightRatio(50),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/discover.png',
                              ),
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: isWidestScreen
                              ? Dimensions.heightRatio(45)
                              : Dimensions.heightRatio(0),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: Dimensions.heightRatio(500),
                                width: Dimensions.widthRatio(320),
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/men.png',
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: Dimensions.widthRatio(50),
                              ),
                              Container(
                                height: Dimensions.heightRatio(500),
                                width: Dimensions.widthRatio(320),
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/women.png',
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: Dimensions.widthRatio(50),
                              ),
                              Container(
                                height: Dimensions.heightRatio(500),
                                width: Dimensions.widthRatio(320),
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/cross_dressers.png',
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: Dimensions.widthRatio(50),
                              ),
                              Container(
                                height: Dimensions.heightRatio(500),
                                width: Dimensions.widthRatio(320),
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/trans.png',
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // our services another section
                  Container(
                    height: isWidestScreen
                        ? Dimensions.heightRatio(680)
                        : Dimensions.heightRatio(500),
                    color: AppColors.lilacColor2,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: Dimensions.widthRatio(0),
                          ),
                          height: isWidestScreen
                              ? Dimensions.heightRatio(680)
                              : Dimensions.heightRatio(500),
                          width: isWidestScreen
                              ? Dimensions.widthRatio(1000)
                              : Dimensions.widthRatio(1000),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/2girls.png',
                              ),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: isWidestScreen
                                  ? Dimensions.heightRatio(100)
                                  : Dimensions.heightRatio(50),
                            ),
                            Container(
                              height: Dimensions.heightRatio(65),
                              width: Dimensions.widthRatio(200),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/our_service.png',
                                  ),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Container(
                              height: Dimensions.heightRatio(80),
                              width: Dimensions.widthRatio(680),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/what_we.png',
                                  ),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Container(
                              height: Dimensions.heightRatio(200),
                              width: Dimensions.widthRatio(700),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/para.png',
                                  ),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: isWidestScreen
                                  ? Dimensions.heightRatio(100)
                                  : Dimensions.heightRatio(0),
                            ),
                            Container(
                              height: Dimensions.heightRatio(60),
                              width: Dimensions.widthRatio(200),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/learn.png',
                                  ),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // testimonial another section
                  Container(
                    height: isWidestScreen
                        ? Dimensions.heightRatio(500)
                        : Dimensions.heightRatio(350),
                    padding: EdgeInsets.symmetric(
                      horizontal: isWidestScreen
                          ? Dimensions.widthRatio(150)
                          : Dimensions.widthRatio(100),
                      vertical: isWidestScreen
                          ? Dimensions.heightRatio(100)
                          : Dimensions.heightRatio(50),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Client’s feedback',
                              style: TextStyle(
                                color: AppColors.lilacColor,
                                fontSize: isWidestScreen
                                    ? Dimensions.heightRatio(35)
                                    : Dimensions.heightRatio(25),
                                fontFamily: 'Mate',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: Dimensions.heightRatio(10),
                            ),
                            Text(
                              'Testimonials',
                              style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: isWidestScreen
                                    ? Dimensions.heightRatio(65)
                                    : Dimensions.heightRatio(45),
                                fontFamily: 'Mate',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: Dimensions.heightRatio(10),
                            ),
                            Text(
                              'Wondering what awaits?  Discover what couples are saying\nabout their journeys at  Freeswingers',
                              style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: isWidestScreen
                                    ? Dimensions.heightRatio(18)
                                    : Dimensions.heightRatio(14),
                                fontFamily: 'Mate',
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            SizedBox(
                              height: Dimensions.heightRatio(25),
                            ),
                            Container(
                              height: isWidestScreen
                                  ? Dimensions.heightRatio(40)
                                  : Dimensions.heightRatio(60),
                              width: isWidestScreen
                                  ? Dimensions.widthRatio(100)
                                  : Dimensions.widthRatio(150),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/learn.png',
                                  ),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: isWidestScreen
                                  ? Dimensions.heightRatio(220)
                                  : Dimensions.heightRatio(175),
                              width: isWidestScreen
                                  ? Dimensions.widthRatio(220)
                                  : Dimensions.widthRatio(175),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/maria.png',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: isWidestScreen
                                  ? Dimensions.heightRatio(70)
                                  : Dimensions.heightRatio(50),
                            ),
                            Text(
                              'Maria, 57',
                              style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: isWidestScreen
                                    ? Dimensions.heightRatio(25)
                                    : Dimensions.heightRatio(20),
                                fontFamily: 'Mate',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: Dimensions.heightRatio(7),
                            ),
                            Text(
                              'My partner and I had been feeling a bit stuck in\na rut for a while. Free Swingers provided a safe\nand welcoming space for us to explore new ways\nto connect. We met other open-minded couples\nand learned some great communication tools\nthat have benefitted us outside the club too. It\'s\ndefinitely reignited the spark in our\nrelationship!"',
                              style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: isWidestScreen
                                    ? Dimensions.heightRatio(18)
                                    : Dimensions.heightRatio(14),
                                fontFamily: 'Mate',
                                fontWeight: FontWeight.w200,
                                height: 1.3,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // 30% ... another section
                  Container(
                    height: isWidestScreen
                        ? Dimensions.heightRatio(980)
                        : Dimensions.heightRatio(600),
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(
                      horizontal: isWidestScreen
                          ? Dimensions.widthRatio(120)
                          : Dimensions.widthRatio(80),
                    ),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/ass_bg.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: isWidestScreen
                              ? Dimensions.heightRatio(250)
                              : Dimensions.heightRatio(50),
                        ),
                        Text(
                          'Play Rooms',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Mate',
                            fontSize: isWidestScreen
                                ? Dimensions.heightRatio(75)
                                : Dimensions.heightRatio(65),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: Dimensions.heightRatio(10),
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: '30%',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: isWidestScreen
                                      ? Dimensions.heightRatio(80)
                                      : Dimensions.heightRatio(70),
                                  color: AppColors.lilacColor,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text: ' off',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: isWidestScreen
                                      ? Dimensions.heightRatio(80)
                                      : Dimensions.heightRatio(70),
                                  color: AppColors.whiteColor,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: Dimensions.heightRatio(10),
                        ),
                        Text(
                          'each playroom offers a unique canvas for exploration.  Silky fabrics drape\naround plush furniture, inviting intimacy.  Playful touches like strategically\nplaced mirrors or flickering candlelight add a touch of intrigue.  The air itself\nhums with a subtle energy, a promise of shared discovery',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Mate',
                            fontSize: isWidestScreen
                                ? Dimensions.heightRatio(20)
                                : Dimensions.heightRatio(18),
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(
                          height: isWidestScreen
                              ? Dimensions.heightRatio(120)
                              : Dimensions.heightRatio(60),
                        ),
                        Container(
                          height: Dimensions.heightRatio(80),
                          width: Dimensions.widthRatio(200),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/explore.png',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // upcoming events ... another section
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: isWidestScreen
                          ? Dimensions.heightRatio(100)
                          : Dimensions.heightRatio(50),

                    ),
                    child: Column(
                      children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Upcoming ',
                                style: TextStyle(
                                  fontFamily: 'Mate',
                                  fontSize: isWidestScreen
                                      ? Dimensions.heightRatio(70)
                                      : Dimensions.heightRatio(55),
                                  color: AppColors.whiteColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              TextSpan(
                                text: 'Events',
                                style: TextStyle(
                                  fontFamily: 'Mate',
                                  fontSize: isWidestScreen
                                      ? Dimensions.heightRatio(70)
                                      : Dimensions.heightRatio(55),
                                  color: AppColors.lilacColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: isWidestScreen
                              ? Dimensions.heightRatio(100)
                              : Dimensions.heightRatio(40),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: Dimensions.widthRatio(40),
                              ),
                              Container(
                                // height: Dimensions.heightRatio(550),
                                // width: Dimensions.widthRatio(460),
                                padding: EdgeInsets.symmetric(
                                  horizontal: isWidestScreen
                                      ? Dimensions.widthRatio(50)
                                      : Dimensions.widthRatio(30),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    width: 2,
                                    color: AppColors.lilacColor,
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: isWidestScreen ?
                                      Dimensions.heightRatio(90)
                                      : Dimensions.heightRatio(40),
                                    ),
                                    Text(
                                      'CHILL N PLAY YOUR WAY\nSUNDAY 24th March @ CLUB PLAY\n2PM – 2AM *** FREE ENTRY\nOFFER? ***',
                                      style: TextStyle(
                                        color: AppColors.whiteColor,
                                        fontFamily: 'Mate',
                                        fontSize: isWidestScreen
                                            ? Dimensions.heightRatio(22)
                                            : Dimensions.heightRatio(19),
                                        fontWeight: FontWeight.w400,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                    SizedBox(
                                      height: isWidestScreen
                                          ? Dimensions.heightRatio(20)
                                          : Dimensions.heightRatio(10),
                                    ),
                                    Text(
                                      'Date – SUNDAY 24th March',
                                      style: TextStyle(
                                        color: AppColors.whiteColor,
                                        fontFamily: 'Mate',
                                        fontSize: isWidestScreen
                                            ? Dimensions.heightRatio(12)
                                            : Dimensions.heightRatio(10),
                                        fontWeight: FontWeight.w100,
                                      ),
                                    ),
                                    SizedBox(
                                      height: isWidestScreen
                                          ? Dimensions.heightRatio(10)
                                          : Dimensions.heightRatio(5),
                                    ),
                                    Text(
                                      'Time – 2 PM – 2 AM',
                                      style: TextStyle(
                                        color: AppColors.whiteColor,
                                        fontFamily: 'Mate',
                                        fontSize: isWidestScreen
                                            ? Dimensions.heightRatio(12)
                                            : Dimensions.heightRatio(10),
                                        fontWeight: FontWeight.w100,
                                      ),
                                    ),
                                    SizedBox(
                                      height:isWidestScreen ?
                                      Dimensions.heightRatio(150)
                                      :Dimensions.heightRatio(40),
                                    ),
                                    Center(
                                      child: Container(
                                        height: Dimensions.heightRatio(55),
                                        width: Dimensions.widthRatio(150),
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                              'assets/images/explore.png',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: isWidestScreen
                                          ? Dimensions.heightRatio(100)
                                          : Dimensions.heightRatio(50),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: Dimensions.widthRatio(40),
                              ),
                              Container(
                                // height: Dimensions.heightRatio(550),
                                // width: Dimensions.widthRatio(460),
                                padding: EdgeInsets.symmetric(
                                  horizontal: isWidestScreen
                                      ? Dimensions.widthRatio(50)
                                      : Dimensions.widthRatio(30),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    width: 2,
                                    color: AppColors.lilacColor,
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: isWidestScreen ?
                                      Dimensions.heightRatio(90)
                                          : Dimensions.heightRatio(40),
                                    ),
                                    Text(
                                      'CHILL N PLAY YOUR WAY\nSUNDAY 24th March @ CLUB PLAY\n2PM – 2AM *** FREE ENTRY\nOFFER? ***',
                                      style: TextStyle(
                                        color: AppColors.whiteColor,
                                        fontFamily: 'Mate',
                                        fontSize: isWidestScreen
                                            ? Dimensions.heightRatio(22)
                                            : Dimensions.heightRatio(19),
                                        fontWeight: FontWeight.w400,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                    SizedBox(
                                      height: isWidestScreen
                                          ? Dimensions.heightRatio(20)
                                          : Dimensions.heightRatio(10),
                                    ),
                                    Text(
                                      'Date – SUNDAY 24th March',
                                      style: TextStyle(
                                        color: AppColors.whiteColor,
                                        fontFamily: 'Mate',
                                        fontSize: isWidestScreen
                                            ? Dimensions.heightRatio(12)
                                            : Dimensions.heightRatio(10),
                                        fontWeight: FontWeight.w100,
                                      ),
                                    ),
                                    SizedBox(
                                      height: isWidestScreen
                                          ? Dimensions.heightRatio(10)
                                          : Dimensions.heightRatio(5),
                                    ),
                                    Text(
                                      'Time – 2 PM – 2 AM',
                                      style: TextStyle(
                                        color: AppColors.whiteColor,
                                        fontFamily: 'Mate',
                                        fontSize: isWidestScreen
                                            ? Dimensions.heightRatio(12)
                                            : Dimensions.heightRatio(10),
                                        fontWeight: FontWeight.w100,
                                      ),
                                    ),
                                    SizedBox(
                                      height:isWidestScreen ?
                                      Dimensions.heightRatio(150)
                                          :Dimensions.heightRatio(40),
                                    ),
                                    Center(
                                      child: Container(
                                        height: Dimensions.heightRatio(55),
                                        width: Dimensions.widthRatio(150),
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                              'assets/images/explore.png',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: isWidestScreen
                                          ? Dimensions.heightRatio(100)
                                          : Dimensions.heightRatio(50),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: Dimensions.widthRatio(40),
                              ),
                              Container(
                                // height: Dimensions.heightRatio(550),
                                // width: Dimensions.widthRatio(460),
                                padding: EdgeInsets.symmetric(
                                  horizontal: isWidestScreen
                                      ? Dimensions.widthRatio(50)
                                      : Dimensions.widthRatio(30),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    width: 2,
                                    color: AppColors.lilacColor,
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: isWidestScreen ?
                                      Dimensions.heightRatio(90)
                                          : Dimensions.heightRatio(40),
                                    ),
                                    Text(
                                      'CHILL N PLAY YOUR WAY\nSUNDAY 24th March @ CLUB PLAY\n2PM – 2AM *** FREE ENTRY\nOFFER? ***',
                                      style: TextStyle(
                                        color: AppColors.whiteColor,
                                        fontFamily: 'Mate',
                                        fontSize: isWidestScreen
                                            ? Dimensions.heightRatio(22)
                                            : Dimensions.heightRatio(19),
                                        fontWeight: FontWeight.w400,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                    SizedBox(
                                      height: isWidestScreen
                                          ? Dimensions.heightRatio(20)
                                          : Dimensions.heightRatio(10),
                                    ),
                                    Text(
                                      'Date – SUNDAY 24th March',
                                      style: TextStyle(
                                        color: AppColors.whiteColor,
                                        fontFamily: 'Mate',
                                        fontSize: isWidestScreen
                                            ? Dimensions.heightRatio(12)
                                            : Dimensions.heightRatio(10),
                                        fontWeight: FontWeight.w100,
                                      ),
                                    ),
                                    SizedBox(
                                      height: isWidestScreen
                                          ? Dimensions.heightRatio(10)
                                          : Dimensions.heightRatio(5),
                                    ),
                                    Text(
                                      'Time – 2 PM – 2 AM',
                                      style: TextStyle(
                                        color: AppColors.whiteColor,
                                        fontFamily: 'Mate',
                                        fontSize: isWidestScreen
                                            ? Dimensions.heightRatio(12)
                                            : Dimensions.heightRatio(10),
                                        fontWeight: FontWeight.w100,
                                      ),
                                    ),
                                    SizedBox(
                                      height:isWidestScreen ?
                                      Dimensions.heightRatio(150)
                                          :Dimensions.heightRatio(40),
                                    ),
                                    Center(
                                      child: Container(
                                        height: Dimensions.heightRatio(55),
                                        width: Dimensions.widthRatio(150),
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                              'assets/images/explore.png',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: isWidestScreen
                                          ? Dimensions.heightRatio(100)
                                          : Dimensions.heightRatio(50),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: Dimensions.widthRatio(40),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // footer
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: Dimensions.heightRatio(100),
                      horizontal: Dimensions.widthRatio(200),
                    ),
                    decoration:
                        const BoxDecoration(color: AppColors.lighterBlackColor),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: Dimensions.heightRatio(60),
                              width: Dimensions.widthRatio(350),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/free_swingers.png',
                                  ),
                                ),
                              ),
                            ),
                            const Expanded(
                              child: SizedBox(),
                            ),
                            Text(
                              'Ready to get started?',
                              style: TextStyle(
                                color: AppColors.whiteColor,
                                fontFamily: 'Poppins',
                                fontSize: Dimensions.heightRatio(20),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              width: Dimensions.widthRatio(50),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.toNamed(AppRoutes.getSignUpPage());
                              },
                              child: Container(
                                height: Dimensions.heightRatio(75),
                                width: Dimensions.widthRatio(250),
                                decoration: const BoxDecoration(
                                  color: AppColors.lilacColor,
                                ),
                                child: Center(
                                  child: Text(
                                    'Sign Up',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Poppins',
                                      fontSize: Dimensions.heightRatio(22),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: Dimensions.heightRatio(120),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Subscribe to our\nnewsletter',
                                  style: TextStyle(
                                    color: AppColors.whiteColor,
                                    fontFamily: 'Poppins',
                                    fontSize: Dimensions.heightRatio(20),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                  height: Dimensions.heightRatio(20),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      width: Dimensions.widthRatio(280),
                                      height: Dimensions.heightRatio(65),
                                      child: Center(
                                        child: TextField(
                                          decoration: InputDecoration(
                                            hintText: 'Email Address',
                                            hintStyle: TextStyle(
                                              color: Colors.grey,
                                              fontFamily: 'Poppins',
                                              fontSize:
                                                  Dimensions.heightRatio(16),
                                              fontWeight: FontWeight.w200,
                                            ),
                                            focusedBorder:
                                                const OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: AppColors.lilacColor,
                                                width: 2.5,
                                              ),
                                            ),
                                          ),
                                          cursorColor: AppColors.lilacColor,
                                          style: const TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: Dimensions.widthRatio(55),
                                      height: Dimensions.heightRatio(65),
                                      decoration: const BoxDecoration(
                                        color: AppColors.lilacColor,
                                      ),
                                      child: const Center(
                                        child: Icon(
                                          Icons.arrow_forward_ios,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Services',
                                  style: TextStyle(
                                    color: AppColors.lilacColor,
                                    fontFamily: 'Poppins',
                                    fontSize: Dimensions.heightRatio(16),
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                SizedBox(
                                  height: Dimensions.heightRatio(16),
                                ),
                                Text(
                                  'Privacy Policy',
                                  style: TextStyle(
                                    color: AppColors.whiteColor,
                                    fontFamily: 'Poppins',
                                    fontSize: Dimensions.heightRatio(16),
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                SizedBox(
                                  height: Dimensions.heightRatio(16),
                                ),
                                Text(
                                  'Campaigns',
                                  style: TextStyle(
                                    color: AppColors.whiteColor,
                                    fontFamily: 'Poppins',
                                    fontSize: Dimensions.heightRatio(16),
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'About',
                                  style: TextStyle(
                                    color: AppColors.lilacColor,
                                    fontFamily: 'Poppins',
                                    fontSize: Dimensions.heightRatio(16),
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                SizedBox(
                                  height: Dimensions.heightRatio(16),
                                ),
                                Text(
                                  'Our Story',
                                  style: TextStyle(
                                    color: AppColors.whiteColor,
                                    fontFamily: 'Poppins',
                                    fontSize: Dimensions.heightRatio(16),
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                SizedBox(
                                  height: Dimensions.heightRatio(16),
                                ),
                                Text(
                                  'Team',
                                  style: TextStyle(
                                    color: AppColors.whiteColor,
                                    fontFamily: 'Poppins',
                                    fontSize: Dimensions.heightRatio(16),
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Help',
                                  style: TextStyle(
                                    color: AppColors.lilacColor,
                                    fontFamily: 'Poppins',
                                    fontSize: Dimensions.heightRatio(16),
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                SizedBox(
                                  height: Dimensions.heightRatio(16),
                                ),
                                Text(
                                  'FAQs',
                                  style: TextStyle(
                                    color: AppColors.whiteColor,
                                    fontFamily: 'Poppins',
                                    fontSize: Dimensions.heightRatio(16),
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                SizedBox(
                                  height: Dimensions.heightRatio(16),
                                ),
                                Text(
                                  'Contact Us',
                                  style: TextStyle(
                                    color: AppColors.whiteColor,
                                    fontFamily: 'Poppins',
                                    fontSize: Dimensions.heightRatio(16),
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: Dimensions.heightRatio(120),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Terms & Conditions',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w200,
                                fontSize: Dimensions.heightRatio(16),
                              ),
                            ),
                            Text(
                              'Privacy Policy',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w200,
                                fontSize: Dimensions.heightRatio(16),
                              ),
                            ),
                            Text(
                              'Copyright © 2024 Club Play. Club Play Blackpool Swingers Club Swingers Party Events Club',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w200,
                                fontSize: Dimensions.heightRatio(16),
                              ),
                            ),
                            Container(
                              height: Dimensions.heightRatio(35),
                              width: Dimensions.widthRatio(180),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/socials.png',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
