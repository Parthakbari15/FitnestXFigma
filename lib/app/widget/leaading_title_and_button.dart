import 'package:fitnestx/app/app.dart';
import '../../theme/theme.dart';

class LeadingTitleAndButton extends StatelessWidget {
  const LeadingTitleAndButton({
    required this.leadingTitle,
    required this.btnTitle,
    required this.onPressed,
    super.key,
  });

  final String leadingTitle;
  final String btnTitle;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 15.0).r,
      child: Container(
        decoration: BoxDecoration(
          // color: AppColor.lightBlueBG,
          borderRadius: BorderRadius.circular(24.0).w,
          border: Border.all(color: AppColor.lightBlueBG),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0).r,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0).r,
                child: Text(
                  leadingTitle,
                  style: TextStyles.p1Normal,
                ),
              ),
              const Spacer(),
              CheckViewMoreButton(
                title: btnTitle,
                onPressed: onPressed,
              )
            ],
          ),
        ),
      ),
    );
  }
}
