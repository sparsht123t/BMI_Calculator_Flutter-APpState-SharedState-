import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'bmi_store.dart';
import 'screens/input_page.dart';

void main() => runApp(VxState(
    store: BMIStore(),
    interceptors: [LogInterceptor()],
    child: BMICalculator()));

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InputPage(),
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Color(0xFF0F0F1E),
      ),
    );
  }
}
