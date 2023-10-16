import 'package:flutter/material.dart';

class formComponent extends StatefulWidget {
  const formComponent({super.key});

  @override
  State<formComponent> createState() => _formComponentState();
}

class _formComponentState extends State<formComponent> {
  int isActive = 1;
  @override
  Widget build(BuildContext context) {
    switch (isActive) {
      case 1:
        return Container(
          height: 100,
          width: 100,
          color: Colors.amber,
        );
        break;
      default:
        return Container(
          height: 100,
          width: 100,
          color: Colors.red,
        );
    }
  }
}
