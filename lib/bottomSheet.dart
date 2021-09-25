import 'package:flutter/material.dart';
import 'modifiedText.dart';
import 'dropDown.dart';

void bottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          padding: EdgeInsets.all(10),
          height: 270,
          width: double.infinity,
          color: Color(0xFF424242),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 25,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  ModifiedText(
                    text: 'How many seats',
                    size: 25,
                  ),
                  DropDown(),
                ],
              ),
              Divider(
                color: Color(0xFFAED581),
                height: 2,
                thickness: 1,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                width: double.infinity,
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        ModifiedText(
                          text: 'Balcony',
                          size: 14,
                        ),
                        ModifiedText(
                          text: '₹150.0',
                          size: 18,
                        ),
                        ModifiedText(
                          text: 'Available',
                          size: 14,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        ModifiedText(
                          text: 'First-Class',
                          size: 14,
                        ),
                        ModifiedText(
                          text: '₹120.0',
                          size: 18,
                        ),
                        ModifiedText(
                          text: 'Available',
                          size: 14,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              RaisedButton(
                onPressed: () {},
                color: Colors.blue,
                child: ModifiedText(
                  text: 'Select Seats',
                ),
              )
            ],
          ),
        );
      });
}
