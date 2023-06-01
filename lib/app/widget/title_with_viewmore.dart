import '../../core/provider/provider.dart';
import '../../theme/theme.dart';
import '../app.dart';

class TitleWithViewMore extends StatelessWidget {
  const TitleWithViewMore({
    super.key,
    required this.title,
    required this.provider,
  });

  final ActivityTrackerProcider provider;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyles.h2Bold,
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            provider.showMore(true);
          },
          child: Text(
            'See more',
            style: TextStyles.h3Bold.copyWith(color: AppColor.gray),
          ),
        ),
      ],
    );
  }
}
