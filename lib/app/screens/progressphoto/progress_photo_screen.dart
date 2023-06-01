import 'package:fitnestx/app/app.dart';
import 'package:fitnestx/core/provider/provider.dart';
import 'package:flutter/cupertino.dart';
import '../../../theme/theme.dart';

class ProgressPhotoScreen extends StatelessWidget {
  const ProgressPhotoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final provider = Provider.of<ActivityTrackerProcider>(context);
    return Scaffold(
      backgroundColor: provider.switchTheme ? AppColor.black : AppColor.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0).r,
          child: Column(
            children: [
              CustomAppbar(leadingIcon: const Icon(CupertinoIcons.left_chevron), appbarTitle: 'Progress Photo', onPressed: () {}),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 8.0, bottom: 8.0).r,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0).w,
                            color: AppColor.lightPink,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0).r,
                            child: Row(
                              children: [
                                CircleAvatar(
                                  maxRadius: 40.0.w,
                                  backgroundColor: AppColor.white,
                                  child: Image.asset('assets/images/calendar.png'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0).r,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Reminder',
                                        style: TextStyles.h2Normal.copyWith(color: AppColor.red),
                                      ),
                                      SizedBox(
                                        height: 20.h,
                                        width: 210.w,
                                        child: Marquee(
                                          text: 'This is just an reminder for next  Photos',
                                          style: TextStyles.h2Normal.copyWith(color: AppColor.red),
                                          blankSpace: 10.0,
                                          accelerationCurve: Curves.linear,
                                          scrollAxis: Axis.horizontal,
                                        ),
                                      ),
                                      Text(
                                        'Next Photos  Fall on\nJuly 08',
                                        style: TextStyles.h3Normal.copyWith(color: AppColor.black),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 8.0, bottom: 8.0).r,
                        child: Container(
                          decoration: BoxDecoration(color: AppColor.lightBlueBG, borderRadius: BorderRadius.circular(15.0).w),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0).r,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0, top: 8.0).r,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                            text: 'Track Your Progress Each \nMonth With ',
                                            style: TextStyles.p1Normal.copyWith(color: AppColor.black),
                                            children: [
                                              TextSpan(
                                                text: 'Hello',
                                                style: TextStyles.p1Normal.copyWith(color: AppColor.blueLinear1),
                                              ),
                                            ]),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20.0, bottom: 10.0).r,
                                        child: Container(
                                          width: 138.w,
                                          height: 35.h,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(24.0).w,
                                            gradient: const LinearGradient(colors: [AppColor.blueLinear1, AppColor.blueLinear2]),
                                          ),
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors.transparent,
                                              onSurface: Colors.transparent,
                                              shadowColor: Colors.transparent,
                                            ),
                                            child: const Text(
                                              'Learn More',
                                              style: TextStyles.h3Normal,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SvgPicture.asset('assets/images/photocalendar.svg'),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 8.0, bottom: 8.0).r,
                        child: Container(
                          decoration: BoxDecoration(color: AppColor.lightBlueBG, borderRadius: BorderRadius.circular(15.0).w),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0).r,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 12.0).r,
                                  child: Text(
                                    'Compare My Photo',
                                    style: TextStyles.p1Bold.copyWith(color: AppColor.black),
                                  ),
                                ),
                                const Spacer(),
                                CheckViewMoreButton(title: 'Compare', onPressed: () => Get.to(const CompareScreen()))
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 10.0).r,
                        child: Row(
                          children: [
                            const Text(
                              'Gallery',
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
                      const GalleryListView(date: '2 June'),
                      const GalleryListView(date: '5 May'),
                    ],
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
