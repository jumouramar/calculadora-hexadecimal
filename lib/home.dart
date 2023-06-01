import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController _textController = TextEditingController();

  void _onClick() {
    print("click");
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
                onPressed: _onClick, 
                child: Text('A')
              ),
              ElevatedButton(
                onPressed: _onClick, 
                child: Text('B')
              ),
              ElevatedButton(
                onPressed: _onClick, 
                child: Text('C')
              ),
              ElevatedButton(
                onPressed: _onClick, 
                child: Text('D')
              ),
              ElevatedButton(
                onPressed: _onClick, 
                child: Text('E')
              ),
              ElevatedButton(
                onPressed: _onClick, 
                child: Text('F')
              ),
            ],),
            Row(children: [
              ElevatedButton(
                onPressed: _onClick, 
                child: Text('7')
              ),
              ElevatedButton(
                onPressed: _onClick, 
                child: Text('8')
              ),
              ElevatedButton(
                onPressed: _onClick, 
                child: Text('9')
              ),
              ElevatedButton(
                onPressed: _onClick, 
                child: Container(alignment: Alignment.center, width: 52, child: Text('DEL'))
              ),
              ElevatedButton(
                onPressed: _onClick, 
                child: Container(alignment: Alignment.center, width: 52, child: Text('AC'))
              ),
            ],),
            Row(children: [
              ElevatedButton(
                onPressed: _onClick, 
                child: Text('4')
              ),
              ElevatedButton(
                onPressed: _onClick, 
                child: Text('5')
              ),
              ElevatedButton(
                onPressed: _onClick, 
                child: Text('6')
              ),
              ElevatedButton(
                onPressed: _onClick, 
                child: Container(alignment: Alignment.center, width: 52, child: Text('x'))
              ),
              ElevatedButton(
                onPressed: _onClick, 
                child: Container(alignment: Alignment.center, width: 52, child: Text('/'))
              ),
            ],),
            Row(children: [
              ElevatedButton(
                onPressed: _onClick, 
                child: Text('1')
              ),
              ElevatedButton(
                onPressed: _onClick, 
                child: Text('2')
              ),
              ElevatedButton(
                onPressed: _onClick, 
                child: Text('3')
              ),
              ElevatedButton(
                onPressed: _onClick, 
                child: Container(alignment: Alignment.center, width: 52, child: Text('+'))
              ),
              ElevatedButton(
                onPressed: _onClick, 
                child: Container(alignment: Alignment.center, width: 52, child: Text('-'))
              ),
            ],),
            Row(children: [
              ElevatedButton(
                onPressed: _onClick, 
                child: Text('.')
              ),
              ElevatedButton(
                onPressed: _onClick, 
                child: Text('0')
              ),
              ElevatedButton(
                onPressed: _onClick, 
                child: Text('00')
              ),
              ElevatedButton(
                onPressed: _onClick, 
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