import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:syncfusion_flutter_charts/charts.dart';

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

  // loadGrafico() {
  //   return SizedBox(
  //     width: MediaQuery.of(context).size.width,
  //     height: 300,
  //     child: const Card(
  //       color: Color(0xFF229EAB),
  //       child: Center(
  //           // child: CircularProgressIndicator(
  //           //   valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
  //           // ),
  //           ),
  //     ),
  //   );
  // }

// dia
  Widget buildPageDia(String text) {
    return Container(
      color: const Color(0xFF229EAB),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 550,
            height: MediaQuery.of(context).size.height * 0.6,
            child: Card(
              color: const Color(0xFF229EAB).withOpacity(0.8),
              child: Column(
                children: const [
                  GraficoPizza(),
                ],
              ),
            ),
          ),
        ],
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
                  // loadGrafico(),
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
                  // loadGrafico(),
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

// criando um grafico de pizza
// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';

class GraficoPizza extends StatefulWidget {
  const GraficoPizza({Key? key}) : super(key: key);

  @override
  _GraficoPizzaState createState() => _GraficoPizzaState();
}

class _GraficoPizzaState extends State<GraficoPizza> {
  late List<ChartData> _chartData;

  @override
  void initState() {
    _chartData = getChartData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SfCircularChart(
      title: ChartTitle(text: 'Gastos por categoria'),
      legend: Legend(isVisible: true),
      series: <CircularSeries>[
        DoughnutSeries<ChartData, String>(
            dataSource: _chartData,
            xValueMapper: (ChartData data, _) => data.x,
            yValueMapper: (ChartData data, _) => data.y,
            dataLabelSettings: const DataLabelSettings(isVisible: true))
      ],
    );
  }

  List<ChartData> getChartData() {
    final List<ChartData> chartData = [
      ChartData('Alimentação', 35),
      ChartData('Transporte', 15),
      ChartData('Lazer', 25),
      ChartData('Saúde', 10),
      ChartData('Educação', 15),
      ChartData('Outros', 10),
    ];
    return chartData;
  }
}

class ChartData {
  ChartData(this.x, this.y, [this.text, this.pointColor]);
  final String x;
  final double y;
  final String? text;
  final Color? pointColor;
}
