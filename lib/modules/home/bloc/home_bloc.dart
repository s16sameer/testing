import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:testing/main.dart';
import 'package:testing/modules/home/models/customer_info_model.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  List<CustomerInfoModel> customerInfoList = [];

  HomeBloc() : super(HomeInitial()) {
    decodeCustomerData();
    getIt.registerSingleton<HomeBloc>(this);
    on<HomeScreenEventTapAddCustomerButton>((event, emit) {
      emit(HomeStateAddCustomer());
    });
    on<HomeScreenEventSubmitNewCustomer>((event, emit) {
      emit(HomeScreenStateCustomerAdded());
    });
  }

  @override
  Future<void> close() {
    getIt.unregister<HomeBloc>();
    return super.close();
  }

  void decodeCustomerData() {
    customerInfoList = [
      {
        "assignedWaiterId": "5eb55e06b263bf00117e7266",
        "id": "5eb8f50661f37a0010e9f79b",
        "sectionId": "5eb7ec9761f37a0010e9f69e",
        "name": "Ground Floor",
        "order": 0,
        "sortOrder": 9,
        "tableName": "G15"
      },
      {
        "assignedWaiterId": "5eb55e06b263bf00117e7266",
        "id": "5eb8f50661f37a0010e9f79b",
        "sectionId": "5eb7ec9761f37a0010e9f69e",
        "name": "Ground Floor",
        "order": 0,
        "sortOrder": 10,
        "tableName": "G14"
      },
      {
        "assignedWaiterId": "5eb55e06b263bf00117e7266",
        "id": "5eb8f50661f37a0010e9f79b",
        "sectionId": "5eb7ec9761f37a0010e9f69e",
        "name": "Ground Floor",
        "order": 0,
        "sortOrder": 11,
        "tableName": "G16"
      },
      {
        "assignedWaiterId": "5eb55e06b263bf00117e7266",
        "id": "5eb8f50661f37a0010e9f79b",
        "sectionId": "5eb7ec9761f37a0010e9f69e",
        "name": "Ground Floor",
        "order": 0,
        "sortOrder": 13,
        "tableName": "G17"
      },
      {
        "assignedWaiterId": "5eb55e06b263bf00117e7266",
        "id": "5eb8f50661f37a0010e9f79b",
        "sectionId": "5eb7ec9761f37a0010e9f69e",
        "name": "Ground Floor",
        "order": 0,
        "sortOrder": 12,
        "tableName": "G5"
      },
      {
        "assignedWaiterId": "5eb55e06b263bf00117e7266",
        "id": "5eb8f53761f37a0010e9f79f",
        "sectionId": "5eb7ec9761f37a0010e9f69e",
        "name": "Ground Floor",
        "order": 0,
        "sortOrder": 1,
        "tableName": "MANJ"
      },
      {
        "assignedWaiterId": "5eb55e06b263bf00117e7266",
        "id": "5eb7ecbe61f37a0010e9f69f",
        "sectionId": "5eb7ec9761f37a0010e9f69e",
        "name": "Ground Floor",
        "order": 0,
        "sortOrder": 2,
        "tableName": "G3"
      },
      {
        "assignedWaiterId": "5eb55e06b263bf00117e7266",
        "id": "5eb8f4dd61f37a0010e9f795",
        "sectionId": "5eb7ec9761f37a0010e9f69e",
        "name": "Ground Floor",
        "order": 0,
        "sortOrder": 3,
        "tableName": "G4"
      },
      {
        "assignedWaiterId": "5eb55e06b263bf00117e7266",
        "id": "6482000506aea000115f937e",
        "sectionId": "64872216b3b56700115ea2b4",
        "name": "Section 1",
        "order": 1,
        "sortOrder": 4,
        "tableName": "T4"
      },
      {
        "assignedWaiterId": "5eb55e06b263bf00117e7266",
        "id": "5eb8f61d61f37a0010e9f7b3",
        "sectionId": "5eb8c92261f37a0010e9f6c7",
        "name": "Roof TOP",
        "order": 2,
        "sortOrder": 5,
        "tableName": "R1"
      },
      {
        "assignedWaiterId": "5eb55e06b263bf00117e7266",
        "id": "5eb8f65d61f37a0010e9f7bb",
        "sectionId": "5eb8c92261f37a0010e9f6c7",
        "name": "Roof TOP",
        "order": 2,
        "sortOrder": 6,
        "tableName": "R7"
      },
      {
        "assignedWaiterId": "5eb55e06b263bf00117e7266",
        "id": "5eb8f5e561f37a0010e9f7ac",
        "sectionId": "5eb8c92261f37a0010e9f6c7",
        "name": "Roof TOP",
        "order": 2,
        "sortOrder": 7,
        "tableName": "R2"
      },
      {
        "assignedWaiterId": "5eb55e06b263bf00117e7266",
        "id": "5eb8f5ee61f37a0010e9f7ad",
        "sectionId": "5eb8c92261f37a0010e9f6c7",
        "name": "Roof TOP",
        "order": 2,
        "sortOrder": 8,
        "tableName": "R3"
      },
      {
        "assignedWaiterId": null,
        "id": "5eb8f5f961f37a0010e9f7ae",
        "sectionId": "5eb8c92261f37a0010e9f6c7",
        "name": "Roof TOP",
        "order": 2,
        "sortOrder": 9,
        "tableName": "R4"
      },
      {
        "assignedWaiterId": null,
        "id": "5eb8f61061f37a0010e9f7b2",
        "sectionId": "5eb8c92261f37a0010e9f6c7",
        "name": "Roof TOP",
        "order": 2,
        "sortOrder": 10,
        "tableName": "R5"
      },
      {
        "assignedWaiterId": "5eb55e06b263bf00117e7266",
        "id": "5eb8f4fb61f37a0010e9f796",
        "sectionId": "617bbf55305595001814d420",
        "name": "X",
        "order": 3,
        "sortOrder": 11,
        "tableName": "G1"
      },
      {
        "assignedWaiterId": null,
        "id": "654b6c98a13acc0011bce881",
        "sectionId": "64872216b3b56700115ea2b4",
        "name": "Section 1",
        "order": 1,
        "sortOrder": null,
        "tableName": "T1"
      },
      {
        "assignedWaiterId": null,
        "id": "5f25bcced012c45d12ac4649",
        "sectionId": null,
        "name": null,
        "order": null,
        "sortOrder": 18,
        "tableName": "counter"
      }
    ].map((e) => CustomerInfoModel.fromJson(e)).toList();
  }
}
