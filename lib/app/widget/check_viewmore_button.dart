import '../../theme/theme.dart';
import '../app.dart';

class CheckViewMoreButton extends StatelessWidget {
  const CheckViewMoreButton({
    required this.title,
    required this.onPressed,
    super.key,
  });

  final String title;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.h,
      width: 120.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.0),
        gradient: const LinearGradient(colors: [
          AppColor.blueLinear1,
          AppColor.blueLinear2,
        ]),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.transparent,
          onSurface: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyles.h3Bold.copyWith(color: AppColor.white),
        ),
      ),
    );
  }
}
