import 'package:fitnestx/fitnestx.dart';
import 'package:flutter/material.dart';
import 'core/provider/provider.dart';
import 'theme/theme.dart';

void main() {
  runApp(
    ChangeNotifierProvider<ActivityTrackerProcider>(create: (_) => ActivityTrackerProcider(), child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FitnestX',
      home: Builder(
        builder: (BuildContext context) {
          return WillPopScope(
            onWillPop: () => _onWillPop(context),
            child: const FitnestX(),
          );
        },
      ),
    );
  }

  Future<bool> _onWillPop(BuildContext context) async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            backgroundColor: AppColor.purpleLinear1,
            title: const Text('Are you sure?'),
            content: const Text('Do you want to exit the app?'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: const Text('No'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: const Text('Yes'),
              ),
            ],
          ),
        )) ??
        false;
  }
}
