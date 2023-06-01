import 'package:fitnestx/app/app.dart';
import 'package:fitnestx/core/provider/provider.dart';
import 'package:fitnestx/theme/app_color.dart';
import 'package:fitnestx/utils/const/const_list.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  static final controller = PersistentTabController(initialIndex: 1);

  @override
  Widget build(BuildContext context) {
    return Consumer<ActivityTrackerProcider>(
      builder: (context, value, child) {
        return PersistentTabView(
          context,
          floatingActionButton: const Text(''),
          screens: ConstList.buildScreen,
          items: ConstList.bottomNavbarItems,
          backgroundColor: value.switchTheme ? AppColor.black : AppColor.white,
          navBarStyle: NavBarStyle.style15,
        );
      },
    );
  }
}
