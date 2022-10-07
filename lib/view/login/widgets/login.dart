import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:movie_tickets/controller/loginpage_controller.dart';
import '../../../constants/sizes.dart';
import '../../../constants/styles.dart';
import 'text_form.dart';

class Login extends GetView<LoginPageController> {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LoginTextFormField(
          hintText: 'Username',
          length: 10,
          textEditingController: controller.usernameController,
          keyboardType: TextInputType.name,
        ),
        h20,
        LoginTextFormField(
          length: 6,
          hintText: 'Password',
          textEditingController: controller.passwordController,
          keyboardType: TextInputType.visiblePassword,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                onPressed: () {
                  controller.isLogin.value = false;
                },
                child: btext("Create Account")),
            TextButton(onPressed: () {}, child: btext("Forgot Password?"))
          ],
        ),
      ],
    );
  }
}
