import 'dart:async';
import 'package:fitnestx/app/app.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../theme/theme.dart';
import '../../utils/const/const_list.dart';

class HeartbeatChart extends StatefulWidget {
  const HeartbeatChart({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HeartbeatChartState createState() => _HeartbeatChartState();
}

class _HeartbeatChartState extends State<HeartbeatChart> {
  late Timer _timer;
  late List<ChartData> _chartData;

  @override
  void initState() {
    super.initState();
    // Set up the initial data for the chart
    _chartData = _getChartData();

    // Set up a timer to redraw the chart every 2 seconds
    _timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      setState(() {
        // Generate new data for the chart (in this case, random numbers)
        _chartData = _getChartData();
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  // Method to generate the chart data
  List<ChartData> _getChartData() {
    List<ChartData> data = [];
    for (int i = 0; i < ConstList.initialData.length; i++) {
      data.add(ChartData(i, ConstList.initialData[i]));
    }
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(const Radius.circular(20).r),
      child: SizedBox(
        height: 150.h,
        child: SfCartesianChart(
          backgroundColor: AppColor.lightBlueBG,
          title: ChartTitle(
              text: 'Heart Rate\n78 BPM',
              textStyle: TextStyles.p2Normal.copyWith(color: AppColor.black),
              alignment: ChartAlignment.near),
          primaryXAxis: NumericAxis(
            edgeLabelPlacement: EdgeLabelPlacement.none, // Remove X-axis labels
            isVisible: false,
          ),
          primaryYAxis: NumericAxis(
            edgeLabelPlacement: EdgeLabelPlacement.none, // Remove Y-axis labels
            isVisible: false,
          ),
          series: <LineSeries<ChartData, int>>[
            LineSeries<ChartData, int>(
              dataSource: _chartData,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y,
            ),
          ],
        ),
      ),
    );
  }
}

// Model class for chart data
class ChartData {
  final int x;
  final int y;

  ChartData(this.x, this.y);
}
