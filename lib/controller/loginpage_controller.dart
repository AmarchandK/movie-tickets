import 'package:flutter/widgets.dart';
import 'package:get/state_manager.dart';

class LoginPageController extends GetxController {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController mobController = TextEditingController();
  final RxBool isvisible = false.obs;
   RxBool isLogin = true.obs;
  static GlobalKey<FormFieldState> loginFormKey = GlobalKey<FormFieldState>();
  static GlobalKey<FormFieldState> createFormKey = GlobalKey<FormFieldState>();
}
