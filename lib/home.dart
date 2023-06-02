import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController _textController = TextEditingController();
  String _textFieldText = '';

  List<String> operatorsList = [];
  List<String> numbersList = [];

  void _findLists() {
    String number = '';
    for(int i = 0; i<_textFieldText.length; i++) {
      if(_textFieldText[i] == '+' || _textFieldText[i] == '-' || _textFieldText[i] == '/' || _textFieldText[i] == 'x') {
        numbersList.add(number);
        operatorsList.add(_textFieldText[i]);
        number = '';
      }
      else {
       number = number + _textFieldText[i]; 
      }
    }
    numbersList.add(number);
    print('Lista operadores: $operatorsList');
    print('Lista números: $numbersList');
  }

  int _calculator(num1, num2, op) {
    int total = 0;
    if(op == '+') {
      total = num1 + num2;
    }
    else if(op == '-') {
      total = num1 - num2;
    }
    else if(op == 'x') {
      total = num1 * num2;
    }
    else if(op == '/') {
      total = num1 / num2;
    }
    return total;
  }

  int _convertToDecimal(number) {
    int decimal = int.parse(number, radix: 16);
    return decimal;
  }

  String _convertToHex(number) {
    String hex = number.toRadixString(16).toUpperCase();
    return hex;
  }

  String _loop() {
    int num1 = _convertToDecimal(numbersList[0]);
    int num2;
    String op = '';
    int total = 0;
    String numHex = '';

    for(int i = 0; i < operatorsList.length; i++){
      op = operatorsList[i];
      num2 = _convertToDecimal(numbersList[i+1]);
      total = _calculator(num1, num2, op);

      print('Valor 1: $num1, Valor 2: $num2, Op: $op');
      print('Resultado $i operação: $total');
      num1 = total;
    }
    numHex = _convertToHex(total);
    return numHex;
  }
  
  void _showAnswer() {
    _findLists();
    _textController.text = _loop();
    _textFieldText = '';
    operatorsList = [];
    numbersList = [];
  }

  void _deleteAll() {
    _textFieldText = '';
    _textController.text = _textFieldText;
  }

  void _deleteLast() {
    _textFieldText = _textFieldText.substring(0, _textFieldText.length - 1);
    _textController.text = _textFieldText;
  }

  void _addText(text) {
    _textFieldText += text;
    _textController.text = _textFieldText;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora Hexadecimal'),
        backgroundColor: Colors.grey,
      ),
      backgroundColor: const Color.fromARGB(53, 158, 158, 158),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: _textController,
              keyboardType: TextInputType.number,
              style: TextStyle(
                fontSize: 50,
                color: Colors.white
              ),
            ),
            Row(children: [
              ElevatedButton(
                onPressed: () {
                  String text = 'A';
                  _addText(text);
                }, 
                child: Text('A')
              ),
              ElevatedButton(
                onPressed: () {
                  String text = 'B';
                  _addText(text);
                }, 
                child: Text('B')
              ),
              ElevatedButton(
                onPressed: () {
                  String text = 'C';
                  _addText(text);
                }, 
                child: Text('C')
              ),
              ElevatedButton(
                onPressed: () {
                  String text = 'D';
                  _addText(text);
                },
                child: Text('D')
              ),
              ElevatedButton(
                onPressed: () {
                  String text = 'E';
                  _addText(text);
                },  
                child: Text('E')
              ),
              ElevatedButton(
                onPressed: () {
                  String text = 'F';
                  _addText(text);
                },  
                child: Text('F')
              ),
            ],),
            Row(children: [
              ElevatedButton(
                onPressed: () {
                  String text = '7';
                  _addText(text);
                }, 
                child: Text('7')
              ),
              ElevatedButton(
                onPressed: () {
                  String text = '8';
                  _addText(text);
                },  
                child: Text('8')
              ),
              ElevatedButton(
                onPressed: () {
                  String text = '9';
                  _addText(text);
                },  
                child: Text('9')
              ),
              ElevatedButton(
                onPressed: () {_deleteLast();},  
                child: Container(alignment: Alignment.center, width: 52, child: Text('DEL'))
              ),
              ElevatedButton(
                onPressed: () {_deleteAll();},
                child: Container(alignment: Alignment.center, width: 52, child: Text('AC'))
              ),
            ],),
            Row(children: [
              ElevatedButton(
                onPressed: () {
                  String text = '4';
                  _addText(text);
                },  
                child: Text('4')
              ),
              ElevatedButton(
                onPressed: () {
                  String text = '5';
                  _addText(text);
                },
                child: Text('5')
              ),
              ElevatedButton(
                onPressed: () {
                  String text = '6';
                  _addText(text);
                },  
                child: Text('6')
              ),
              ElevatedButton(
                onPressed: () {
                  String text = 'x';
                  _addText(text);
                },  
                child: Container(alignment: Alignment.center, width: 52, child: Text('x'))
              ),
              ElevatedButton(
                onPressed: () {
                  String text = '/';
                  _addText(text);
                },  
                child: Container(alignment: Alignment.center, width: 52, child: Text('/'))
              ),
            ],),
            Row(children: [
              ElevatedButton(
                onPressed: () {
                  String text = '1';
                  _addText(text);
                },  
                child: Text('1')
              ),
              ElevatedButton(
                onPressed: () {
                  String text = '2';
                  _addText(text);
                },  
                child: Text('2')
              ),
              ElevatedButton(
                onPressed: () {
                  String text = '3';
                  _addText(text);
                },  
                child: Text('3')
              ),
              ElevatedButton(
                onPressed: () {
                  String text = '+';
                  _addText(text);
                },  
                child: Container(alignment: Alignment.center, width: 52, child: Text('+'))
              ),
              ElevatedButton(
                onPressed: () {
                  String text = '-';
                  _addText(text);
                },  
                child: Container(alignment: Alignment.center, width: 52, child: Text('-'))
              ),
            ],),
            Row(children: [
              ElevatedButton(
                onPressed: () {
                  String text = '.';
                  _addText(text);
                },  
                child: Text('.')
              ),
              ElevatedButton(
                onPressed: () {
                  String text = '0';
                  _addText(text);
                },  
                child: Text('0')
              ),
              ElevatedButton(
                onPressed: () {
                  String text = '00';
                  _addText(text);
                },  
                child: Text('00')
              ),
              ElevatedButton(
                onPressed: () { _showAnswer();},  
                child: Container(alignment: Alignment.center, width: 135, child: Text('='))
              ),
              ],
            )
          ],
        ),
      ),
    );
  }
}