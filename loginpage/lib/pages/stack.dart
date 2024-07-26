import 'package:flutter/material.dart';

class Stackapp extends StatelessWidget {
  const Stackapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stack Example'),
        ),
        body: Center(
          child: MyStack(),
        ),
      ),
    );
  }
}

class MyStack extends StatefulWidget {
  const MyStack({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyStackState createState() => _MyStackState();
}

class _MyStackState extends State<MyStack> {
  // A list of colors to display in the stack
  List<Color> _colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.purple,
  ];

  // A method to swap two elements in the list
  void _swap(int i, int j) {
    setState(() {
      Color temp = _colors[i];
      _colors[i] = _colors[j];
      _colors[j] = temp;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: List.generate(
        _colors.length,
        (index) => Positioned(
          left: index *
              50.0, // adjust this value to change the spacing between children
          child: DragTarget<int>(
            onAccept: (data) {
              // swap the colors when a draggable is dropped on a drag target
              _swap(data, index);
            },
            builder: (context, candidateData, rejectedData) {
              return Draggable<int>(
                data: index, // pass the index as the data of the draggable
                child: Container(
                  width: 100,
                  height: 100,
                  color: _colors[index],
                  child: Center(
                    child: Text(
                      '$index',
                      style: TextStyle(fontSize: 32),
                    ),
                  ),
                ),
                feedback: Container(
                  width: 100,
                  height: 100,
                  color: _colors[index]
                      .withOpacity(0.5), // make the feedback semi-transparent
                  child: Center(
                    child: Text(
                      '$index',
                      style: TextStyle(fontSize: 32),
                    ),
                  ),
                ),
                childWhenDragging: Container(), // hide the child when dragging
              );
            },
          ),
        ),
      ),
    );
  }
}
