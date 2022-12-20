import 'package:bank_keshavarzi/presentation/pages/forget_password_page/account_information_forget_password_page.dart';
import 'package:bank_keshavarzi/presentation/pages/forget_password_page/change_password_page.dart';
import 'package:bank_keshavarzi/presentation/pages/forget_password_page/otp_verification_forget_password_page.dart';
import 'package:bank_keshavarzi/presentation/pages/register_page/otp_verification_page.dart';
import 'package:get/get.dart';

import '../pages/first_page/first_page.dart';
import '../pages/login_page/login_page.dart';
import '../pages/register_page/account_information_register_page.dart';
import '../pages/register_page/password_page.dart';
import '../pages/services_without_account_page/services_without_account_page.dart';

class AppRoutes {
  static String loginPage = '/loginPage';
  static String firstPage = '/firstPage';
  static String accountInformationRegisterPage = '/accountInformationRegisterPage';
  static String accountInformationForgetPasswordPage = '/accountInformationForgetPasswordPage';
  static String otpVerificationPage = '/otpVerificationPage';
  static String otpVerificationForgetPasswordPage = '/otpVerificationForgetPasswordPage';
  static String passwordPage = '/passwordPage';
  static String changePasswordPage = '/changePasswordPage';
  static String servicesWithoutAccountPage = '/servicesWithoutAccountPage';

  static List<GetPage> pages = [
    GetPage(
      name: loginPage,
      page: () => LoginPage(),
    ),
    GetPage(
      name: firstPage,
      page: () => FirstPage(),
    ),
    GetPage(
      name: accountInformationRegisterPage,
      page: () => AccountInformationRegisterPage(),
    ),
    GetPage(
      name: otpVerificationPage,
      page: () => OtpVerificationPage(),
    ),
    GetPage(
      name: passwordPage,
      page: () => PasswordPage(),
    ),
    GetPage(
      name: accountInformationForgetPasswordPage,
      page: () => AccountInformationForgetPasswordPage(),
    ),
    GetPage(
      name: otpVerificationForgetPasswordPage,
      page: () => OtpVerificationForgetPasswordPage(),
    ),
    GetPage(
      name: changePasswordPage,
      page: () => ChangePasswordPage(),
    ),
    GetPage(
      name: servicesWithoutAccountPage,
      page: () => ServicesWithoutAccountPage(),
    ),
  ];
}
