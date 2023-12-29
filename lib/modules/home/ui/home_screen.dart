import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:testing/modules/home/bloc/home_bloc.dart';
import 'package:testing/modules/home/models/customer_info_model.dart';
import 'package:testing/routes/routes_name.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        HomeBloc homeBloc = HomeBloc();
        return homeBloc;
      },
      child: Builder(builder: (context) {
        HomeBloc bloc = context.read();
        return BlocListener<HomeBloc, HomeState>(
          listener: (BuildContext context, HomeState state) {
            if (state is HomeStateAddCustomer) {
              context.goNamed(RouteName.addCustomer.name);
            }
          },
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return Scaffold(
                appBar: AppBar(
                  title: Text("Home"),
                ),
                floatingActionButton: FloatingActionButton(
                  onPressed: () {
                    bloc.add(HomeScreenEventTapAddCustomerButton());
                  },
                  child: const Icon(Icons.add),
                ),
                body: ListView.builder(
                  itemCount: bloc.customerInfoList.length,
                  itemBuilder: (BuildContext context, int index) {
                    CustomerInfoModel customerInfoModel = bloc.customerInfoList[index];
                    return Card(
                      child: Column(
                        children: [
                          Text("Name  ${customerInfoModel.name ?? ""}"),
                          Text("Contact Number  ${customerInfoModel.contactNumber ?? ""}"),
                          Text(
                              "Type  ${customerInfoModel.customerTypeId == null ? "" : customerInfoModel.customerTypeId.toString() ?? ""}"),
                          Text("Status  ${customerInfoModel.customerStatus ?? ""}"),
                          const SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    );
                  },
                ),
              );
            },
          ),
        );
      }),
    );
  }
}
