part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class HomeScreenEventTapAddCustomerButton extends HomeEvent {}
class HomeScreenEventSubmitNewCustomer extends HomeEvent {}
