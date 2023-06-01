import '../../theme/theme.dart';
import '../app.dart';

class DetailsOnOnboardScreen extends StatelessWidget {
  const DetailsOnOnboardScreen(
      {Key? key,
      required this.imgSrc,
      required this.mainContent,
      required this.description})
      : super(key: key);
  final String imgSrc;
  final String mainContent;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          imgSrc,
          fit: BoxFit.fill,
          width: 375.w,
        ),
        Padding(
          padding: const EdgeInsets.only(
                  top: 20.0, left: 20.0, right: 20.0, bottom: 20.0)
              .r,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                mainContent,
                style: TextStyles.h1Bold.copyWith(fontFamily: 'Poppins'),
              ),
              SizedBox(height: 5.h),
              Text(
                description,
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColor.gray),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
