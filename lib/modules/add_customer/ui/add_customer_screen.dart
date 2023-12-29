import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:testing/modules/add_customer/bloc/add_customer_bloc.dart';
import 'package:testing/modules/add_customer/ui/widgets/customer_status_dropdown_button.dart';
import 'package:testing/modules/add_customer/ui/widgets/select_customer_type_widget.dart';

class AddCustomerScreen extends StatelessWidget {
  const AddCustomerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddCustomerBloc(),
      child: Builder(builder: (context) {
        AddCustomerBloc bloc = context.read();
        return BlocListener<AddCustomerBloc, AddCustomerState>(
          listener: (context, state) {
            if (state is CustomerIsAdded) {
              context.pop();
            }
          },
          child: Scaffold(
            appBar: AppBar(
              title: Text("Add Customer"),
            ),
            body: Column(
              children: [
                SizedBox(
                  height: 39,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      TextField(
                        controller: bloc.nameTextEditingController,
                        decoration: const InputDecoration(hintText: "Enter customer name"),
                      ),
                      TextField(
                        controller: bloc.phoneTextEditingController,
                        decoration: const InputDecoration(hintText: "Enter customer phone"),
                      ),
                    ],
                  ),
                ),
                SelectCustomerTypeWidget(),
                CustomerStatusDropdownButtonWidget(),
                TextButton(
                    onPressed: () {
                      bloc.add(AddCustomerEventAddButtonTap());
                    },
                    child: const Text("Add customer")),
              ],
            ),
          ),
        );
      }),
    );
  }
}
