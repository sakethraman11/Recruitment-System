import 'package:flutter/material.dart';

import '../constants.dart';
import 'main_action_button.dart';

class JobCard extends StatelessWidget {
  final String label;
  final Function onPressed;
  final String title;
  final String salary;
  final String company;

  JobCard({this.label,this.onPressed, this.title, this.salary, this.company});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      height: 180,
      width: 400,
      decoration: BoxDecoration(
        color: kLightBlue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              company,
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              '₹ $salary',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            width: 200,
            child: MainActionButton(
              label: label,
              onPressed: onPressed,
            ),
          ),
        ],
      ),
    );
  }
}