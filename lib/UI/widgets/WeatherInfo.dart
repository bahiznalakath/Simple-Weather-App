import 'package:flutter/material.dart';

class WeatherInfoWidget extends StatelessWidget {
  final String title;
  final String value;
  final String imagePath;

  const WeatherInfoWidget({
    super.key,
    required this.title,
    required this.value,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
            )),
        Row(
          children: [
            Image.asset(
              imagePath,
              width: 16,
              height: 12,
            ),
            Text(value,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ))
          ],
        )
      ],
    );
  }
}
