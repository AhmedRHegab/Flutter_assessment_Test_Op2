import 'package:assessment_test_option_two/shared/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveIndicator extends StatelessWidget
{
  String os;

  AdaptiveIndicator({super.key,
    required this.os,
  });

  @override
  Widget build(BuildContext context)
  {
    if(os == 'android') {
      return const CircularProgressIndicator(color: AppColors.appOrange,);
    }
    return const CupertinoActivityIndicator();
  }
}