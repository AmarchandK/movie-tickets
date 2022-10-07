import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_tickets/constants/sizes.dart';
import 'package:movie_tickets/constants/styles.dart';
import 'package:movie_tickets/controller/loginpage_controller.dart';
import 'package:movie_tickets/view/login/otp_screen.dart';
import 'package:movie_tickets/view/login/widgets/button.dart';
import 'package:movie_tickets/view/login/widgets/login.dart';
import 'package:sign_in_button/sign_in_button.dart';
import 'widgets/create_acc.dart';

class Authentication extends GetView<LoginPageController> {
  const Authentication({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            color: yColor,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipPath(
              clipper: _BagroundClipper(),
              child: Container(
                height: size.height / 1.2,
                width: size.width,
                decoration: const BoxDecoration(color: bColor),
              ),
            ),
          ),
          Container(
            color: Colors.transparent,
            height: size.height,
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    h20,
                    Image(
                      image: const AssetImage('assets/projector.png'),
                      height: size.height / 3,
                      width: size.height / 3,
                    ),
                    h20,
                    Obx(() => controller.isLogin.value
                        ? const Login()
                        : const CreateUser()),
                    SignInButton(
                      Buttons.googleDark,
                      onPressed: () {},
                    ),
                    h10,
                    SignInButton(Buttons.facebookNew, onPressed: () {}),
                    h20,
                    h20,
                    h20
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Obx(
              () => controller.isLogin.value
                  ? OnTapButton(
                      text: "LogIn",
                      onTap: () {
                        Get.to(() => OTPscreen());
                      },
                    )
                  : OnTapButton(
                      text: "Create User",
                      onTap: () {
                        Get.to(() => OTPscreen());
                      },
                    ),
            ),
          )
        ],
      ),
    );
  }
}

class _BagroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(size.width, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
