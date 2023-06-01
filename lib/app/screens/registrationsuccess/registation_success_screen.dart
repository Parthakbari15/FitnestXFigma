import '../../../core/provider/provider.dart';
import '../../../theme/theme.dart';
import '../../app.dart';

class RegistattionSuccessScreen extends StatelessWidget {
  const RegistattionSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0).r,
            child: Column(
              children: [
                const Spacer(),
                Image.asset('assets/images/welcomeonsuccess.png'),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0, bottom: 10.0).r,
                  child: const Text(
                    'Welcome Stefani',
                    style: TextStyles.h1UltraBold,
                    textAlign: TextAlign.center,
                  ),
                ),
                Text(
                  'You are all set now,let\'s reach your\ngoals together with us ',
                  style: TextStyles.h3Normal.copyWith(color: AppColor.gray),
                  textAlign: TextAlign.center,
                ),
                const Spacer(),
                CustomSubmitButton(onPressed: () => Get.offAll(const MainScreen()), title: 'Go To Home'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
