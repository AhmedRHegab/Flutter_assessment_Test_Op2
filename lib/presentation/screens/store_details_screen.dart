import 'package:assessment_test_option_two/business_logic/store_details_cubit.dart';
import 'package:assessment_test_option_two/data/models/store_model.dart';
import 'package:assessment_test_option_two/shared/helpers/adaptive_indicator.dart';
import 'package:assessment_test_option_two/shared/constants/colors.dart';
import 'package:assessment_test_option_two/shared/helpers/components.dart';
import 'package:assessment_test_option_two/shared/helpers/helpers.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/bottom_box_widget.dart';
import '../widgets/left_section_widget.dart';
import '../widgets/reight_section_widget.dart';

class StoreDetailsScreen extends StatefulWidget {
  const StoreDetailsScreen({Key? key}) : super(key: key);

  @override
  State<StoreDetailsScreen> createState() => _StoreDetailsScreenState();
}

class _StoreDetailsScreenState extends State<StoreDetailsScreen> {
  int storeId = 1;
  double latitude = 25.3185782;
  double longitude = 51.5003526;

  @override
  void initState() {
    super.initState();

    StoreDetailsCubit.get(context).getStoreDetails(
      storeId: storeId,
      latitude: latitude,
      longitude: longitude,
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return BlocConsumer<StoreDetailsCubit, StoreDetailsState>(
      listener: (context, state) {
        if (state is GetStoreDetailsError) {
          showToast(text: state.error, state: ToastStates.ERROR);
        }
      },
      builder: (context, state) {
        var cubit = StoreDetailsCubit.get(context);
        return Scaffold(
          backgroundColor: AppColors.appBackgroundColor,
          body: ConditionalBuilder(
            condition: cubit.storeModel != null,
            builder: (BuildContext context) =>
                storeDetailsBody(height, cubit.storeModel!, cubit.currentIndex),
            fallback: (BuildContext context) => Center(
              child: AdaptiveIndicator(
                os: getOS(),
              ),
            ),
          ),
        );
      },
    );
  }
}


sliverAppBarTitle() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      SvgPicture.asset('assets/icons/back_icon2.svg',
          semanticsLabel: 'back_icon'),
      Row(
        children: [
          SvgPicture.asset('assets/icons/search_icon.svg',
              semanticsLabel: 'search_icon'),
          const SizedBox(
            width: 10,
          ),
          SvgPicture.asset(
            'assets/icons/action_icon.svg',
            semanticsLabel: 'action_icon',
          ),
        ],
      ),
    ],
  );
}

storeDetailsBody(height, StoreModel model, currentIndex) {
  return Column(
    children: [
      Expanded(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: sliverAppBarTitle(),
              pinned: true,
              backgroundColor: AppColors.appOrange,
              expandedHeight: height * 0.33,
              flexibleSpace: const FlexibleSpaceBar(
                background:
                    Image(image: AssetImage('assets/images/header.png')),
              ),
              bottom: buildPreferredSizeWidget(model),
            ),
            SliverToBoxAdapter(
              child: screenBody(height, model, currentIndex),
            ),
          ],
        ),
      ),
      bottomBoxWidget(height),
    ],
  );
}

screenBody(height, StoreModel model, currentIndex) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        leftSection(height, model, currentIndex),
        const SizedBox(
          width: 3,
        ),
        rightSection(height, model, currentIndex)
      ],
    ),
  );
}

leftSection(height, StoreModel model, currentIndex) {
  return Expanded(
    flex: 1,
    child: SizedBox(
      height: height * 0.65,
      child: ListView.builder(
        padding: const EdgeInsets.only(top: 3),
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => leftSectionItemBuilder(
            index, model.categories![index], currentIndex, context),
        itemCount: model.categories!.length,
      ),
    ),
  );
}

rightSection(height, StoreModel model, currentIndex) {
  return Expanded(
    flex: 3,
    child: SizedBox(
      height: height * 0.65,
      child: ListView.builder(
        padding: const EdgeInsets.only(top: 3),
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => rightSectionItemBuilder(
            model.categories![currentIndex].category![index]),
        itemCount: model.categories![currentIndex].category!.length,
      ),
    ),
  );
}
