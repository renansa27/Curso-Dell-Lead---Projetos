import 'package:flutter/material.dart';

void main() {
  runApp(Calculadora());
}

class Calculadora extends StatefulWidget {
  @override
  _CalculadoraState createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  int num1;
  int num2;
  double result;
  String operador;

  @override
  void initState() {
    operador = null;
    num1 = null;
    num2 = null;
    result = null;
    super.initState();
  }

  void setStateNum(String numIndex, int number) {
    String aux;
    if (numIndex == '1') {
      aux = num1 != null
          ? (num1.toString() + number.toString())
          : number.toString();
      setState(() {
        num1 = int.parse(aux);
      });
    } else {
      aux = num2 != null
          ? (num2.toString() + number.toString())
          : number.toString();
      setState(() {
        num2 = int.parse(aux);
      });
    }
  }

  void setOperador(String operador) {
    setState(() {
      this.operador = operador;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculadora - Oficina 2.5',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Board(setStateNum, setOperador),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    if (num1 != null && num2 != null && operador != null)
                      RaisedButton(
                        color: Colors.blue,
                        child: Text(
                          "Calcular",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          switch (operador) {
                            case '+':
                              setState(() {
                                result = (num1 + num2).toDouble();
                              });
                              break;
                            case '-':
                              setState(() {
                                result = (num1 - num2).toDouble();
                              });
                              break;
                            case '*':
                              setState(() {
                                result = (num1 * num2).toDouble();
                              });
                              break;
                            case '/':
                              setState(() {
                                result = num1 / num2;
                              });
                              break;
                            default:
                              setState(() {
                                result = (num1 % num2).toDouble();
                              });
                              break;
                          }
                        },
                      ),
                    if (num1 == null || num2 == null || operador == null)
                      RaisedButton(
                        color: Colors.grey,
                        child: Text(
                          "Calcular",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: null,
                      ),
                    RaisedButton(
                      color: Colors.blue,
                      child: Text(
                        "Zerar",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          num1 = null;
                          num2 = null;
                          operador = null;
                          result = null;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Operação: ${num1 == null ? "" : num1} ${operador == null ? "" : operador} ${num2 == null ? "" : num2}",
                      style: TextStyle(fontSize: 23),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Resultado: ${result == null ? "" : result}",
                      style: TextStyle(fontSize: 23),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Board extends StatelessWidget {
  Board(this.setNumber, this.setOperador);

  final void Function(String, int) setNumber;
  final void Function(String) setOperador;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 60,
              height: 75,
              child: OutlineButton(
                onPressed: () {
                  setNumber('1', 0);
                },
                child: Text('0'),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 60,
              height: 75,
              child: OutlineButton(
                onPressed: () {
                  setNumber('1', 1);
                },
                child: Text('1'),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 60,
              height: 75,
              child: OutlineButton(
                onPressed: () {
                  setNumber('1', 2);
                },
                child: Text('2'),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 60,
              height: 75,
              child: OutlineButton(
                onPressed: () {
                  setNumber('1', 3);
                },
                child: Text('3'),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 60,
              height: 75,
              child: OutlineButton(
                onPressed: () {
                  setNumber('1', 4);
                },
                child: Text('4'),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 60,
              height: 75,
              child: OutlineButton(
                onPressed: () {
                  setNumber('1', 5);
                },
                child: Text('5'),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 60,
              height: 75,
              child: OutlineButton(
                onPressed: () {
                  setNumber('1', 6);
                },
                child: Text('6'),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 60,
              height: 75,
              child: OutlineButton(
                onPressed: () {
                  setNumber('1', 7);
                },
                child: Text('7'),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 60,
              height: 75,
              child: OutlineButton(
                onPressed: () {
                  setNumber('1', 8);
                },
                child: Text('8'),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 60,
              height: 75,
              child: OutlineButton(
                onPressed: () {
                  setNumber('1', 9);
                },
                child: Text('9'),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 1,
          color: Colors.grey[350],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 60,
              height: 75,
              child: OutlineButton(
                onPressed: () {
                  setOperador('+');
                },
                child: Text('+'),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            SizedBox(
              width: 60,
              height: 75,
              child: OutlineButton(
                onPressed: () {
                  setOperador('-');
                },
                child: Text('-'),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            SizedBox(
              width: 60,
              height: 75,
              child: OutlineButton(
                onPressed: () {
                  setOperador('*');
                },
                child: Text('*'),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            SizedBox(
              width: 60,
              height: 75,
              child: OutlineButton(
                onPressed: () {
                  setOperador('/');
                },
                child: Text('/'),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            SizedBox(
              width: 60,
              height: 75,
              child: OutlineButton(
                onPressed: () {
                  setOperador('%');
                },
                child: Text('%'),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 1,
          color: Colors.grey[350],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 60,
              height: 75,
              child: OutlineButton(
                onPressed: () {
                  setNumber('2', 0);
                },
                child: Text('0'),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 60,
              height: 75,
              child: OutlineButton(
                onPressed: () {
                  setNumber('2', 1);
                },
                child: Text('1'),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 60,
              height: 75,
              child: OutlineButton(
                onPressed: () {
                  setNumber('2', 2);
                },
                child: Text('2'),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 60,
              height: 75,
              child: OutlineButton(
                onPressed: () {
                  setNumber('2', 3);
                },
                child: Text('3'),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 60,
              height: 75,
              child: OutlineButton(
                onPressed: () {
                  setNumber('2', 4);
                },
                child: Text('4'),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 60,
              height: 75,
              child: OutlineButton(
                onPressed: () {
                  setNumber('2', 5);
                },
                child: Text('5'),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 60,
              height: 75,
              child: OutlineButton(
                onPressed: () {
                  setNumber('2', 6);
                },
                child: Text('6'),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 60,
              height: 75,
              child: OutlineButton(
                onPressed: () {
                  setNumber('2', 7);
                },
                child: Text('7'),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 60,
              height: 75,
              child: OutlineButton(
                onPressed: () {
                  setNumber('2', 8);
                },
                child: Text('8'),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 60,
              height: 75,
              child: OutlineButton(
                onPressed: () {
                  setNumber('2', 9);
                },
                child: Text('9'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
