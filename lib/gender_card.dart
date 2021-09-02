import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {

  GenderCard({@required this.genderIcon,@required this.gender});

  final IconData genderIcon;
  final String gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(gender, style: TextStyle(
            fontSize: 18.0, color: Color(0xFF8D8E98)
        ),)
      ],
    );
  }
}