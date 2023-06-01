import 'package:flutter/cupertino.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../core/provider/provider.dart';
import '../../../theme/theme.dart';
import '../../app.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<OnboardingScreenProvider>(context, listen: false);
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              physics: const BouncingScrollPhysics(),
              controller: provider.pageController,
              children: const [
                DetailsOnOnboardScreen(
                    imgSrc: 'assets/images/Onboard1.svg',
                    mainContent: 'Track  Your Goal',
                    description:
                        'Don\'t worry if you have trouble determining\nyour goals, We can help you determine your\ngoals and track your goals'),
                DetailsOnOnboardScreen(
                    imgSrc: 'assets/images/Onboard2.svg',
                    mainContent: 'Get Burn',
                    description:
                        'Let\'s keep burning, to achive yours goals, it\nhurts only temporarily, if you give up now\nyou will be in pain forever'),
                DetailsOnOnboardScreen(
                    imgSrc: 'assets/images/Onboard3.svg',
                    mainContent: 'Eat Well',
                    description:
                        'Let\'s start a healthy lifestyle with us,we\ncan determine your diet every day.healthy \neating is fun'),
                DetailsOnOnboardScreen(
                    imgSrc: 'assets/images/Onboard4.svg',
                    mainContent: 'Improve Sleep \nQuality',
                    description: 'Improve the quality of your sleep withus,\ngood quality sleep can bring a good mood  '),
              ],
              onPageChanged: (int index) {
                provider.pageIndex = index;
                provider.onTabChanged();
              },
            ),
          ),
          SmoothPageIndicator(
            controller: provider.pageController,
            count: 4,
            effect: const JumpingDotEffect(
              dotColor: AppColor.blueLinear1,
              activeDotColor: AppColor.purple,
              dotHeight: 12.0,
              dotWidth: 12.0,
              verticalOffset: 20,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OnboardNextScreenBtn(
                provider: provider,
                icon: CupertinoIcons.left_chevron,
                onPressed: true,
              ),
              OnboardNextScreenBtn(
                provider: provider,
                icon: CupertinoIcons.right_chevron,
                onPressed: false,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
