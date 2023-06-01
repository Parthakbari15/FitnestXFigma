import 'package:fitnestx/core/provider/provider.dart';
import '../../../theme/theme.dart';
import '../../widget/widget.dart';
import '../screens.dart';

// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';

class SignUpScreen2 extends StatelessWidget {
  const SignUpScreen2({Key? key}) : super(key: key);

  static final List<String> _genderOptions = [
    'Male',
    'Female',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.only(top: 5.0).r,
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/signupscreenvector1.png',
                      fit: BoxFit.fill,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0).r,
                      child: const Text(
                        'Let\'s complete your profile',
                        style: TextStyles.h1Bold,
                      ),
                    ),
                    Text(
                      'It will help us to know more about you!',
                      style: TextStyles.h3Normal.copyWith(color: AppColor.gray),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 30.0,
                        right: 30.0,
                        top: 10,
                      ).r,
                      child: Column(
                        children: [
                          DropdownButtonFormField(
                            dropdownColor: AppColor.blueLinear1,
                            borderRadius: BorderRadius.circular(24.0).r,
                            hint: const Text('Select You Gender'),
                            items: _genderOptions.map((gender) {
                              return DropdownMenuItem(
                                value: gender,
                                child: Text(gender),
                              );
                            }).toList(),
                            onChanged: (newValue) {},
                            decoration: const InputDecoration(
                              fillColor: AppColor.white,
                              filled: true,
                              prefixIcon: Icon(
                                Icons.person_outline,
                                color: AppColor.blueLinear1,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0, bottom: 5.0).r,
                            child: Consumer<SignupScreenProvider>(
                              builder: (context, value, child) {
                                return TextFormField(
                                  onTap: () => value.datePicker(context),
                                  readOnly: true,
                                  cursorColor: AppColor.blueLinear1,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    filled: true,
                                    fillColor: AppColor.white,
                                    hintText: (value.selectedDate == null)
                                        ? 'Select Birth Date'
                                        : DateFormat.yMd().format(value.selectedDate!),
                                    prefixIcon: const Icon(
                                      Icons.calendar_month_outlined,
                                      color: AppColor.blueLinear1,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 4.0.sp),
                            child: const HeightWeightInputField(
                                hintText: 'Your Weight',
                                imgSrc: 'assets/images/Button-Kg.svg',
                                icon: Icons.monitor_weight_outlined),
                          ),
                          const HeightWeightInputField(
                              hintText: 'Your Height', imgSrc: 'assets/images/Button-Cm.svg', icon: Icons.height),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0).r,
                      child: CustomSubmitButton(onPressed: () => Get.offAll(const SignUpScreen3()), title: 'Next'),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
