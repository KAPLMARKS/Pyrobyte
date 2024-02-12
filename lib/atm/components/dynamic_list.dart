import 'package:flutter/material.dart';
import 'package:pyrobyte/atm/components/custom_outlined_button.dart';

class DynamicList extends StatefulWidget {
  const DynamicList({super.key});

  @override
  _RowListWidgetState createState() => _RowListWidgetState();
}

class _RowListWidgetState extends State<DynamicList> {
  List<Widget> rows = [];

  void addRow() {
    setState(() {
      late Widget row;
      row = Column(
        children: [
          SizedBox(
            height: 40,
            child: Row(
              children: [
                const SizedBox(
                  width: 56,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFD9E2F1),
                        ),
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                const SizedBox(
                  width: 104,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFD9E2F1),
                        ),
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.close),
                  color: const Color(0xFFE63426),
                  style: IconButton.styleFrom(backgroundColor: const Color(0x14F97879)),
                  onPressed: () {
                    removeRow(row);
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 8,),
        ],
      );
      rows.add(row);
    });
  }

  void removeRow(Widget row) {
    setState(() {
      rows.remove(row);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ...rows,
        CustomOutlinedButton(
          text: 'Добавить строку',
          fontSize: 14,
          fontWeight: FontWeight.w300,
          height: 32,
          onPressed: addRow,
        ),
      ],
    );
  }
}
