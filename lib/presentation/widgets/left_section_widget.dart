import 'package:assessment_test_option_two/business_logic/store_details_cubit.dart';
import 'package:assessment_test_option_two/data/models/store_model.dart';
import 'package:flutter/material.dart';

Widget leftSectionItemBuilder(index, Categories model, currentIndex, context) => InkWell(
  onTap: (){
    StoreDetailsCubit.get(context).changeCurrentIndex(index);
  },
      child: Container(
        color: currentIndex == index ? Colors.grey[100] : Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Column(children: [
            const Image(
              image: AssetImage(
                'assets/images/chicken_burger1.png',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                model.slug!,
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
