import '../../../app/app.dart';

class SignupScreenProvider extends ChangeNotifier {
  bool rememberMe = false;
  bool isVisible = true;
  String newGenderValue = 'Male';
  int pageIndex = 0;
  DateTime? selectedDate;
  PageController pageController = PageController();

  void datePicker(BuildContext context) async {
    DateTime? pickerDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2323),
    );

    if (pickerDate != null) {
      selectedDate = pickerDate;
    }
    notifyListeners();
  }

  changePasswordVisibility() {
    isVisible = !isVisible;
    notifyListeners();
  }

  onRememberMeChanged(bool value) {
    rememberMe = value;
    notifyListeners();
  }

  void onTabChanged() {
    pageController.jumpToPage(pageIndex);
    notifyListeners();
  }
}
