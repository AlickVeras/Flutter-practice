import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:math_expressions/math_expressions.dart';

class FlutterX4 extends StatefulWidget {
  FlutterX4({super.key});

  @override
  State<FlutterX4> createState() => _FlutterX4State();
}

class _FlutterX4State extends State<FlutterX4> {
  String output = '';

  final List<String> _buttons = [
    '7',
    '8',
    '9',
    '/',
    '4',
    '5',
    '6',
    '*',
    '1',
    '2',
    '3',
    '-',
    '0',
    '.',
    '=',
    '+',
    'C'
  ];

  void _handleKeyboard(RawKeyEvent event) {
    if (event.logicalKey == LogicalKeyboardKey.enter) {
      setState(() {
        output = _calculateResult();
      });
    } else if (event.character != null) {
      setState(() {
        output += event.character!;
      });
    }
  }

  void _buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == 'C') {
        output = '';
      } else if (buttonText == '=') {
        output = _calculateResult();
      } else {
        output += buttonText;
      }
    });
  }

  String _calculateResult() {
    String expression = output;

    // Remove any trailing operators
    expression = expression.replaceAll(RegExp(r'[\+\-*/]$'), '');

    Parser parser = Parser();
    Expression exp = parser.parse(expression);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    return eval.toString();
  }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
            title: Text('Calculadora Flutter'),

          ),
          body: Column(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(12.0),
                  alignment: Alignment.bottomRight,
                  child: Text(
                    output,
                    style: TextStyle(
                      fontSize: 48.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: GridView.builder(
                  itemCount: _buttons.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () => _buttonPressed(_buttons[index]),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.white,
                            width: 2.0,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            _buttons[index],
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ));
    }
  }