import 'package:flutter/material.dart';
import 'package:ownWidget/home/text/text_widget.dart';

import 'button/button_widget.dart';
import 'text/big_text_widget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('My Own Widget'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ButtonWidget(
                  buttonBorderRadius: 18,
                  buttonColor: Colors.red,
                  buttonText: 'Botão Vermelho com borda preta',
                  buttonBorderColor: Colors.black,
                ),
                ButtonWidget(
                  buttonBorderRadius: 5,
                  buttonColor: Colors.blue,
                  buttonText: 'Botão azul com borda amarela',
                  buttonBorderColor: Colors.yellow,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ButtonWidget(
                  buttonBorderRadius: 16,
                  buttonColor: Colors.yellow,
                  buttonText: 'Botão amarelo com borda azul',
                  buttonBorderColor: Colors.blue,
                ),
                ButtonWidget(
                  buttonBorderRadius: 15,
                  buttonColor: Colors.grey,
                  buttonText: 'Botão cinza com borda rosa',
                  buttonBorderColor: Colors.pink,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ButtonWidget(
                  buttonBorderRadius: 15,
                  buttonColor: Colors.pink,
                  buttonText: 'Botão rosa com borda preta',
                  buttonBorderColor: Colors.black,
                ),
                ButtonWidget(
                  buttonBorderRadius: 0,
                  buttonColor: Colors.brown,
                  buttonText: 'Botão marrom com borda roxa',
                  buttonBorderColor: Colors.purple,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Divider(),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextWidget(
                  text: 'Preto tamanho 20',
                  textColor: Colors.black,
                  textSize: 20,
                ),
                TextWidget(
                  text: 'Marrom tamanho 15',
                  textColor: Colors.brown,
                  textSize: 15,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextWidget(
                  text: 'Rosa tamanho 40',
                  textColor: Colors.pink,
                  textSize: 40,
                ),
                TextWidget(
                  text: 'Amarelo tamanho 10',
                  textColor: Colors.yellow,
                  textSize: 10,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextWidget(
                  text: 'Verde tamanho 18',
                  textColor: Colors.green,
                  textSize: 18,
                ),
                TextWidget(
                  text: 'Roxo tamanho 22',
                  textColor: Colors.purple,
                  textSize: 22,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            BigTextWidget(),
          ],
        ),
      ),
    );
  }
}
