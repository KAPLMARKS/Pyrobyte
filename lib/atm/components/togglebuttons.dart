import 'package:flutter/material.dart';

class ToggleButtonsSample extends StatefulWidget {
  const ToggleButtonsSample({super.key});

  @override
  State<ToggleButtonsSample> createState() => _ToggleButtonsSampleState();
}

class _ToggleButtonsSampleState extends State<ToggleButtonsSample> {
  final List<Widget> modes = <Widget>[
    const Padding(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Text('Изпользуется'),
    ),
    const Padding(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Text('Не используется'),
    ),
  ];

  final List<bool> _selectedModes = <bool>[true, false];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return ToggleButtons(
        constraints: BoxConstraints(
          minWidth: constraints.maxWidth / 2 - 3,
          minHeight: 40,
          maxHeight: 40,
        ),
        onPressed: (int index) {
          setState(() {
            for (int i = 0; i < _selectedModes.length; i++) {
              _selectedModes[i] = i == index;
            }
          });
        },
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        selectedBorderColor: const Color(0xFF218CEF),
        selectedColor: Colors.white,
        fillColor: const Color(0xFF218CEF),
        color: const Color(0xFF218CEF),
        isSelected: _selectedModes,
        children: modes,
      );
    });
  }
}
