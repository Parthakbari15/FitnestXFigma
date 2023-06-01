import '../../theme/theme.dart';
import '../app.dart';

class CustomIconBtn extends StatelessWidget {
  const CustomIconBtn({
    required this.imgUrl,
    required this.onPressed,
    super.key,
  });

  final String imgUrl;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 40.h,
        width: 50.w,
        decoration: BoxDecoration(
          border: Border.all(color: AppColor.blueLinear1),
          borderRadius: BorderRadius.circular(12.0).r,
        ),
        child: SvgPicture.asset(imgUrl),
      ),
    );
  }
}
