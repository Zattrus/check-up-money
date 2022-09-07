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
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Check Up Money',
            style: TextStyle(
                color: Color(0xFFF2F3F3),
                fontSize: 20,
                fontFamily: 'Roboto-Bold')),
        backgroundColor: Color(0xFFF1D4AF),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.notifications,
                size: 26.0,
              ),
            ),
          ),
        ],
      ),
      body: Scaffold(
        backgroundColor: Color(0xFF229EAB),
        body: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(28),
              child: Text(
                'Seus gastos Pessoais',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Color(0xFFF2F3F3),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: const Icon(
                Icons.account_circle_outlined,
                size: 30,
                color: Color(0xFFF2F3F3),
              ),
              padding: const EdgeInsets.all(28),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
        backgroundColor: Color(0xFFF1D4AF).withOpacity(0.8),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFF1D4AF),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: 'Carteira',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Perfil',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Color(0xFF229EAB),
        unselectedItemColor: Color(0xFF000C14).withOpacity(0.5),
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/home');
              break;
            case 1:
              Navigator.pushNamed(context, '/'); // carteira
              break;
            case 2:
              Navigator.pushNamed(context, '/'); // perfil
              break;
          }
        },
      ),
    );
  }
}
