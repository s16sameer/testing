import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:testing/main.dart';
import 'package:testing/modules/add_customer/ui/widgets/select_customer_type_widget.dart';
import 'package:testing/modules/home/bloc/home_bloc.dart';
import 'package:testing/modules/home/models/customer_info_model.dart';
import 'package:testing/utils/enums/customer_type_enums.dart';

part 'add_customer_event.dart';
part 'add_customer_state.dart';

class AddCustomerBloc extends Bloc<AddCustomerEvent, AddCustomerState> {
  final TextEditingController nameTextEditingController = TextEditingController();
  final TextEditingController phoneTextEditingController = TextEditingController();
  CustomerTypeEnums? character = CustomerTypeEnums.CustomerType1;
  String? selectedCustomerStatus;
  final List<String> customerStatusList = [
    'Active',
    'Bloc',
  ];

  AddCustomerBloc() : super(AddCustomerInitial()) {
    on<AddCustomerEvent>((event, emit) {});
    on<AddCustomerEventAddButtonTap>((event, emit) {
      HomeBloc homeBloc = getIt.get<HomeBloc>();
      homeBloc.customerInfoList.add(CustomerInfoModel(
          name: nameTextEditingController.text.trim(),
          contactNumber: phoneTextEditingController.text.trim(),
          customerStatus: selectedCustomerStatus,
          customerTypeId: character?.id));
      homeBloc.add(HomeScreenEventSubmitNewCustomer());
      emit(CustomerIsAdded());
    });
  }
}
