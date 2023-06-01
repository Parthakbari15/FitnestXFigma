import '../../../app/app.dart';
import '../../../core/provider/provider.dart';
import '../../../theme/theme.dart';

class SignUpScreen3 extends StatelessWidget {
  const SignUpScreen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SignupScreenProvider>(context, listen: false);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 5.0).r,
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/signupBg.png'),
            )),
            child: Column(
              children: [
                Column(
                  children: [
                    const Text(
                      'What is your goal?',
                      style: TextStyles.h1UltraBold,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0).r,
                      child: Text(
                        'It will help us to choose a best\nprogram for you',
                        style: TextStyles.h3Normal.copyWith(
                          color: AppColor.gray,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0).r,
                    child: PageView(
                      physics: const BouncingScrollPhysics(),
                      controller: provider.pageController,
                      children: [
                        Image.asset('assets/images/Card-Goals-1.png'),
                        Image.asset('assets/images/Card-Goals-2.png'),
                        Image.asset('assets/images/Card-Goals-3.png'),
                      ],
                      onPageChanged: (int index) {
                        provider.pageIndex = index;
                        provider.onTabChanged();
                      },
                    ),
                  ),
                ),
                CustomSubmitButton(
                    onPressed: () {
                      if (provider.pageIndex < 2) {
                        provider.pageIndex++;
                        provider.onTabChanged();
                      } else {
                        Get.to(const LoginScreen());
                      }
                    },
                    title: 'Confirm')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
