import 'package:free_swingers/screens/complete_sign_up_page.dart';
import 'package:free_swingers/screens/home_page.dart';
import 'package:free_swingers/screens/sign_up_page.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String homePage = '/home-page';
  static const String signUpPage = '/sign-up-page';
  static const String completeSignUpPage = '/complete-sign-up-page';
  static const String loginPage = '/login-page';

  static String getHomepage() => '$homePage';
  static String getSignUpPage() => '$signUpPage';
  static String getCompleteSignUpPage() => '$completeSignUpPage';
  static String getLoginPage() => '$loginPage';

  static final routes = [
    GetPage(
      name: homePage,
      page: () {
        return HomePage();
      },
    ),
    GetPage(
      name: signUpPage,
      page: () {
        return const SignUpPage();
      },
      transition: Transition.fade,
    ),
    GetPage(
      name: completeSignUpPage,
      page: () {
        return const CompleteSignUpPage();
      },
      transition: Transition.fade,
    ),
  ];
}
