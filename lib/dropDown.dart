import 'package:flutter/material.dart';
import 'package:movie_booking/modifiedText.dart';

class DropDown extends StatefulWidget {
  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String valueChoose;
  List listItem = ['1', ' 2', ' 3', '4'];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButton(
          dropdownColor: Colors.black,
          hint: ModifiedText(
            text: '1',
          ),
          value: valueChoose,
          items: listItem.map((value) {
            return DropdownMenuItem(
              value: value,
              child: ModifiedText(
                text: value,
              ),
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              valueChoose = value;
            });
          }),
    );
  }
}
