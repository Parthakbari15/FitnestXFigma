import 'package:fitnestx/app/app.dart';
import 'package:flutter/cupertino.dart';
import '../../../core/provider/provider.dart';
import '../../../theme/theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ActivityTrackerProcider>(context);
    return Scaffold(
      backgroundColor: provider.switchTheme ? AppColor.black : AppColor.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: Column(
            children: [
              CustomAppbar(leadingIcon: const Icon(CupertinoIcons.left_chevron), appbarTitle: 'Profile', onPressed: () {}),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          maxRadius: 30,
                          child: Image.asset('assets/images/exc2.png'),
                        ),
                        title: const Text(
                          'Stefani Wong',
                          style: TextStyles.h2Bold,
                        ),
                        subtitle: const Text(
                          'Lose a Fat Program',
                          style: TextStyles.h3Normal,
                        ),
                        trailing: Container(
                          width: 80.w,
                          height: 30.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24.0).w,
                            gradient: const LinearGradient(colors: [AppColor.blueLinear1, AppColor.blueLinear2]),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                builder: (context) {
                                  return Padding(
                                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                                    child: Container(
                                      height: 350.h,
                                      decoration: const BoxDecoration(
                                          // color: AppColor.lightBlueBG,
                                          ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0).w,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            CircleAvatar(
                                              radius: 50,
                                              child: Image.asset('assets/images/profilepic.png', fit: BoxFit.fill),
                                            ),
                                            const CustomTextFormField(icon: Icons.person_outline, hintText: 'Enter Name...'),
                                            const CustomTextFormField(icon: Icons.subtitles, hintText: 'Enter Subtitle..'),
                                            CustomSubmitButton(onPressed: () {}, title: 'Update'),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              onSurface: Colors.transparent,
                              shadowColor: Colors.transparent,
                            ),
                            child: const Text(
                              'Edit',
                              style: TextStyles.h3Normal,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  '180cm',
                                  style: TextStyles.h1Normal.copyWith(color: AppColor.blueLinear2),
                                ),
                                Text(
                                  'Height',
                                  style: TextStyles.h2Normal.copyWith(color: AppColor.gray),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  '65kg',
                                  style: TextStyles.h1Normal.copyWith(color: AppColor.blueLinear2),
                                ),
                                Text(
                                  'Weight',
                                  style: TextStyles.h2Normal.copyWith(color: AppColor.gray),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  '22yo',
                                  style: TextStyles.h1Normal.copyWith(color: AppColor.blueLinear2),
                                ),
                                Text(
                                  'Age',
                                  style: TextStyles.h2Normal.copyWith(color: AppColor.gray),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0).r,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: Text(
                                'Account',
                                style: TextStyles.h2Bold,
                              ),
                            ),
                            ProfileListTile(
                              title: 'Personal Data',
                              icon: Icons.person_outline,
                              trailingWidget: IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.right_chevron)),
                            ),
                            ProfileListTile(
                              title: 'Achievement',
                              icon: Icons.message,
                              trailingWidget: IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.right_chevron)),
                            ),
                            ProfileListTile(
                              title: 'Activity History',
                              icon: Icons.history,
                              trailingWidget: IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.right_chevron)),
                            ),
                            ProfileListTile(
                              title: 'Workout Progress ',
                              icon: Icons.bar_chart,
                              trailingWidget: IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.right_chevron)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0).r,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: Text(
                                'Dark Mode',
                                style: TextStyles.h2Bold,
                              ),
                            ),
                            ProfileListTile(
                              title: 'Switch Theme',
                              icon: Icons.person_outline,
                              trailingWidget: SwitcherButton(
                                offColor: AppColor.blueLinear1,
                                onColor: AppColor.purpleLinear2,
                                value: false,
                                onChange: (value) {
                                  provider.onSwitchTheme(value);
                                  Vibration.vibrate(duration: 1000);
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10.0, top: 20.0).r,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      'Other',
                                      style: TextStyles.h2Bold,
                                    ),
                                  ),
                                  ProfileListTile(
                                    title: 'Contact Us',
                                    icon: Icons.help,
                                    trailingWidget: IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.right_chevron)),
                                  ),
                                  ProfileListTile(
                                    title: 'Privacy Policy',
                                    icon: Icons.privacy_tip,
                                    trailingWidget: IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.right_chevron)),
                                  ),
                                  ProfileListTile(
                                    title: 'Settings',
                                    icon: Icons.settings,
                                    trailingWidget: IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.right_chevron)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
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
