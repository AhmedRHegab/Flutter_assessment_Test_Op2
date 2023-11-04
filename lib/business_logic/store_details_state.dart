part of 'store_details_cubit.dart';

@immutable
abstract class StoreDetailsState {}

class StoreDetailsInitial extends StoreDetailsState {}

class GetStoreDetailsLoading extends StoreDetailsState {}

class GetStoreDetailsSuccess extends StoreDetailsState {}

class GetStoreDetailsError extends StoreDetailsState {
  final String error;
  GetStoreDetailsError(this.error);
}

class ChangeIndexState extends StoreDetailsState {}

