import 'package:flutter/material.dart';




class TextFieldContainer extends StatelessWidget {
  const TextFieldContainer({
    Key? key,
    required this.height,
    required this.width,
    required this.textField
  }) : super(key: key);

  final double width;
  final double height;
  final TextField textField;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: textField,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 5,
            offset: const Offset(3, 3),
          ),
        ],
      ),
    );
  }
}


