import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:planner/features/timenote/presentation/widgets/month_day_widget.dart';

class TimeMonthPage extends ConsumerWidget {
  const TimeMonthPage({super.key});

  static const String route = '/month';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text(
          'Hi Emily!',
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        children: [
          Text('Events'),
          Flexible(
            child: ListView.separated(
              padding: const EdgeInsets.only(left: 10, right: 10),
              itemCount: 30,
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 10,
                );
              },
              itemBuilder: (context, index) {
                return MonthDayWidget();
              },
            ),
          ),
        ],
      ),
    );
  }
}
