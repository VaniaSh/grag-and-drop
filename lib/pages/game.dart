import 'package:flutter/material.dart';
import 'package:task/components/DraggableBox.dart';

class DragScreen extends StatefulWidget {
  const DragScreen({Key? key}) : super(key: key);

  @override
  State<DragScreen> createState() => _DragScreenState();
}

class _DragScreenState extends State<DragScreen> {
  String firstElement = '';
  String secondElement = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
            backgroundColor: Colors.black,
            centerTitle: true,
            title: const Text('Created by Vania Shepetko')),
        body: Center(
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.only(top: 20)),
              DragTarget<String>(
                builder: (context, data1, rejectedDate) {
                  return Container(
                    width: 220.0,
                    height: 100.0,
                    color: Colors.black45,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text(
                          'One',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Container(
                          child: firstElement == ''
                              ? null
                              : NumberBox(firstElement, Colors.black12),
                        )
                      ],
                    ),
                  );
                },
                onAccept: (data1) {
                  setState(() {
                    // insideTarget1 = true;
                    firstElement = data1;
                  });
                },
                onWillAccept: (data1) {
                  return data1 == '1' ? true : false;
                },
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              DragTarget<String>(
                builder: (context, data2, rejectedDate) {
                  return Container(
                      width: 220.0,
                      height: 100.0,
                      color: Colors.black45,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            'Two',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Container(
                            child: secondElement == ''
                                ? null
                                : NumberBox(secondElement, Colors.black12),
                          )
                        ],
                      ));
                },
                onAccept: (data2) {
                  setState(() {
                    // insideTarget2 = true;
                    secondElement = data2;
                  });
                },
                onWillAccept: (data2) {
                  return data2 == '2' ? true : false;
                },
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    NumberBox('1', Colors.black),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    NumberBox('2', Colors.black),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

