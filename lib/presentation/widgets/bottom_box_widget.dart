import 'package:flutter/material.dart';

import '../../shared/constants/colors.dart';

Widget bottomBoxWidget(height) => Container(
      height: height * 0.1, // height of your bottom bar
      color: Colors.white, // color of your bottom bar
      child: Padding(
        padding:
            const EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 20),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              10.0,
            ),
            color: AppColors.appOrange,
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 7, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '1 item | QAR 12.00',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'From McDonald’s',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Text(
                  'View Cart',
                  style: TextStyle(
                    color: AppColors.appWight,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
