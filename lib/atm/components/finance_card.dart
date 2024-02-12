import 'package:flutter/material.dart';

class FinanceCard extends StatelessWidget {
  const FinanceCard(
      {Key? key,
      required this.imageSrc,
      required this.title,
      required this.description})
      : super(key: key);

  final String imageSrc;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      elevation: 2,
      color: const Color(0xFFFFFFFF),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image(
              image: AssetImage(imageSrc),
            ),
            const SizedBox(width: 8),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF333333),
                  ),
                ),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF333333),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
