import 'package:flutter/material.dart';

class CustomDialogBox extends StatefulWidget {
  CustomDialogBox({Key? key}) : super(key: key);

  @override
  State<CustomDialogBox> createState() => _CustomDialogBoxState();
}

class _CustomDialogBoxState extends State<CustomDialogBox> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: Text('data'),
    );
  }
}
