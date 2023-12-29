import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testing/modules/add_customer/bloc/add_customer_bloc.dart';
import 'package:testing/utils/enums/customer_type_enums.dart';


class SelectCustomerTypeWidget extends StatefulWidget {
  const SelectCustomerTypeWidget({super.key});

  @override
  State<SelectCustomerTypeWidget> createState() => _SelectCustomerTypeWidgetState();
}

class _SelectCustomerTypeWidgetState extends State<SelectCustomerTypeWidget> {
  @override
  Widget build(BuildContext context) {
    AddCustomerBloc bloc = context.read();
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(CustomerTypeEnums.CustomerType1.name),
          leading: Radio<CustomerTypeEnums>(
            value: CustomerTypeEnums.CustomerType1,
            groupValue: bloc.character,
            onChanged: (CustomerTypeEnums? value) {
              setState(() {
                bloc.character = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text(CustomerTypeEnums.CustomerType2.name),
          leading: Radio<CustomerTypeEnums>(
            value: CustomerTypeEnums.CustomerType2,
            groupValue: bloc.character,
            onChanged: (CustomerTypeEnums? value) {
              setState(() {
                bloc.character = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
