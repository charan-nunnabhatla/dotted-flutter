import 'package:dotted_life/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:dotted_life/main.dart';
import 'package:dotted_life/circle_avatar_widget.dart';

class DottedLifeHomeState extends State<DottedLifeHome> {
  final double _radius = 1;
  int _age = 0;
  TextEditingController ageController = TextEditingController();
  TextEditingController expectedController = TextEditingController();

  late List<Widget> filledArray;
  late List<Widget> emptyArray;

  @override
  void initState() {
    super.initState();
    _updateArrays();
  }

  void _updateArrays() {
    filledArray = List.generate(_age, (int index) {
      return circleAvatar(const Color.fromARGB(255, 230, 154, 154), _radius);
    });

    emptyArray = List.generate(_age, (int index) {
      return circleAvatar(const Color.fromARGB(255, 154, 227, 230), _radius);
    });
  }

  void ageUpdate(int x) {
    setState(() {
      _age = x;
      _updateArrays();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: myTextFieldWidget(ageController, ageUpdate, 'Enter Age'),
              ),
              Expanded(
                child: myTextFieldWidget(expectedController, ageUpdate, 'Enter Expected Age'),
              ),
            ],
          ),
          Expanded(
            child: GridView(
              padding: const EdgeInsets.all(8),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 30,
              ),
              children: [...filledArray, ...emptyArray],
            ),
          ),
        ],
      ),
    );
  }
}
