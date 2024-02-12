import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class LoadingWidget extends StatefulWidget {
  final int percentage;

  const LoadingWidget({Key? key, required this.percentage}) : super(key: key);

  @override
  _LoadingWidgetState createState() => _LoadingWidgetState();
}

class _LoadingWidgetState extends State<LoadingWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _animation = Tween<double>(begin: 0, end: widget.percentage.toDouble())
        .animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      elevation: 2,
      child: SizedBox(
        height: 160,
        width: 160,
        child: Stack(
          children: [
            WaveWidget(
              config: CustomConfig(
                colors: [const Color(0x7A218CEF)],
                durations: [18000],
                heightPercentages: [(100 - _animation.value) / 100],
              ),
              size: const Size(double.infinity, double.infinity),
              waveAmplitude: 0,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${_animation.value.toInt()}%',
                    style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF333333),
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    'Текущий уровень\nзагрузки',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF333333),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}