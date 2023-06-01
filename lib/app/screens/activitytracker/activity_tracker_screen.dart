import 'package:fitnestx/app/app.dart';
import 'package:fitnestx/core/provider/provider.dart';
import 'package:fitnestx/utils/const/const_list.dart';
import 'package:flutter/cupertino.dart';
import '../../../theme/theme.dart';

class ActivityTrackerScreen extends StatelessWidget {
  const ActivityTrackerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ActivityTrackerProcider>(context);
    return Scaffold(
      backgroundColor: provider.switchTheme ? AppColor.black : AppColor.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5).r,
          child: Column(
            children: [
              CustomAppbar(
                  leadingIcon: const Icon(CupertinoIcons.left_chevron),
                  appbarTitle: 'Activity Tracker ',
                  onPressed: () => _closeScreen(provider, context)),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0, right: 4.0).r,
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColor.lightBlueBG,
                            border: Border.all(color: AppColor.lightBlueBG),
                            borderRadius: BorderRadius.circular(24.0).w,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0, right: 8.0).r,
                                child: Row(
                                  children: [
                                    Text('Today Target', style: TextStyles.h2Bold.copyWith(color: AppColor.black)),
                                    const Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0).r,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10.0).w,
                                          gradient: const LinearGradient(colors: [
                                            AppColor.blueLinear1,
                                            AppColor.blueLinear2,
                                          ]),
                                        ),
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.add,
                                            color: AppColor.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10.0, left: 10.0).r,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: const [
                                    TargetWidget(title: '8L', subTitle: 'Water Intake', imgSrc: 'assets/images/glass 1.svg'),
                                    TargetWidget(title: '2400', subTitle: 'Foot Steps', imgSrc: 'assets/images/boots 1.svg'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0).r,
                        child: Row(
                          children: [
                            const Text(
                              'Activity Progress',
                              style: TextStyles.h2Bold,
                            ),
                            const Spacer(),
                            CheckViewMoreButton(title: 'Weekly', onPressed: () {}),
                          ],
                        ),
                      ),
                      SvgPicture.asset('assets/images/ActivityGraph.svg'),
                      TitleWithViewMore(provider: provider, title: 'Latest Activity'),
                      Consumer<ActivityTrackerProcider>(
                        builder: (context, value, child) {
                          return ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: value.isShowMore ? 6 : 2,
                            itemBuilder: (context, index) {
                              return ListTile(
                                leading: SvgPicture.asset('assets/images/Latest-Pic$index.svg'),
                                trailing: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.keyboard_arrow_right_outlined, color: AppColor.purple),
                                ),
                                title: Text(latestActivityTitle[index]),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      latestAcitivitySubtitle[index],
                                      style: TextStyles.p3Normal,
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
            ],
          ),
        ),
      ),
    );
  }

  void _closeScreen(ActivityTrackerProcider provider, BuildContext context) {
    provider.showMore(false);
    Navigator.pop(context);
  }
}
