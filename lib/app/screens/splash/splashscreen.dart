import 'dart:async';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../theme/theme.dart';
import '../screens.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () => Get.offAll(const WelcomeScreen()));
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [AppColor.blueLinear1, AppColor.blueLinear2]),
        ),
        child: Center(
          child: SvgPicture.asset('assets/images/FitnestXSplash.svg'),
        ),
      ),
    );
  }
}
