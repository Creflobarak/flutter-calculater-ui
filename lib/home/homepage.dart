import 'package:flutter/material.dart';

import '../widgets/neu_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List buttons = [
    'C', //button[0]
    'DEL',
    '%',
    '÷',
    '9',
    '8',
    '7',
    '×',
    '6',
    '5',
    '4',
    '-',
    '3',
    '2',
    '1',
    '+',
    '0',
    '.',
    'ANS',
    '=', //button [19]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      body: Column(
        children: [
          //display question and answer
          Expanded(
            child: Container(),
          ),
          //buttons
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                itemCount: buttons.length,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (context, index) {
                  //clear button
                  if (index == 0) {
                    return NeuButton(
                      buttonLabel: buttons[index],
                      buttonColor: Colors.deepPurple[300],
                      textColor: Colors.green[300],
                    );
                  }
                  //delete button
                  else if (index == 1) {
                    return NeuButton(
                      buttonLabel: buttons[index],
                      buttonColor: Colors.deepPurple[300],
                      textColor: Colors.red[300],
                    );
                  }
                  //operator buttons
                  else if (index == 2 ||
                      index == 3 ||
                      index == 7 ||
                      index == 11 ||
                      index == 15 ||
                      index == 19) {
                    return NeuButton(
                      buttonLabel: buttons[index],
                      buttonColor: Colors.deepPurple[300],
                      textColor: Colors.white,
                    );
                    //rest of the normal buttons
                  } else {
                    return NeuButton(
                      buttonLabel: buttons[index],
                      buttonColor: Colors.deepPurple[300],
                      textColor: Colors.black,
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
