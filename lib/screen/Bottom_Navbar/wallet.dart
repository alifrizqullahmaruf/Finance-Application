import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class WalletScrreen extends StatefulWidget {
  const WalletScrreen({Key? key}) : super(key: key);

  @override
  State<WalletScrreen> createState() => _WalletScrreenState();
}

class _WalletScrreenState extends State<WalletScrreen> {
  late List<_ChartData> data;

  @override
  void initState() {
    data = [
      _ChartData('CHN', 12),
      _ChartData('GER', 15),
      _ChartData('RUS', 30),
      _ChartData('BRZ', 6.4),
      _ChartData('IND', 14)
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wallet Scrreen'),
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        actions: const [
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://i.pinimg.com/564x/9a/af/fe/9aaffe51e2dc86c1c88335143479adb6.jpg"),
          )
        ],
      ),
      body: Container(
        child: Card(
          color: Colors.white,
          child: Column(mainAxisSize: MainAxisSize.max, children: [
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Text('Your total balance'),
                        Spacer(),
                        Icon(Icons.more_rounded),
                      ],
                    ),
                    Text(
                      "\$500.00",
                      style: TextStyle(
                          color: Colors.blue.shade400,
                          fontSize: 30,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: SfCartesianChart(
                        primaryXAxis: const CategoryAxis(),
                        primaryYAxis:
                            const NumericAxis(minimum: 0, maximum: 40, interval: 10),
                        series: <CartesianSeries<_ChartData, String>>[
                          ColumnSeries<_ChartData, String>(
                              dataSource: data,
                              xValueMapper: (_ChartData data, _) => data.x,
                              yValueMapper: (_ChartData data, _) => data.y,
                              name: 'Gold',
                              color: Colors.blue)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}
