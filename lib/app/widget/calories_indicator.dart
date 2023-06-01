import '../../theme/theme.dart';
import '../../utils/const/const_list.dart';
import '../app.dart';

class CaloriesIndicator extends StatelessWidget {
  const CaloriesIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      width: 100.w,
      child: SleekCircularSlider(
        innerWidget: (percentage) => centerDetails,
        appearance: CircularSliderAppearance(
          size: 170.r,
          angleRange: 360,
          customWidths: CustomSliderWidths(handlerSize: 0, progressBarWidth: 10.0),
          customColors: CustomSliderColors(
            hideShadow: true,
            trackColors: ConstList.listOfColor,
            progressBarColors: ConstList.listOfColor,
            dotColor: Colors.black,
            trackColor: AppColor.purple,
            shadowMaxOpacity: 0.9,
          ),
        ),
        initialValue: 10,
        onChange: (value) => () {},
      ),
    );
  }
}

Widget centerDetails = const Center(
    child: Text(
  '230kCal\nleft',
  style: TextStyles.p1Bold,
  textAlign: TextAlign.center,
));
