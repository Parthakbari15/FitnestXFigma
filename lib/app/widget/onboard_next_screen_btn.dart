import '../app.dart';
import '../../core/provider/provider.dart';

class OnboardNextScreenBtn extends StatelessWidget {
  const OnboardNextScreenBtn({
    super.key,
    required this.provider,
    required this.icon,
    required this.onPressed,
  });

  final OnboardingScreenProvider provider;
  final IconData icon;
  final bool onPressed;

  @override
  Widget build(BuildContext context) {
    return Consumer<OnboardingScreenProvider>(builder: (BuildContext context, value, Widget? child) {
      return Align(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: const EdgeInsets.only(
            bottom: 40.0,
          ).r,
          child: GestureDetector(
            onTap: () {
              if (onPressed) {
                if (provider.pageIndex > 0) {
                  provider.pageIndex--;
                  provider.onTabChanged();
                }
              } else {
                if (provider.pageIndex < 3) {
                  provider.pageIndex++;
                  provider.onTabChanged();
                } else {
                  if (provider.pageIndex == 3) {
                    Get.to(const SignUpScreen());
                  }
                }
              }
            },
            child: CircleAvatar(
              radius: 25.0.r,
              child: Icon(icon),
            ),
          ),
        ),
      );
    });
  }
}
