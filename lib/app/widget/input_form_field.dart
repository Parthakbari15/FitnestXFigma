import 'package:fitnestx/core/provider/provider.dart';
import 'package:fitnestx/theme/app_color.dart';
import '../screens/screens.dart';

class InputFormField extends StatelessWidget {
  const InputFormField({
    required this.hintText,
    required this.icon,
    required this.obscureText,
    required this.visibilityIcon,
    required this.textInputType,
    required this.maxLength,
    super.key,
  });

  final String hintText;
  final Icon icon;
  final bool obscureText;
  final bool visibilityIcon;
  final TextInputType textInputType;
  final int maxLength;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, bottom: 5.0).r,
      child: TextFormField(
        cursorColor: AppColor.blueLinear1,
        keyboardType: textInputType,
        maxLength: maxLength,
        decoration: InputDecoration(
          border: InputBorder.none,
          counterText: '',
          filled: true,
          fillColor: AppColor.white,
          hintText: hintText,
          prefixIcon: icon,
          suffixIcon: Consumer<SignupScreenProvider>(
            builder: (context, value, child) {
              return Visibility(
                visible: visibilityIcon,
                child: IconButton(
                    onPressed: () => value.changePasswordVisibility(),
                    icon: (value.isVisible)
                        ? const Icon(
                            Icons.visibility_off,
                            color: AppColor.blueLinear1,
                          )
                        : const Icon(
                            Icons.visibility,
                            color: AppColor.blueLinear1,
                          )),
              );
            },
          ),
        ),
        obscureText: visibilityIcon ? Provider.of<SignupScreenProvider>(context).isVisible : obscureText,
      ),
    );
  }
}
