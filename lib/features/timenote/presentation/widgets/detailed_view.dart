import 'package:flutter/material.dart';

class DetailedView extends StatelessWidget {
  final String title;
  final String subtitle;
  final String time;
  final List<String> avatars;
  final List<Map<String, String>> agenda;

  const DetailedView({
    super.key,
    required this.title,
    required this.subtitle,
    required this.time,
    required this.avatars,
    required this.agenda,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.close, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.edit, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(subtitle, style: TextStyle(color: Colors.black54)),
            SizedBox(height: 20),
            Row(
              children: avatars.map((avatar) {
                return CircleAvatar(
                  backgroundImage: NetworkImage(avatar),
                  radius: 20,
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            Text(
              'Plan',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ...agenda.map((item) {
              return Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(item['task']!),
                    Text(item['time']!),
                  ],
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
