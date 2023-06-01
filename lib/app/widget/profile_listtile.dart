import '../../theme/theme.dart';
import '../app.dart';

class ProfileListTile extends StatelessWidget {
  const ProfileListTile({
    required this.title,
    required this.icon,
    required this.trailingWidget,
    super.key,
  });

  final String title;
  final IconData icon;
  final Widget trailingWidget;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Icon(
          icon,
          color: AppColor.blueLinear1,
        ),
        title: Text(
          title,
          style: TextStyles.h3Normal.copyWith(color: AppColor.gray),
        ),
        trailing: trailingWidget);
  }
}
