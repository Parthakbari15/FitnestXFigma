import '../../theme/theme.dart';
import '../app.dart';

class TargetWidget extends StatelessWidget {
  const TargetWidget({
    required this.title,
    required this.subTitle,
    required this.imgSrc,
    super.key,
  });

  final String title;
  final String subTitle;
  final String imgSrc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.0.sp).r,
      child: Container(
        height: 65.h,
        width: 150.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24.0).w,
          color: AppColor.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0).r,
          child: Row(
            children: [
              SvgPicture.asset(imgSrc),
              Padding(
                padding: const EdgeInsets.only(left: 4.0).r,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyles.h2Bold.copyWith(color: AppColor.blueLinear2),
                    ),
                    Text(
                      subTitle,
                      style: TextStyles.h3Normal.copyWith(color: AppColor.gray),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
