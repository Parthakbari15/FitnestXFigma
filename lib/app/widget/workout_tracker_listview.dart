import '../../theme/theme.dart';
import '../../utils/const/const_list.dart';
import '../app.dart';

class WorkoutTrackerListView extends StatelessWidget {
  const WorkoutTrackerListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 15.0).r,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: ConstList.workOutlist.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 5.0, bottom: 5.0).r,
            child: ListTile(
              leading: SvgPicture.asset('assets/images/Workout-Pic$index.svg'),
              trailing: SwitcherButton(
                offColor: AppColor.blueLinear1,
                onColor: AppColor.purpleLinear2,
                value: true,
                onChange: (value) {
                  Vibration.vibrate(duration: 2000);
                },
              ),
              title: Text(ConstList.workOutlist[index]),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ConstList.caloriesBurnList[index],
                    style: TextStyles.p3Normal,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
