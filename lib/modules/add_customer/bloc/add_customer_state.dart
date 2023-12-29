part of 'add_customer_bloc.dart';

@immutable
abstract class AddCustomerState {}

class AddCustomerInitial extends AddCustomerState {}

class CustomerIsAdded extends AddCustomerState {}
