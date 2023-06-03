import 'package:flutter/material.dart';

class ItemAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              size: 30,
              color: Color(0xFF4C35A5),
            ),
          ),
          Spacer(),
          Icon(
            Icons.favorite_border,
            size: 30,
            color: Color(0xFF4C35A5),
          ),
        ],
      ),
    );
  }
}
