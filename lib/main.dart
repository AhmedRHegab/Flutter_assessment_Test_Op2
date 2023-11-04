import 'package:assessment_test_option_two/shared/network/remote/dio_helper.dart';
import 'package:flutter/material.dart';

import 'generated_routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DioHelper.init();
  runApp( AssessmentTest(GeneratedRoutes()));
}

class AssessmentTest extends StatelessWidget {
   final GeneratedRoutes router;
   const AssessmentTest(this.router, {super.key});

@override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: router.generateRoute,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}

