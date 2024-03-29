import 'package:flutter/material.dart';
import 'package:select_form_field/select_form_field.dart';

class SubjectsList extends StatefulWidget {
  const SubjectsList({Key? key}) : super(key: key);

  @override
  State<SubjectsList> createState() => _SubjectsListState();
}

class _SubjectsListState extends State<SubjectsList> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> _items = [
      {
        'value': '1',
        'label': 'Show',
        'textStyle': const TextStyle(color: Colors.black),
      },
      {
        'value': '2',
        'label': 'Revoada',
        'textStyle': const TextStyle(color: Colors.black),
      },
      {
        'value': '3',
        'label': 'Teatro',
        'textStyle': const TextStyle(color: Colors.black),
      },
    ];
    return SelectFormField(
      type: SelectFormFieldType.dropdown, // or can be dialog
      initialValue: 'Show',
      labelText: '',
      items: _items,
      onChanged: (val) => print(val),
      onSaved: (val) => print(val),
    );
  }
}
