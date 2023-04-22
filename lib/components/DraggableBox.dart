import 'package:flutter/material.dart';

class NumberBox extends StatelessWidget {
  final String params;
  final Color color;

  const NumberBox(this.params, this.color, {super.key});

  @override
  Widget build(BuildContext context) {
    return Draggable(
      data: params,
      feedback: Container(
        width: 70.0,
        height: 70.0,
        color: color,
        child: Center(child: Text(
          params, style: const TextStyle(fontSize: 20, color: Colors.white),),),
      ),
      childWhenDragging: Container(
        width: 70.0,
        height: 70.0,
        color: Colors.black12,
      ),
      child: Container(
        width: 70.0,
        height: 70.0,
        color: color,
        child: Center(child: Text(
          params, style: const TextStyle(fontSize: 20, color: Colors.white),),),
      ),
    );
  }
}
