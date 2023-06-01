import '../../theme/theme.dart';
import '../app.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    required this.hintText,
    required this.icon,
    super.key,
  });

  final String hintText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 35.h,
        child: TextFormField(
          cursorColor: AppColor.blueLinear2,
          autofocus: false,
          textAlign: TextAlign.justify,
          decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColor.purpleLinear2),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColor.blueLinear1),
              ),
              hintText: hintText,
              contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(24.0),
              ),
              prefixIcon: Icon(
                icon,
                color: AppColor.blueLinear1,
              )),
        ),
      ),
    );
  }
}
