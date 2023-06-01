import '../../theme/theme.dart';
import '../../utils/const/const_list.dart';
import '../app.dart';

class TrainingListOfWorkoutTracker extends StatelessWidget {
  const TrainingListOfWorkoutTracker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: ConstList.workOutlist.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(10.0).w,
          child: Container(
            decoration: BoxDecoration(
              color: AppColor.lightBlueBG,
              borderRadius: BorderRadius.circular(18.0).w,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10.0).r,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ConstList.workOutlist[index],
                          style: TextStyles.h3Bold.copyWith(color: AppColor.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0).r,
                          child: Text(
                            ConstList.caloriesBurnList[index],
                            style: TextStyles.h3Normal.copyWith(color: AppColor.gray),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0).r,
                          child: Container(
                            height: 30.h,
                            width: 135.w,
                            decoration: BoxDecoration(
                              color: AppColor.white,
                              borderRadius: BorderRadius.circular(24.0).w,
                            ),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                onSurface: Colors.transparent,
                                shadowColor: Colors.transparent,
                              ),
                              onPressed: () {},
                              child: Text(
                                'View More',
                                style: TextStyles.h3Normal.copyWith(color: AppColor.blueLinear1),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      SizedBox(
                        width: 70.w,
                        child: SvgPicture.asset('assets/images/WorkOutTrackerVector$index.svg'),
                      )
                    ],
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
