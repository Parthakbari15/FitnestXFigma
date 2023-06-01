import '../../theme/theme.dart';
import '../app.dart';

class SleepAndCaloriesGraph extends StatelessWidget {
  const SleepAndCaloriesGraph({
    required this.title,
    required this.subTitle,
    required this.widget,
    super.key,
  });

  final String title;
  final String subTitle;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyles.h2Bold),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0).r,
          child: Text(
            subTitle,
            style: TextStyles.h1Bold.copyWith(color: AppColor.blueLinear1),
          ),
        ),
        widget,
      ],
    );
  }
}
