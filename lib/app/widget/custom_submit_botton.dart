import 'package:fitnestx/app/app.dart';
import '../../theme/theme.dart';

class CustomSubmitButton extends StatelessWidget {
  const CustomSubmitButton({
    required this.onPressed,
    required this.title,
    super.key,
  });

  final void Function() onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Container(
        height: MediaQuery.of(context).size.width * 0.14,
        width: MediaQuery.of(context).size.width * 0.85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24.0),
          gradient: const LinearGradient(colors: [
            AppColor.blueLinear1,
            AppColor.blueLinear2,
          ]),
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.transparent,
            onSurface: Colors.transparent,
            shadowColor: Colors.transparent,
          ),
          onPressed: onPressed,
          child: Text(
            title,
            style: TextStyles.p1Bold.copyWith(fontFamily: 'Poppins'),
          ),
        ),
      ),
    );
  }
}
