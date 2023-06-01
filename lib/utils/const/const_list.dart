

import 'package:another_stepper/dto/stepper_data.dart';
import 'package:fitnestx/core/provider/provider.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import '../../app/app.dart';
import '../../theme/theme.dart';

class ConstList {
  static final List<Widget> buildScreen = [
    const HomeScreenPageView(),
    const WorkoutTrackerScreen(),
    const SearchScreen(),
    const ProgressPhotoScreen(),
    const ProfileScreen(),
  ];
  static final List<PersistentBottomNavBarItem> bottomNavbarItems = [
    PersistentBottomNavBarItem(
      icon: const Icon(
        Icons.home,
        color: AppColor.purple,
      ),
      inactiveIcon: const Icon(
        Icons.home,
        color: AppColor.gray,
      ),
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(
        Icons.bar_chart,
        color: AppColor.purple,
      ),
      inactiveIcon: const Icon(
        Icons.bar_chart,
        color: AppColor.gray,
      ),
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(
        Icons.search,
        color: AppColor.purple,
      ),
      inactiveIcon:  const Icon(
        Icons.search,
        color: AppColor.gray,
      ),
      activeColorPrimary: AppColor.blueLinear1,
     ),
    PersistentBottomNavBarItem(
      icon: const Icon(
        Icons.camera_alt_outlined,
        color: AppColor.purple,
      ),
      inactiveIcon: const Icon(
        Icons.camera_alt_outlined,
        color: AppColor.gray,
      ),
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(
        Icons.person_outline,
        color: AppColor.purple,
      ),
      inactiveIcon: const Icon(
        Icons.person_outline,
        color: AppColor.gray,
      ),
    ),
  ];

  static final workOutlist = [
    'Fullboady Workout',
    'Lowerbody Workout',
    'Ab Workout',
    'Chest Workout',
  ];

  static final List<double> progressValue = [
    0.5,
    0.7,
    0.4,
    0.9,
  ];

  static final caloriesBurnList = [
    '180 Caloried Burn | 20minutes',
    '170 Caloried Burn | 15minutes',
    '200 Caloried Burn | 30minutes',
    '150 Caloried Burn | 10minutes',
  ];

  static final listOfColor = [
    AppColor.blueLinear1,
    AppColor.purpleLinear2,
  ];

  static List<StepperData> stepperData = [
    StepperData(
        title: StepperText(
          "6am - 8am",
          textStyle: TextStyles.h3Normal.copyWith(color: AppColor.gray),
        ),
        subtitle: StepperText("600ml",
            textStyle: TextStyles.p1Normal.copyWith(color: AppColor.purple)),
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: AppColor.purple,
              borderRadius: BorderRadius.all(Radius.circular(30))),
        )),
    StepperData(
        title: StepperText(
          "9am - 11am",
          textStyle: TextStyles.h3Normal.copyWith(color: AppColor.gray),
        ),
        subtitle: StepperText("500ml",
            textStyle: TextStyles.p1Normal.copyWith(color: AppColor.purple)),
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: AppColor.purple,
              borderRadius: BorderRadius.all(Radius.circular(30))),
        )),
    StepperData(
        title: StepperText(
          "11am - 2pm ",
          textStyle: TextStyles.h3Normal.copyWith(color: AppColor.gray),
        ),
        subtitle: StepperText("1000ml",
            textStyle: TextStyles.p1Normal.copyWith(color: AppColor.purple)),
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: AppColor.purple,
              borderRadius: BorderRadius.all(Radius.circular(30))),
        )),
    StepperData(
        title: StepperText(
          "2pm - 4pm",
          textStyle: TextStyles.h3Normal.copyWith(color: AppColor.gray),
        ),
        subtitle: StepperText("700ml",
            textStyle: TextStyles.p1Normal.copyWith(color: AppColor.purple)),
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: AppColor.purple,
              borderRadius: BorderRadius.all(Radius.circular(30))),
        )),
    StepperData(
        title: StepperText(
          "4pm - now ",
          textStyle: TextStyles.h3Normal.copyWith(color: AppColor.gray),
        ),
        subtitle: StepperText("900ml",
            textStyle: TextStyles.p1Normal.copyWith(color: AppColor.purple)),
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: AppColor.purple,
              borderRadius: BorderRadius.all(Radius.circular(30))),
        )),
  ];

  static final List<int> initialData = [
    72,
    75,
    73,
    75,
    77,
    71,
    74,
    76,
    79,
    77,
    76,
    74,
    77,
    75,
    78,
    76,
    79,
  ];
}

final List<String> notificationTitle = [
  'Hey, it’s time for lunch',
  'Don’t miss your lowerbody workout',
  'Hey, let’s add some meals for your b..',
  'Congratulations, You have finished A..',
  'Hey, it’s time for lunch',
  'Ups, You have missed your Lowerbo...',
  'Hey, it’s time for lunch',
  'Don’t miss your lowerbody workout',
  'Hey, let’s add some meals for your b..',
  'Congratulations, You have finished A..',
  'Hey, it’s time for lunch',
  'Ups, You have missed your Lowerbo...',
];

final List<String> notificationTime = [
  'About 1 minutes ago',
  'About 3 hours ago',
  'About 3 hours ago',
  '29 May',
  '8 April',
  '3 April',
  'About 1 minutes ago',
  'About 3 hours ago',
  'About 3 hours ago',
  '29 May',
  '8 April',
  '3 April',
];

final List<String> latestActivityTitle = [
  'Drinking 300ml Water',
  'Eat Snack (Fitbar)',
  'Drinking 300ml Water',
  'Eat Snack (Fitbar)',
  'Drinking 300ml Water',
  'Eat Snack (Fitbar)',
];

final List<String> latestAcitivitySubtitle = [
  'About 3 minutes ago',
  'About 10 minutes ago',
  'About 3 minutes ago',
  'About 10 minutes ago',
  'About 3 minutes ago',
  'About 10 minutes ago',
];
