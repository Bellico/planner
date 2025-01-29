import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String time;
  final String duration;
  final Color color;
  final List<String> avatars;

  const EventCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.time,
    required this.duration,
    required this.color,
    required this.avatars,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                time,
                style: TextStyle(color: Colors.black54),
              ),
              SizedBox(height: 5),
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                subtitle,
                style: TextStyle(color: Colors.black54),
              ),
            ],
          ),
          Spacer(),
          Row(
            children: avatars.map((avatar) {
              return CircleAvatar(
                backgroundImage: NetworkImage(avatar),
                radius: 15,
              );
            }).toList(),
          ),
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
