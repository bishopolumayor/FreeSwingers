import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:free_swingers/routes/routes.dart';
import 'package:free_swingers/utils/colors.dart';
import 'package:free_swingers/utils/dimensions.dart';
import 'package:get/get.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var profileNameController = TextEditingController();

  void _showDatePicker(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.dark().copyWith(
            colorScheme: const ColorScheme.dark(
              primary: AppColors.lilacColor,
              onPrimary: Colors.white,
            ),
          ),
          child: child!,
        );
      },
    );

    if (pickedDate != null && pickedDate != selectedDate) {
      setState(() {
        selectedDate = pickedDate;
      });
    }
  }

  Map<String, String> sexuality = {
    'couple-both-straight': 'Couple-Both Straight',
    'couple-bi-both': 'Couple-Bi Both',
    'couple-bi-female': 'Couple-Bi Female',
    'couple-bi-male': 'Couple-Bi Male',
    'couple-gay': 'Couple-Gay',
    'female-straight': 'Female-Straight',
    'female-bi': 'Female-Bi',
    'female-gay': 'Female-Gay',
    'male-straight': 'Male-Straight',
    'male-bi': 'Male-Bi',
    'male-gay': 'Male-Gay',
  };

  Map<String, String> profileTypes = {
    'couple': 'Couple',
    'man': 'Man',
    'woman': 'Woman',
    'tv-ts-trans': 'Tv Ts Trans',
    'cross-dresser': 'Cross Dresser',
  };

  Map<String, String> lookingForMap = {
    'couple-both-straight': 'Couple-Both Straight',
    'couple-bi-both': 'Couple-Bi Both',
    'couple-bi-female': 'Couple-Bi Female',
    'couple-bi-male': 'Couple-Bi Male',
    'couple-gay': 'Couple-Gay',
    'female-straight': 'Female-Straight',
    'female-bi': 'Female-Bi',
    'female-gay': 'Female-Gay',
    'male-straight': 'Male-Straight',
    'male-bi': 'Male-Bi',
    'male-gay': 'Male-Gay',
    'tv-ts-trans': 'Tv Ts Trans',
    'cross-dresser': 'Cross Dresser',
  };

  Map<String, String> primaryInterestMap = {
    'social-club-meet': 'Social Club Meet',
    'club-meet': 'Club Meet',
    'online-fun': 'Online Fun',
    'soft-swing-club-meet': 'Soft Swing Club Meet',
    'full-swing-club-meet': 'Full Swing Club Meet',
  };

  Map<String, String> eyeColorMap = {
    'black': 'Black',
    'blue': 'Blue',
    'Brown': 'Brown',
    'hazel': 'Hazel',
    'grey': 'Grey',
    'green': 'Green',
  };

  Map<String, String> hairColorMap = {
    'black': 'Black',
    'auburn': 'Auburn',
    'Brown': 'Brown',
    'blonde': 'Blonde',
    'grey-white': 'Grey/White',
    'chestnut': 'Chestnut',
    'other': 'Others/Coloured',
  };

  Map<String, String> heightMap = {
    '4\'0"': '4 feet 0 inches',
    '4\'1"': '4 feet 1 inch',
    '4\'2"': '4 feet 2 inches',
    '4\'3"': '4 feet 3 inches',
    '4\'4"': '4 feet 4 inches',
    '4\'5"': '4 feet 5 inches',
    '4\'6"': '4 feet 6 inches',
    '4\'7"': '4 feet 7 inches',
    '4\'8"': '4 feet 8 inches',
    '4\'9"': '4 feet 9 inches',
    '4\'10"': '4 feet 10 inches',
    '4\'11"': '4 feet 11 inches',
    '5\'0"': '5 feet 0 inches',
    '5\'1"': '5 feet 1 inch',
    '5\'2"': '5 feet 2 inches',
    '5\'3"': '5 feet 3 inches',
    '5\'4"': '5 feet 4 inches',
    '5\'5"': '5 feet 5 inches',
    '5\'6"': '5 feet 6 inches',
    '5\'7"': '5 feet 7 inches',
    '5\'8"': '5 feet 8 inches',
    '5\'9"': '5 feet 9 inches',
    '5\'10"': '5 feet 10 inches',
    '5\'11"': '5 feet 11 inches',
    '6\'0"': '6 feet 0 inches',
    '6\'1"': '6 feet 1 inch',
    '6\'2"': '6 feet 2 inches',
    '6\'3"': '6 feet 3 inches',
    '6\'4"': '6 feet 4 inches',
    '6\'5"': '6 feet 5 inches',
    '6\'6"': '6 feet 6 inches',
    '6\'7"': '6 feet 7 inches',
    '6\'8"': '6 feet 8 inches',
    '6\'9"': '6 feet 9 inches',
    '6\'10"': '6 feet 10 inches',
    '6\'11"': '6 feet 11 inches',
    '7\'0"': '7 feet 0 inches',
  };

  String? selectedSexuality;
  String? selectedProfileType;
  String? lookingFor;
  String? primaryInterests;
  DateTime? selectedDate;
  String? eyeColor;
  String? hairColor;
  String? height;

  String formatDate(DateTime? date) {
    if (date != null) {
      return '${date.day.toString().padLeft(2, '0')}/${date.month.toString().padLeft(2, '0')}/${date.year}';
    } else {
      return 'Select a date';
    }
  }

  void signUp()async{
    Get.toNamed(AppRoutes.getCompleteSignUpPage());
  }

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
                    height: Dimensions.heightRatio(100),
                  ),
                  // sign up section
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: Dimensions.widthRatio(200),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // space
                        SizedBox(
                          height: Dimensions.heightRatio(20),
                        ),
                        // personal details
                        Center(
                          child: Text(
                            'Personal Details',
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
                        // profile name
                        Text(
                          'Profile name',
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
                          controller: profileNameController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Bishopolumayor',
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
                        // space
                        SizedBox(
                          height: Dimensions.heightRatio(20),
                        ),
                        // sexuality
                        Text(
                          'Sexuality',
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
                        DropdownButtonFormField<String>(
                          value: selectedSexuality,
                          onChanged: (String? newValue) {
                            if (newValue != null) {
                              selectedSexuality = newValue;
                            }
                          },
                          items: sexuality.entries
                              .map<DropdownMenuItem<String>>(
                                  (MapEntry<String, String> entry) {
                                return DropdownMenuItem<String>(
                                  value: entry.key,
                                  child: Text(entry.value),
                                );
                              }).toList(),
                          icon: const Icon(
                            CupertinoIcons.chevron_down,
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Sexuality',
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
                        // space
                        SizedBox(
                          height: Dimensions.heightRatio(20),
                        ),
                        // profile types
                        Text(
                          'Profile Type',
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
                        DropdownButtonFormField<String>(
                          value: selectedProfileType,
                          onChanged: (String? newValue) {
                            if (newValue != null) {
                              selectedProfileType = newValue;
                            }
                          },
                          items: profileTypes.entries
                              .map<DropdownMenuItem<String>>(
                                  (MapEntry<String, String> entry) {
                                return DropdownMenuItem<String>(
                                  value: entry.key,
                                  child: Text(entry.value),
                                );
                              }).toList(),
                          icon: const Icon(
                            CupertinoIcons.chevron_down,
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Select Profile Type',
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
                        // space
                        SizedBox(
                          height: Dimensions.heightRatio(20),
                        ),
                        // looking for
                        Text(
                          'Looking For',
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
                        DropdownButtonFormField<String>(
                          value: lookingFor,
                          onChanged: (String? newValue) {
                            if (newValue != null) {
                              lookingFor = newValue;
                            }
                          },
                          items: lookingForMap.entries
                              .map<DropdownMenuItem<String>>(
                                  (MapEntry<String, String> entry) {
                                return DropdownMenuItem<String>(
                                  value: entry.key,
                                  child: Text(entry.value),
                                );
                              }).toList(),
                          icon: const Icon(
                            CupertinoIcons.chevron_down,
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'What are you looking for?',
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
                        // space
                        SizedBox(
                          height: Dimensions.heightRatio(20),
                        ),
                        // date of birth
                        Text(
                          'Date of Birth',
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
                        GestureDetector(
                          onTap: () {
                            _showDatePicker(context);
                          },
                          child: Container(
                            height: Dimensions.heightRatio(45),
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                              horizontal: Dimensions.widthRatio(50),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Row(
                                children: [
                                  Text(
                                    formatDate(selectedDate),
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                      fontWeight: selectedDate == null
                                          ? FontWeight.w100
                                          : FontWeight.w300,
                                      fontSize: Dimensions.heightRatio(20),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        // space
                        SizedBox(
                          height: Dimensions.heightRatio(20),
                        ),
                        // primary interests
                        Text(
                          'Primary Interests',
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
                        DropdownButtonFormField<String>(
                          value: primaryInterests,
                          onChanged: (String? newValue) {
                            if (newValue != null) {
                              primaryInterests = newValue;
                            }
                          },
                          items: primaryInterestMap.entries
                              .map<DropdownMenuItem<String>>(
                                  (MapEntry<String, String> entry) {
                                return DropdownMenuItem<String>(
                                  value: entry.key,
                                  child: Text(entry.value),
                                );
                              }).toList(),
                          icon: const Icon(
                            CupertinoIcons.chevron_down,
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'What is your primary interest?',
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
                        // space
                        SizedBox(
                          height: Dimensions.heightRatio(20),
                        ),
                        // height
                        Text(
                          'Height',
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
                        DropdownButtonFormField<String>(
                          value: height,
                          onChanged: (String? newValue) {
                            if (newValue != null) {
                              height = newValue;
                            }
                          },
                          items: heightMap.entries
                              .map<DropdownMenuItem<String>>(
                                  (MapEntry<String, String> entry) {
                            return DropdownMenuItem<String>(
                              value: entry.key,
                              child: Text(entry.value),
                            );
                          }).toList(),
                          icon: const Icon(
                            CupertinoIcons.chevron_down,
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'What is your height?',
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
                        // space
                        SizedBox(
                          height: Dimensions.heightRatio(20),
                        ),
                        // hair and eye color
                        Row(
                            children: [
                              // hair color
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // hair color
                                    Text(
                                      'Hair Colour',
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
                                    DropdownButtonFormField<String>(
                                      value: hairColor,
                                      onChanged: (String? newValue) {
                                        if (newValue != null) {
                                          hairColor = newValue;
                                        }
                                      },
                                      items: hairColorMap.entries
                                          .map<DropdownMenuItem<String>>(
                                              (MapEntry<String, String> entry) {
                                            return DropdownMenuItem<String>(
                                              value: entry.key,
                                              child: Text(entry.value),
                                            );
                                          }).toList(),
                                      icon: const Icon(
                                        CupertinoIcons.chevron_down,
                                        color: Colors.black,
                                      ),
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        hintText: 'What is your hair color?',
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
                              // space
                              SizedBox(
                                width: Dimensions.widthRatio(100),
                              ),
                              // eye color
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // eye color
                                    Text(
                                      'Eye Colour',
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
                                    DropdownButtonFormField<String>(
                                      value: eyeColor,
                                      onChanged: (String? newValue) {
                                        if (newValue != null) {
                                          eyeColor = newValue;
                                        }
                                      },
                                      items: eyeColorMap.entries
                                          .map<DropdownMenuItem<String>>(
                                              (MapEntry<String, String> entry) {
                                            return DropdownMenuItem<String>(
                                              value: entry.key,
                                              child: Text(entry.value),
                                            );
                                          }).toList(),
                                      icon: const Icon(
                                        CupertinoIcons.chevron_down,
                                        color: Colors.black,
                                      ),
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        hintText: 'What is your eye color?',
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
                        // space
                        SizedBox(
                          height: Dimensions.heightRatio(50),
                        ),
                        // sign up
                        Center(
                          child: GestureDetector(
                            onTap: (){
                              signUp();
                            },
                            child: Container(
                              width: Dimensions.widthRatio(390),
                              height: Dimensions.heightRatio(80),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/signup2.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        // space
                        SizedBox(
                          height: Dimensions.heightRatio(200),
                        ),
                      ],
                    ),
                  ),
                  // footer
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: isWidestScreen
                          ?
                      Dimensions.heightRatio(100)
                      : Dimensions.heightRatio(40),
                      horizontal:isWidestScreen
                          ?
                      Dimensions.widthRatio(200)
                      : Dimensions.widthRatio(80),
                    ),
                    decoration:
                    const BoxDecoration(color: AppColors.lighterBlackColor,),
                    child: Column(
                      children: [
                        // logo and sign ...
                        Row(
                          children: [
                            // logo
                            Container(
                              height:isWidestScreen
                                  ?
                              Dimensions.heightRatio(60)
                              :Dimensions.heightRatio(45),
                              width:
                              isWidestScreen
                                  ?
                              Dimensions.widthRatio(350)
                              :Dimensions.widthRatio(250),
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
                            // already
                            Text(
                              'Already have an Account?',
                              style: TextStyle(
                                color: AppColors.whiteColor,
                                fontFamily: 'Poppins',
                                fontSize: isWidestScreen
                                    ?
                                Dimensions.heightRatio(20)
                                :Dimensions.heightRatio(18),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            // space
                            SizedBox(
                              width: Dimensions.widthRatio(50),
                            ),
                            // sign in
                            GestureDetector(
                              onTap: (){
                                // Get.toNamed(AppRoutes.getSignUpPage());
                              },
                              child: Container(
                                height:isWidestScreen
                                    ?
                                Dimensions.heightRatio(75)
                                :Dimensions.heightRatio(50),
                                width: isWidestScreen
                                    ?
                                Dimensions.widthRatio(250)
                                : Dimensions.widthRatio(195),
                                decoration: const BoxDecoration(
                                  color: AppColors.lilacColor,
                                ),
                                child: Center(
                                  child: Text(
                                    'Sign In',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Poppins',
                                      fontSize:isWidestScreen
                                          ?
                                      Dimensions.heightRatio(22)
                                      :Dimensions.heightRatio(18),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        // space
                        SizedBox(
                          height: isWidestScreen
                              ?
                          Dimensions.heightRatio(120)
                          :Dimensions.heightRatio(80),
                        ),
                        // subscribe  etc
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // subscribe
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Subscribe to our\nnewsletter',
                                  style: TextStyle(
                                    color: AppColors.whiteColor,
                                    fontFamily: 'Poppins',
                                    fontSize: isWidestScreen
                                        ?
                                    Dimensions.heightRatio(20)
                                    :Dimensions.heightRatio(18),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                  height: isWidestScreen
                                      ?
                                  Dimensions.heightRatio(20)
                                  :Dimensions.heightRatio(20),
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
                            // etc 1
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
                            // etc 2
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
                            //etc 3
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
                        // space
                        SizedBox(
                          height: Dimensions.heightRatio(120),
                        ),
                        // terms and copyright
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // terms
                            Text(
                              'Terms & Conditions',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w200,
                                fontSize: Dimensions.heightRatio(16),
                              ),
                            ),
                            // privacy
                            Text(
                              'Privacy Policy',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w200,
                                fontSize: Dimensions.heightRatio(16),
                              ),
                            ),
                            // copyright
                            Text(
                              'Copyright © 2024 Club Play. Club Play Blackpool Swingers Club Swingers Party Events Club',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w200,
                                fontSize: Dimensions.heightRatio(16),
                              ),
                            ),
                            // socials
                            Container(
                              height: Dimensions.heightRatio(35),
                              width: Dimensions.widthRatio(180),
                              decoration: const  BoxDecoration(
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
