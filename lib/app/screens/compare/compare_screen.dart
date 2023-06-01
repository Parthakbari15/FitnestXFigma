import 'package:fitnestx/app/app.dart';
import 'package:flutter/cupertino.dart';
import '../../../core/provider/provider.dart';
import '../../../theme/theme.dart';

class CompareScreen extends StatelessWidget {
  const CompareScreen({Key? key}) : super(key: key);

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
              CustomAppbar(
                  leadingIcon: const Icon(CupertinoIcons.left_chevron),
                  appbarTitle: 'Comparison',
                  onPressed: () => Navigator.pop(context)),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        'Select Month 1 ',
                        style: TextStyles.h3Normal.copyWith(color: AppColor.gray),
                      ),
                      leading: const Icon(
                        Icons.calendar_month_outlined,
                        color: AppColor.blueLinear1,
                      ),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            CupertinoIcons.right_chevron,
                            color: AppColor.blueLinear1,
                          )),
                    ),
                    ListTile(
                      title: Text(
                        'Select Month 2 ',
                        style: TextStyles.h3Normal.copyWith(color: AppColor.gray),
                      ),
                      leading: const Icon(
                        Icons.calendar_month_outlined,
                        color: AppColor.blueLinear1,
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          CupertinoIcons.right_chevron,
                          color: AppColor.blueLinear1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              CustomSubmitButton(onPressed: () {}, title: 'Compare')
            ],
          ),
        ),
      ),
    );
  }
}
