import 'package:fitnestx/app/app.dart';
import 'package:flutter/cupertino.dart';
import '../../../core/provider/provider.dart';
import '../../../theme/theme.dart';

class WorkoutTrackerScreen extends StatelessWidget {
  const WorkoutTrackerScreen({Key? key}) : super(key: key);
  static final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blueLinear2,
      body: SafeArea(
        child: Column(
          children: [
            CustomAppbar(
                leadingIcon: const Icon(
                  CupertinoIcons.left_chevron,
                ),
                appbarTitle: 'Workout Tracker',
                onPressed: () {}),
            SvgPicture.asset('assets/images/WorkoutTrackerGraph.svg'),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 25.0).w,
                child: Consumer<ActivityTrackerProcider>(
                  builder: (context, value, child) {
                    return Container(
                      decoration: BoxDecoration(
                          color: value.switchTheme ? AppColor.black : AppColor.white,
                          borderRadius:
                              const BorderRadius.only(topRight: Radius.circular(24.0), topLeft: Radius.circular(24.0)).w),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0).r,
                            child: Container(
                              height: 3.h,
                              width: 80.w,
                              decoration: const BoxDecoration(color: AppColor.blueLinear1),
                            ),
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              controller: _scrollController,
                              physics: const BouncingScrollPhysics(),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20.0).w,
                                    child: LeadingTitleAndButton(
                                        leadingTitle: 'Daily Workout Schedule',
                                        btnTitle: 'Check',
                                        onPressed: () {
                                          _scrollController.animateTo(
                                            420.0,
                                            duration: const Duration(milliseconds: 500),
                                            curve: Curves.easeInOut,
                                          );
                                        }),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0, left: 15.0, right: 15.0).r,
                                    child: Row(
                                      children: [
                                        const Text(
                                          'Upcoming Workout',
                                          style: TextStyles.h2Bold,
                                        ),
                                        const Spacer(),
                                        GestureDetector(
                                          onTap: () {},
                                          child: Text(
                                            'See more',
                                            style: TextStyles.h3Bold.copyWith(color: AppColor.gray),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const WorkoutTrackerListView(),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0, top: 8.0).r,
                                    child: const Text(
                                      'What Do You Want to Train',
                                      style: TextStyles.h2Bold,
                                    ),
                                  ),
                                  const TrainingListOfWorkoutTracker()
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
