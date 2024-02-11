import 'package:flutter/material.dart';

class Event extends StatelessWidget {
  const Event({
    super.key,
    required this.time,
    required this.title,
    this.description,
  });

  final String time;

  final String title;

  final String? description;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: const Color(0xFFFFFFFF),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const DecoratedBox(
            decoration: BoxDecoration(
              color: Color(0xFFE63426),
            ),
            child: SizedBox(
              height: 48,
              width: 2,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            time,
            style: const TextStyle(
              color: Color(0x29333333),
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
          const SizedBox(width: 16),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Color(0xFF333333),
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              if (description != null)
                Text(
                  description!,
                  style: const TextStyle(
                    color: Color(0xFFCCCCCC),
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
            ],
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.chevron_right),
            color: const Color(0xFFD9E2F1),
          )
        ],
      ),
    );
  }
}
