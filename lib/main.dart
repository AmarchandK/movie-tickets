import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_tickets/constants/controller_int.dart';
import 'package:movie_tickets/constants/styles.dart';
import 'package:movie_tickets/view/login/auth_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        onInit: () => onInit(),
        debugShowCheckedModeBanner: false,
        theme: Theme.of(context).copyWith(
          iconTheme: const IconThemeData(color: wColor),
          scaffoldBackgroundColor: Colors.black,
          colorScheme: Theme.of(context).colorScheme.copyWith(
                primary: yColor,
              ),
        ),
        home: const Authentication());
  }
}
