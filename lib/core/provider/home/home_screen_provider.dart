import '../../../app/app.dart';

class HomeScreenProvider extends ChangeNotifier {
  int tabIndex = 0;

  PageController pageController = PageController();

  void onTabChanged() {
    pageController.jumpToPage(tabIndex);
    notifyListeners();
  }
}
