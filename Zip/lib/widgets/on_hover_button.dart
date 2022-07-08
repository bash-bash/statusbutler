import 'package:flutter/material.dart';
import 'package:statusbutler/models/alarm_model.dart';

class OnHoverButton extends StatefulWidget {
  BuildContext? context;
  Alarm? alarm;
  int? index;
  Function? dialog;
  OnHoverButton({Key? key, context, this.alarm, index, this.dialog})
      : super(key: key);

  @override
  State<OnHoverButton> createState() => _OnHoverButtonState();
}

class _OnHoverButtonState extends State<OnHoverButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => onEntered(true),
      onExit: (event) => onExit(false),
      child: Container(
        width: 6,
        height: 200,
        color: isHovered == false ? widget.alarm?.color : Colors.black38,
        child: isHovered == true
            ? Container() //Here the showDialog should pop up when hovering with mouse on it. onExit with mouse the showDialog should be dismissed
            : Container(),
      ),
    );
  }

  void onEntered(bool isHovered) => setState(() {
        this.isHovered = true;
      });

  void onExit(bool isHovered) => setState(() {
        this.isHovered = false;
      });
}
