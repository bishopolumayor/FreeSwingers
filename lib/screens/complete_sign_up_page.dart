import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:free_swingers/routes/routes.dart';
import 'package:free_swingers/utils/colors.dart';
import 'package:free_swingers/utils/dimensions.dart';
import 'package:get/get.dart';

class CompleteSignUpPage extends StatefulWidget {
  const CompleteSignUpPage({super.key});

  @override
  State<CompleteSignUpPage> createState() => _CompleteSignUpPageState();
}

class _CompleteSignUpPageState extends State<CompleteSignUpPage> {

  var usernameController = TextEditingController();
  var emailAddressController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                        onTap: (){
                          Get.offNamed(AppRoutes.getLoginPage());
                        },
                        child: Text(
                          'Login',
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
                  // section
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: Dimensions.widthRatio(100),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // space
                        SizedBox(
                          height: Dimensions.heightRatio(200),
                        ),
                        // account details
                        Center(
                          child: Text(
                            'Account Details',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: Dimensions.heightRatio(25),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        // space
                        SizedBox(
                          height: Dimensions.heightRatio(50),
                        ),
                        // user name
                        Text(
                          'Username',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: Dimensions.heightRatio(20),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        // space
                        SizedBox(
                          height: Dimensions.heightRatio(10),
                        ),
                        // text field
                        TextField(
                          controller: usernameController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'bishopolumayor',
                            hintStyle: const TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontWeight: FontWeight.w100,
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: Dimensions.widthRatio(50),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
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
