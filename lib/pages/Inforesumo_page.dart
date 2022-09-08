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
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Check Up Money',
                style: TextStyle(
                    color: Color(0xFFF2F3F3),
                    fontSize: 20,
                    fontFamily: 'Roboto-Bold')),
            backgroundColor: const Color(0xFFF1D4AF),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.account_circle_outlined,
                    size: 26.0,
                  ),
                ),
              ),
            ],
            bottom: const TabBar(
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  color: Color(0xFF229EAB)),
              tabs: [
                Tab(
                  text: 'Dia',
                ),
                Tab(
                  text: 'Semana',
                ),
                Tab(
                  text: 'Mês',
                ),
              ],
            ),
            elevation: 4,
          ),
          body: Scaffold(
            body: TabBarView(
              children: [
                buildPageDia('Dia'),
                buildPageSemana('Semana'),
                buildPageMes('Mês'),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: const Color(0xFFF1D4AF).withOpacity(0.8),
            child: const Icon(Icons.add),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.miniCenterFloat,
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: const Color(0xFFF1D4AF),
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
            selectedItemColor: const Color(0xFF229EAB),
            unselectedItemColor: const Color(0xFF000C14).withOpacity(0.5),
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
        ),
      );

// dia
  Widget buildPageDia(String text) {
    return Container(
      color: const Color(0xFF229EAB),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.6,
            child: Card(
              color: const Color(0xFF229EAB).withOpacity(0.8),
              child: Column(
                children: [
                  loadGrafico(),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 150, top: 0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  loadGrafico() {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 300,
      child: const Card(
        color: Color(0xFF229EAB),
        child: Center(
            // child: CircularProgressIndicator(
            //   valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            // ),
            ),
      ),
    );
  }

// semana
  Widget buildPageSemana(String text) {
    return Container(
      color: const Color(0xFF229EAB),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.6,
            child: Card(
              color: const Color(0xFF229EAB).withOpacity(0.8),
              child: Column(
                children: [
                  loadGrafico(),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 150, top: 0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

// mês
  Widget buildPageMes(String text) {
    return Container(
      color: const Color(0xFF229EAB),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.6,
            child: Card(
              color: const Color(0xFF229EAB).withOpacity(0.8),
              child: Column(
                children: [
                  loadGrafico(),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 150, top: 0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
