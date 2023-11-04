import 'package:assessment_test_option_two/data/models/store_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

buildPreferredSizeWidget(StoreModel model) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(110),
    child: Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            45.0,
          ),
          topRight: Radius.circular(
            45.0,
          ),
        ),
      ),
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      width: double.maxFinite,
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, top: 15, bottom: 10, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(
               model.store!.slug!,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 21,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                SvgPicture.asset(
                    'assets/icons/star.svg',
                    semanticsLabel: 'star',
                ),
                const SizedBox(
                  width: 8,
                ),
                 Text(
                  model.store!.countOfratings!,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  'Burgers, Sandwich, American',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset('assets/icons/time.svg',
                    semanticsLabel: 'time'),
                SvgPicture.asset('assets/icons/sort.svg',
                    semanticsLabel: 'sort'),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
