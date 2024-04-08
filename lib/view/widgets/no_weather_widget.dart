import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoWeatherWidget extends StatelessWidget {
  const NoWeatherWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
              'There is no weather 🥺\nStart searching now 🔍',
              style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
