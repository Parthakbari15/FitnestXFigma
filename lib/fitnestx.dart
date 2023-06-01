import 'package:fitnestx/core/provider/provider.dart';
import './app/app.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

class FitnestX extends StatelessWidget {
  const FitnestX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (context) => OnboardingScreenProvider(),
            ),
            ChangeNotifierProvider(
              create: (context) => SignupScreenProvider(),
            ),
            ChangeNotifierProvider(
              create: (context) => HomeScreenProvider(),
            ),
          ],
          child: Consumer<ActivityTrackerProcider>(
            builder: (context, value, child) {
              return GetMaterialApp(
                theme: value.switchTheme
                    ? FlexColorScheme.dark(scheme: FlexScheme.deepPurple).toTheme
                    : FlexColorScheme.light(scheme: FlexScheme.deepPurple).toTheme,
                home: const SplashScreen(),
                // home: const MainScreen(),
              );
            },
          ),
        );
      },
    );
  }
}
