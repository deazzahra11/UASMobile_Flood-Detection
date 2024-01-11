import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class harian extends StatefulWidget {
  const harian({super.key});

  @override
  State<harian> createState() => _harianState();
}

class _harianState extends State<harian> {
  @override
  Widget build(BuildContext context) {
    return Container(
       height: 270,
      child: LineChart(
        LineChartData(
          minX: 0,
          maxX: 10,
          minY: 0,
          maxY: 10,
          backgroundColor: Colors.white,
          borderData: FlBorderData(show: false), 
          lineBarsData: [
            LineChartBarData(
              spots: [
                const FlSpot(0, 4),
                const FlSpot(1, 2),
                const FlSpot(2, 8),
                const FlSpot(3, 6.2),
                const FlSpot(4, 7),
                const FlSpot(5, 8),
                const FlSpot(6, 9),
                const FlSpot(7, 8),
                const FlSpot(8, 6),
                const FlSpot(9, 2),
                const FlSpot(10, 2),
              ],
              isCurved: true,
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(255, 39, 158, 176),
                  Color.fromARGB(255, 206, 109, 141),
                ],
              ),
              barWidth: 3,
              belowBarData: BarAreaData(
                show: true,
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 39, 158, 176),
                    Color.fromARGB(255, 206, 109, 141),
                  ],
                ),
              ),
              dotData: FlDotData(show: false),
           
            ),
          ],
          gridData: FlGridData(
              show: true,
              drawHorizontalLine: false,
              drawVerticalLine: false,
              getDrawingVerticalLine: (value) {
                return FlLine(
                  //color: Colors.grey.shade800,
                  strokeWidth: 0.8,
                );
              }),
         titlesData: FlTitlesData(
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 60,
                  getTitlesWidget: (value, meta) {
                    String text = '';
                    switch (value.toInt()) {
                      case 1:
                        text = "1";
                        break;
                      case 2:
                        text = "10 CM";
                        break;
                      case 3:
                        text = "3";
                        break;
                      case 4:
                        text = "50 CM";
                        break;
                      case 5:
                        text = "5";
                        break;
                      case 6:
                        text = "100 CM";
                        break;
                      case 7:
                        text = "7";
                        break;
                      case 8:
                        text = "150 CM";
                        break;
                      case 9:
                        text = "";
                        break;
                      case 10:
                        text = "200 CM";
                        break;
                      default:
                        return Container();
                    }
                    return Text(
                      text,
                      style: const TextStyle(
                        color: Color(0xffB6B6B6),
                        fontSize: 12,
                      ),
                    );
                  }
              ),
            ),
            rightTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            topTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 25,
              getTitlesWidget: (value, meta) {
                    String text = '';
                    switch (value.toInt()) {
                      case 1:
                        text = "Senin";
                        break;
                      case 2:
                        text = "Selasa";
                        break;
                      case 3:
                        text = "Rabu";
                        break;
                      case 4:
                        text = "Kamis";
                        break;
                      case 5:
                        text = "Jumat";
                        break;
                      case 6:
                        text = "Sabtu";
                        break;
                      case 7:
                        text = "Minggu";
                        break;
                    
                   
                      default:
                        return Container();
                    }
                    return Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 70, 105, 158),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    text,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                        ),
                      ),
                    );
                  },
                ),
            ),
          ),
        ),
      ),
    );
  }
}