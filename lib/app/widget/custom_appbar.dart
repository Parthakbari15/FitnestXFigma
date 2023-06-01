import '../../theme/theme.dart';
import '../app.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    required this.leadingIcon,
    required this.appbarTitle,
    required this.onPressed,
    super.key,
  });

  final String appbarTitle;
  final Widget leadingIcon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: onPressed, icon: leadingIcon),
        const Spacer(),
        Text(
          appbarTitle,
          style: TextStyles.h2Bold,
        ),
        const Spacer(),
        IconButton(
            onPressed: () => showDialog(
                  context: context,
                  builder: (context) => const AboutScreen(),
                ),
            icon: const Icon(Icons.info_outline))
      ],
    );
  }
}
