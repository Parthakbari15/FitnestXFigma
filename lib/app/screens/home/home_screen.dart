import 'package:fitnestx/core/provider/provider.dart';
import 'package:fitnestx/utils/const/const_list.dart';
import '../../../theme/theme.dart';
import '../../app.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ActivityTrackerProcider>(context);
    return Scaffold(
      backgroundColor: provider.switchTheme ? AppColor.black : AppColor.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0).r,
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0).r,
                        child: Text(
                          'Welcome Back,',
                          style: TextStyles.h3Normal.copyWith(color: AppColor.gray),
                        ),
                      ),
                      const Text(
                        'Stefani Wong',
                        style: TextStyles.h2Bold,
                      ),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () => Get.to(const NotificationScreen()),
                      icon: const Icon(
                        Icons.notifications,
                        color: AppColor.blueLinear1,
                      ))
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  controller: _scrollController,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10).r,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 180.h,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/Banner.png'),
                            ),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 45.0, left: 40.0).r,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 5.0).r,
                                      child: Text(
                                        'BMI(Body Mass Index)',
                                        style: TextStyles.h2Bold.copyWith(color: AppColor.white),
                                      ),
                                    ),
                                    Text(
                                      'You have a normal  weight',
                                      style: TextStyles.h3Normal.copyWith(color: AppColor.white),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0).r,
                                      child: Container(
                                        height: 38.h,
                                        width: 130.w,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(24.0).r,
                                          gradient: const LinearGradient(colors: [
                                            AppColor.purpleLinear1,
                                            AppColor.purpleLinear2,
                                          ]),
                                        ),
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors.transparent,
                                            onSurface: Colors.transparent,
                                            shadowColor: Colors.transparent,
                                          ),
                                          onPressed: () {
                                            _scrollController.animateTo(
                                              530.0,
                                              duration: const Duration(milliseconds: 500),
                                              curve: Curves.easeInOut,
                                            );
                                          },
                                          child: Text(
                                            'View More',
                                            style: TextStyles.h3Bold.copyWith(color: AppColor.white),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        LeadingTitleAndButton(
                            onPressed: () {
                              provider.showMore(false);
                              Get.to(const ActivityTrackerScreen());
                            },
                            btnTitle: 'Check',
                            leadingTitle: 'Today Target'),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0, bottom: 8.0).r,
                          child: const Text(
                            'Activity Status',
                            style: TextStyles.h2Bold,
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 10.0).r,
                          child: const HeartbeatChart(),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, top: 30.0, right: 19.0).r,
                          child: SizedBox(
                            height: 531.h,
                            width: 500.w,
                            child: Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 35.w,
                                      height: 340.h,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(const Radius.circular(20).w),
                                        child: const RotatedBox(
                                          quarterTurns: -1,
                                          child: LinearProgressIndicator(
                                            backgroundColor: AppColor.white,
                                            color: AppColor.purpleLinear2,
                                            value: 1,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0).r,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Water Intake',
                                        style: TextStyles.h2Bold,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0).r,
                                        child: Text(
                                          '4 Liters',
                                          style: TextStyles.h1Bold.copyWith(color: AppColor.blueLinear1),
                                        ),
                                      ),
                                      Text(
                                        'Real time updates',
                                        style: TextStyles.h2Normal.copyWith(color: AppColor.gray),
                                      ),
                                      SizedBox(
                                        height: 440.h,
                                        width: 140.w,
                                        child: AnotherStepper(
                                          activeBarColor: AppColor.purple,
                                          activeIndex: 1,
                                          inActiveBarColor: AppColor.blueLinear1,
                                          stepperList: ConstList.stepperData,
                                          stepperDirection: Axis.vertical,
                                          iconWidth: 10,
                                          iconHeight: 10,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 8.0,
                                  ).r,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SleepAndCaloriesGraph(
                                        title: 'Sleep',
                                        subTitle: '8h 20m',
                                        widget: SizedBox(
                                          height: 50.h,
                                          width: 90.w,
                                          child: Image.asset('assets/images/Sleep-Graph.png'),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 140.0, bottom: 60.0).r,
                                        child: const SleepAndCaloriesGraph(
                                          title: 'Calories',
                                          subTitle: '760 kCal',
                                          widget: CaloriesIndicator(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        TitleWithViewMore(title: 'Latest Workout', provider: provider),
                        Consumer<ActivityTrackerProcider>(
                          builder: (context, value, child) {
                            return ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemCount: value.isShowMore ? 4 : 1,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  leading: SvgPicture.asset('assets/images/Workout-Pic$index.svg'),
                                  trailing: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.keyboard_arrow_right_outlined, color: AppColor.purple),
                                  ),
                                  title: Text(ConstList.workOutlist[index]),
                                  subtitle: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        ConstList.caloriesBurnList[index],
                                        style: TextStyles.p3Normal,
                                      ),
                                      const SizedBox(height: 4),
                                      LinearProgressIndicator(
                                        value: (index / 2),
                                        backgroundColor: AppColor.white,
                                        valueColor: const AlwaysStoppedAnimation<Color>(
                                          AppColor.purple,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
