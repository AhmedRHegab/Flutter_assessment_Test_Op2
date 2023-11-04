import 'package:assessment_test_option_two/business_logic/store_details_cubit.dart';
import 'package:assessment_test_option_two/data/repository/store_details_repository.dart';
import 'package:assessment_test_option_two/presentation/screens/store_details_screen.dart';
import 'package:assessment_test_option_two/shared/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'data/web_services/store_details_api.dart';

class GeneratedRoutes {
  late StoreDetailsRepository storeDetailsRepository;
  late StoreDetailsCubit storeDetailsCubit;

  GeneratedRoutes() {
    storeDetailsRepository = StoreDetailsRepository(StoreDetailsApi());
    storeDetailsCubit = StoreDetailsCubit(storeDetailsRepository);
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case storeDetailsScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) => storeDetailsCubit,
            child: const StoreDetailsScreen(),
          ),
        );
    }
    return null;
  }
}
