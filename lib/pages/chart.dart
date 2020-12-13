import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gameapp/class/sale.dart';
import 'package:gameapp/class/visitor.dart';
import 'gamepage.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'dart:math';

import 'home.dart';

class ChartP extends StatefulWidget {
  ChartP({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _ChartPPageState createState() => _ChartPPageState();
}

class _ChartPPageState extends State<ChartP> {
  var data = [0.0, 1.0, 1.5, 2.0, 0.0, 0.0, -0.5, -1.0, 0.5, 2.0, 10.0];
  var data1 = [0.0, -2.0, 3.5, -2.0, 0.5, 0.7, 0.8, 1.0, 2.0, 3.0, 3.2];
  List<charts.Series> seriesList;

  static List<charts.Series<Sales, String>> _createRandomData() {
    final random = Random();

    final desktopSalesData = [
      Sales('Acción', random.nextInt(1000)),
      Sales('Arcade', random.nextInt(1000)),
      Sales('Deportivo', random.nextInt(1000)),
      Sales('Estrategia', random.nextInt(1000)),
      Sales('Otros', random.nextInt(1000)),
    ];

    final tabletSalesData = [
      Sales('Acción', random.nextInt(1000)),
      Sales('Arcade', random.nextInt(1000)),
      Sales('Deportivo', random.nextInt(1000)),
      Sales('Estrategia', random.nextInt(1000)),
      Sales('Otros', random.nextInt(1000)),
    ];

    final mobileSalesData = [
      Sales('Acción', random.nextInt(1000)),
      Sales('Arcade', random.nextInt(1000)),
      Sales('Deportivo', random.nextInt(1000)),
      Sales('Estrategia', random.nextInt(1000)),
      Sales('Otros', random.nextInt(1000)),
    ];

    return [
      charts.Series<Sales, String>(
        id: 'Sales',
        domainFn: (Sales sales, _) => sales.year,
        measureFn: (Sales sales, _) => sales.sales,
        data: desktopSalesData,
        fillColorFn: (Sales sales, _) {
          return charts.MaterialPalette.blue.shadeDefault;
        },
      ),
      charts.Series<Sales, String>(
        id: 'Sales',
        domainFn: (Sales sales, _) => sales.year,
        measureFn: (Sales sales, _) => sales.sales,
        data: tabletSalesData,
        fillColorFn: (Sales sales, _) {
          return charts.MaterialPalette.green.shadeDefault;
        },
      ),
      charts.Series<Sales, String>(
        id: 'Sales',
        domainFn: (Sales sales, _) => sales.year,
        measureFn: (Sales sales, _) => sales.sales,
        data: mobileSalesData,
        fillColorFn: (Sales sales, _) {
          return charts.MaterialPalette.teal.shadeDefault;
        },
      )
    ];
  }

  List<charts.Series> countryList;
  static List<charts.Series<Visitor, String>> _createRandomVis() {
    final r = Random();

    final desktopVisitorData = [
      Visitor('USA', r.nextInt(1000)),
      Visitor('Mexico', r.nextInt(1000)),
      Visitor('España', r.nextInt(1000)),
      Visitor('Brazil', r.nextInt(1000)),
      Visitor('Peru', r.nextInt(1000)),
      Visitor('Otros', r.nextInt(1000)),
    ];

    final tabletVisitorData = [
      Visitor('USA', r.nextInt(1000)),
      Visitor('Mexico', r.nextInt(1000)),
      Visitor('España', r.nextInt(1000)),
      Visitor('Brazil', r.nextInt(1000)),
      Visitor('Peru', r.nextInt(1000)),
      Visitor('Otros', r.nextInt(1000)),
    ];

    final mobileVisitorData = [
      Visitor('USA', r.nextInt(1000)),
      Visitor('Mexico', r.nextInt(1000)),
      Visitor('España', r.nextInt(1000)),
      Visitor('Brazil', r.nextInt(1000)),
      Visitor('Peru', r.nextInt(1000)),
      Visitor('Otros', r.nextInt(1000)),
    ];

    return [
      charts.Series<Visitor, String>(
        id: 'Visitor',
        domainFn: (Visitor visitor, _) => visitor.country,
        measureFn: (Visitor visitor, _) => visitor.visitor,
        data: desktopVisitorData,
        fillColorFn: (Visitor visitor, _) {
          return charts.MaterialPalette.blue.shadeDefault;
        },
      ),
      charts.Series<Visitor, String>(
        id: 'Visitor',
        domainFn: (Visitor visitor, _) => visitor.country,
        measureFn: (Visitor visitor, _) => visitor.visitor,
        data: tabletVisitorData,
        fillColorFn: (Visitor visitor, _) {
          return charts.MaterialPalette.green.shadeDefault;
        },
      ),
      charts.Series<Visitor, String>(
        id: 'Visitor',
        domainFn: (Visitor visitor, _) => visitor.country,
        measureFn: (Visitor visitor, _) => visitor.visitor,
        data: mobileVisitorData,
        fillColorFn: (Visitor visitor, _) {
          return charts.MaterialPalette.teal.shadeDefault;
        },
      )
    ];
  }

  List<CircularStackEntry> circularData = <CircularStackEntry>[
    new CircularStackEntry(
      <CircularSegmentEntry>[
        new CircularSegmentEntry(1200.0, Color(0xff4285F4), rankKey: 'Registrados'),
        new CircularSegmentEntry(400.0, Color(0xffec3337), rankKey: 'No registrados'),
        //new CircularSegmentEntry(1800.0, Color(0xffec3337), rankKey: 'Q3'),
        //new CircularSegmentEntry(1000.0, Color(0xff40b24b), rankKey: 'Q4'),
      ],
      rankKey: 'Quarterly Profits',
    ),
  ];

  barChart() {
    return charts.BarChart(
      countryList,
      animate: true,
      vertical: true,
      barGroupingType: charts.BarGroupingType.grouped,
      defaultRenderer: charts.BarRendererConfig(
        groupingType: charts.BarGroupingType.grouped,
        strokeWidthPx: 1.0,
      ),
      //domainAxis: charts.OrdinalAxisSpec(
        //renderSpec: charts.NoneRenderSpec(),
      //),
    );
  }
  barChart1() {
    return charts.BarChart(
      seriesList,
      animate: true,
      vertical: false,
      barGroupingType: charts.BarGroupingType.grouped,
      defaultRenderer: charts.BarRendererConfig(
        groupingType: charts.BarGroupingType.grouped,
        strokeWidthPx: 1.0,
      ),
      //domainAxis: charts.OrdinalAxisSpec(
      //  renderSpec: charts.NoneRenderSpec(),
      //),
    );
  }
  @override
  void initState() {
    super.initState();
    seriesList = _createRandomData();
    countryList = _createRandomVis();
  }
  Material myTextItems(String title, String subtitle) {
    return Material(
      color: Colors.white,
      elevation: 14.0,
      borderRadius: BorderRadius.circular(24.0),
      shadowColor: Color(0x802196F3),
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(title, style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.blueAccent,
                    ),),
                  ),

                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(subtitle, style: TextStyle(
                      fontSize: 30.0,
                    ),),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Material myCircularItems(String title, String subtitle, String subtitle2) {
    return Material(
      color: Colors.white,
      elevation: 14.0,
      borderRadius: BorderRadius.circular(24.0),
      shadowColor: Color(0x802196F3),
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(title, style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.blueAccent,
                    ),),
                  ),

                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(subtitle, style: TextStyle(
                      fontSize: 15.0,
                    ),),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(subtitle2, style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.blue,
                    ),),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: AnimatedCircularChart(
                      size: const Size(100.0, 100.0),
                      initialChartData: circularData,
                      chartType: CircularChartType.Pie,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }


  Material mychart1Items(String title, String priceVal, String subtitle) {
    return Material(
      color: Colors.white,
      elevation: 14.0,
      borderRadius: BorderRadius.circular(24.0),
      shadowColor: Color(0x802196F3),
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Padding(
                    padding: EdgeInsets.all(1.0),
                    child: Text(title, style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.blueAccent,
                    ),),
                  ),

                  Padding(
                    padding: EdgeInsets.all(1.0),
                    child: Text(priceVal, style: TextStyle(
                      fontSize: 30.0,
                    ),),
                  ),
                  Padding(
                    padding: EdgeInsets.all(1.0),
                    child: Text(subtitle, style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.blueGrey,
                    ),),
                  ),

                  Padding(
                    padding: EdgeInsets.all(1.0),
                    child: new Sparkline(
                      data: data,
                      lineColor: Color(0xffff6101),
                      pointsMode: PointsMode.all,
                      pointSize: 8.0,
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }


  Material mychart2Items(String title, String priceVal, String subtitle) {
    return Material(
      color: Colors.white,
      elevation: 14.0,
      borderRadius: BorderRadius.circular(24.0),
      shadowColor: Color(0x802196F3),
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Padding(
                    padding: EdgeInsets.all(1.0),
                    child: Text(title, style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.blueAccent,
                    ),),
                  ),

                  Padding(
                    padding: EdgeInsets.all(1.0),
                    child: Text(priceVal, style: TextStyle(
                      fontSize: 20.0,
                    ),),
                  ),
                  Padding(
                    padding: EdgeInsets.all(1.0),
                    child: Text(subtitle, style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.blueGrey,
                    ),),
                  ),

                  Padding(
                    padding: EdgeInsets.all(1.0),
                    child: new Sparkline(
                      data: data1,
                      fillMode: FillMode.below,
                      fillGradient: new LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.amber[800], Colors.amber[200]],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    HomeMain()),
          );
        }),
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(icon: Icon(
              FontAwesomeIcons.chartLine), onPressed: () {
            //
          }),
        ],
      ),

      body: Container(
        color: Color(0xffE5E5E5),
        child: StaggeredGridView.count(
          crossAxisCount: 4,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
          children: <Widget>[ //1
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: mychart1Items(
                  "Valoración del juego", "Resident Evil", "Octubre - Noviembre"),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: myCircularItems("Visitas a la plataforma: Noviembre", "400 NR", "1200 R"),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: mychart2Items("Actividad de reseñas", "Noviembre", "Call of duty"),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: barChart(),
            ),

            Padding(
              padding: EdgeInsets.all(8.0),
              child: barChart1(),
            ),
          ],

          staggeredTiles: [
            StaggeredTile.extent(4, 250.0),
            StaggeredTile.extent(4, 250.0),
            StaggeredTile.extent(4, 250.0),
            StaggeredTile.extent(4, 250.0),
            StaggeredTile.extent(4, 250.0),
          ],
        ),
      ),
    );
  }
}