import 'package:flutter/material.dart';
import 'package:planner/features/timenote/presentation/widgets/date_selector.dart';
import 'package:planner/features/timenote/presentation/widgets/event_card.dart';

class UsagePage extends StatelessWidget {
  const UsagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          DateSelector(),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(20),
              children: [
                EventCard(
                  title: 'Team Meeting',
                  subtitle: 'Discussing the project with the team',
                  time: '10:00 - 11:00 AM',
                  duration: '1h',
                  color: Colors.yellowAccent,
                  avatars: [
                    'https://placehold.co/150',
                    'https://placehold.co/150',
                  ],
                ),
                EventCard(
                  title: 'One-to-one',
                  subtitle: 'Repeats every two weeks',
                  time: '12:00 - 1:00 PM',
                  duration: '1h',
                  color: Colors.white,
                  avatars: [
                    'https://placehold.co/150',
                    'https://placehold.co/150',
                  ],
                ),
                // More EventCards...
              ],
            ),
          ),
        ],
      ),
    );
  }
}
