import 'package:assessment_test_option_two/data/models/store_model.dart';
import 'package:assessment_test_option_two/shared/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../shared/helpers/text_helper.dart';

Widget rightSectionItemBuilder(Category model) => Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15, top: 10),
        child: Row(
          children: [
            const SizedBox(
              height: 90,
              width: 90,
              child: Image(
                image: AssetImage(
                  'assets/images/chicken_burger.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: buildTextChunks(model.slug!, 18),
                ),
                const Text(
                  'Chicken , Jallapino, Mayo',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 116,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      6.0,
                    ),
                    color: AppColors.appLightOrange,
                    border: Border.all(color: AppColors.appOrange),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 10, top: 7, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '12 QAR',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 7,
                              ),
                            ),
                            Text(
                              '10 QAR',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 12,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
