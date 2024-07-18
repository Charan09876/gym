import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../common/color_extension.dart';

class Bodymassindex extends StatelessWidget {
  final double bm;

  Bodymassindex({required this.bm});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.black,
          child: Column(
            children: [
              SizedBox(height: 200),
              AspectRatio(
                aspectRatio: 1,
                child: Center(
                  child: PieChart(
                    PieChartData(
                      pieTouchData: PieTouchData(
                        touchCallback: (FlTouchEvent event, pieTouchResponse) {},
                      ),
                      startDegreeOffset: 270,
                      borderData: FlBorderData(
                        show: false,
                      ),
                      sectionsSpace: 1,
                      centerSpaceRadius: 0,
                      sections: showingSections(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(
      2,
          (i) {
        var color0 = TColor.secondaryColor1;
        var color1 = TColor.white;
        var vl = 100 - bm;

        switch (i) {
          case 0:
            return PieChartSectionData(
              color: color0,
              value: bm,
              title: '',
              radius: 165,
              titlePositionPercentageOffset: 0.55,
              badgeWidget: Text(
                bm.toString(),
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            );
          case 1:
            return PieChartSectionData(
              color: color1,
              value: vl.toDouble(),
              title: '',
              radius: 90,
              titlePositionPercentageOffset: 0.55,
            );
          default:
            throw Error();
        }
      },
    );
  }
}
