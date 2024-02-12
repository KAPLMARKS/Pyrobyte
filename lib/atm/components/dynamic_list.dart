import 'package:flutter/material.dart';

class DynamicList extends StatefulWidget {
  const DynamicList({super.key});

  @override
  _RowListWidgetState createState() => _RowListWidgetState();
}

class _RowListWidgetState extends State<DynamicList> {
  List<Widget> rows = []; // Список виджетов Row

  void addRow() {
    setState(() {
      rows.add(
        SizedBox(
          height: 40,
          child: Row(
            children: [
              const Flexible(
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFD9E2F1),
                      ),
                    ),
                    border: OutlineInputBorder(),
                    hintText: 'Enter a number',
                  ),
                ),
              ),
              const Flexible(
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFD9E2F1),
                      ),
                    ),
                    border: OutlineInputBorder(),
                    hintText: 'Enter a number',
                  ),
                ),
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  removeRow(rows.length);
                },
              ),
            ],
          ),
        ),
      );
    });
  }

  void removeRow(int index) {
    setState(() {
      rows.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: rows,
        ),
        OutlinedButton(
          onPressed: addRow,
          child: const Text('Добавить строку'),
        ),
      ],
    );
  }
}
