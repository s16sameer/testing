part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeStateAddCustomer extends HomeState {}

class HomeScreenStateCustomerAdded extends HomeState {}
