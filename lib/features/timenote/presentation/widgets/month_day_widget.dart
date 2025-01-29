import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MonthDayWidget extends StatelessWidget {
  const MonthDayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 249, 247, 248),
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: const Color.fromARGB(255, 194, 194, 194)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    '17',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Romantic dinner',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Text(
                'Reservation for 10 days',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.black87,
                ),
              )
            ],
          ),
          Text(
            '...',
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 30,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
