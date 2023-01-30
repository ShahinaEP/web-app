import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class LineChartWidget extends StatelessWidget {
  LineChartWidget({Key? key}) : super(key: key);
  final List<Color> gradientColors = [
    const Color(0xffF3E5FC),
    const Color(0xffC169F2)
  ];
  final List<FlSpot> spots = [
    FlSpot(0, 3),
    FlSpot(2, 2),
    FlSpot(4, 5),
    FlSpot(6, 3.5),
    FlSpot(8, 4),
  ];
  @override
  Widget build(BuildContext context) {
    const cutOffYValue = 0.0;
    const yearTextStyle = TextStyle(fontSize: 12, color: Colors.black);
    return  Scaffold(
      body: LineChart(
          LineChartData(
              // backgroundColor:Colors.red,

              minX: 0,
              maxX: 6,
              minY: 0,
              maxY: 6,

              lineTouchData: LineTouchData(
                touchTooltipData: LineTouchTooltipData(
                tooltipBgColor: Colors.blueGrey.withOpacity(0.8),
              )),

              titlesData:  FlTitlesData(
                bottomTitles: AxisTitles(
                  // sideTitles: bottomTitles(),
                ),
                rightTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                topTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: leftTitleWidgets,
                        )
                ),
                // show: false,
                //   topTitles: AxisTitles(
                //     axisNameSize: 0
                //   ),
                //   rightTitles: AxisTitles(
                //       sideTitles: SideTitles(
                //         showTitles: true,
                //         getTitlesWidget: leftTitleWidgets,
                //       )
                //   ),

              ),
              // titlesData: LineTitles.getTitleData(),
              // titlesData: FlTitlesData(
              // bottomTitles:AxisTitles (
              // sideTitles: SideTitles(
              // showTitles: true,
              // reservedSize: 5,
              // textStyle: yearTextStyle,
              // getTitles: (value) {
              // switch (value.toInt()) {
              // case 0:
              // return '2016';
              // case 1:
              // return '2017';
              // case 2:
              // return '2018';
              // case 3:
              // return '2019';
              // case 4:
              // return '2020';
              // default:
              // return '';
              // }
              // }),
              // leftTitles: SideTitles(
              //   showTitles: true,
              //   getTitles: (value) {
              //     return '\$ ${value + 100}';
              //   },
              // ),
              // )
              // ),

                borderData: FlBorderData(
                show: true,
                border: const Border(
                bottom: BorderSide(color: Colors.transparent),//BorderSide(color: Color(0xff4e4965), width: 4),
                left: BorderSide(color: Colors.transparent),
                right: BorderSide(color: Colors.transparent),
                top: BorderSide(color: Colors.transparent),
                )),

              gridData: FlGridData(
                // show : true,
                // getDrawingHorizontalLine: (value){
                // return FlLine(
                // color: const Color(0xff37434d),
                // strokeWidth: 1
                // );
                // },
                drawVerticalLine: true,
                getDrawingVerticalLine: (value) {
                  return FlLine(color: const Color(0xffffffff), strokeWidth: 1);
                },
              ),
              // borderData: FlBorderData(
              // show : true,
              // border: Border.all(color: const Color(0xff37434d), width: 1)
              // ),
              lineBarsData: [
                // LineChartBarData(
                //   spots: spots,
                //   isCurved: true,
                //   // colors: [Colors.teal],
                //   barWidth: 2,
                // ),
                LineChartBarData(
                    spots: const [
                      FlSpot(0, 1),
                      FlSpot(1.6, 2),
                      FlSpot(2.9, 1.2),
                      FlSpot(3.5, 3.5),
                      FlSpot(4.5, 4.2),
                      FlSpot(5.5, 1),
                      FlSpot(6, 2),
                    ],
                    isCurved: true,

                    gradient: LinearGradient(
                      colors: gradientColors,
                    ),
                    barWidth: 2,
                    dotData: FlDotData(show: false),
                    belowBarData: BarAreaData(
                      show : true,
                      gradient: LinearGradient(
                        colors:   gradientColors
                            .map((e) => e.withOpacity(0.2)).toList(),

                      ),
                    )),
              ]),

      ),
    );
  }
  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle();
    String text = value.toString();
    text = text + 'k';

    return FittedBox(child: Text(text, style: style, textAlign: TextAlign.center), fit: BoxFit.fitWidth, );
  }
}

// class LineTitles {
//   static getTitleData()=> FlTitlesData(
//     show: true,
//     bottomTitles:  AxisTitles(
//       sideTitles: SideTitles(
//         showTitles: true,
//         reservedSize: 35,
//         // getTextStyles: (value) => const TextStyle(
//         //   color: Color(0xff68737d),
//         //   fontWeight: FontWeight.bold,
//         //   fontSize: 16,
//         // ),
//
//         // getTitlesWidget: ((value) {
//         //   switch (value.toInt()) {
//         //     case 2:
//         //       return 'MAR';
//         //     case 5:
//         //       return 'JUN';
//         //     case 8:
//         //       return 'SEP';
//         //   }
//         //   return '';
//         // },)
//         // margin: 8,
//       ),
//       // leftTitles: SideTitles(
//       //   showTitles: true,
//       //   getTextStyles: (value) => const TextStyle(
//       //     color: Color(0xff67727d),
//       //     fontWeight: FontWeight.bold,
//       //     fontSize: 15,
//       //   ),
//       //   getTitles: (value) {
//       //     switch (value.toInt()) {
//       //       case 1:
//       //         return '10k';
//       //       case 3:
//       //         return '30k';
//       //       case 5:
//       //         return '50k';
//       //     }
//       //     return '';
//       //   },
//       //   reservedSize: 35,
//       //   margin: 12,
//       ),
//     ),
//   );
// }
