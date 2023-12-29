import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testing/modules/add_customer/bloc/add_customer_bloc.dart';

class CustomerStatusDropdownButtonWidget extends StatefulWidget {
  const CustomerStatusDropdownButtonWidget({super.key});

  @override
  State<CustomerStatusDropdownButtonWidget> createState() => _CustomerStatusDropdownButtonWidgetState();
}

class _CustomerStatusDropdownButtonWidgetState extends State<CustomerStatusDropdownButtonWidget> {
  @override
  Widget build(BuildContext context) {
    AddCustomerBloc bloc = context.read();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Align(
        alignment: Alignment.topLeft,
        child: DropdownButtonHideUnderline(
          child: DropdownButton2<String>(
            alignment: Alignment.topLeft,
            isExpanded: true,
            hint: Text(
              'Select customer status',
              style: TextStyle(
                fontSize: 14,
                color: Theme.of(context).hintColor,
              ),
            ),
            items: bloc.customerStatusList
                .map((String item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ))
                .toList(),
            value: bloc.selectedCustomerStatus,
            onChanged: (String? value) {
              setState(() {
                bloc.selectedCustomerStatus = value;
              });
            },
            buttonStyleData: const ButtonStyleData(
              padding: EdgeInsets.symmetric(horizontal: 16),
              height: 40,
              width: 140,
            ),
            menuItemStyleData: const MenuItemStyleData(
              height: 40,
            ),
          ),
        ),
      ),
    );
  }
}
