import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class InforesumoPage extends StatefulWidget {
  const InforesumoPage({super.key});

  @override
  State<InforesumoPage> createState() => _InforesumoPageState();
}

class _InforesumoPageState extends State<InforesumoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(28),
          color: Color(0xFF229EAB),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Resumo',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Color(0xFFF2F3F3),
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 60),
              Text(
                'Saldo',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Color(0xFFF2F3F3),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'R\$ 0,00',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Color(0xFFF2F3F3),
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 60),
              Text(
                'Gastos',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Color(0xFFF2F3F3),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'R\$ 0,00',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Color(0xFFF2F3F3),
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 60),
              Text(
                'Receitas',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Color(0xFFF2F3F3),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'R\$ 0,00',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Color(0xFFF2F3F3),
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )),
    );
  }
}
