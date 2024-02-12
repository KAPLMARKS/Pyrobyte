import 'package:flutter/material.dart';
import 'package:pyrobyte/atm/components/dynamic_list.dart';
import 'package:pyrobyte/atm/components/togglebuttons.dart';

import 'checkbox.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.95,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: const Color(0xFFF1F1F9),
              automaticallyImplyLeading: false,
              title: const Text(
                'Загрузка',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF333333),
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.close),
                  iconSize: 24,
                ),
              ],
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  color: const Color(0x1400BE08),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: SizedBox(
                      height: 80,
                      child: Row(
                        children: [
                          Image(
                            image:
                            AssetImage('lib/assets/check.png'),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Изменения от 12.07.2021, 12:30\nприменены успешно',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Color(0xFF333333),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 32, 16, 8),
                  child: Text(
                    'Decimal position',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF333333),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFD9E2F1),
                              ),
                            ),
                            border: OutlineInputBorder(),
                            label: Text(
                              'Cash',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                color: Color(0xFF999999),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Flexible(
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFD9E2F1),
                              ),
                            ),
                            border: OutlineInputBorder(),
                            label: Text(
                              'Cashless',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                color: Color(0xFF999999),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 32, 16, 8),
                  child: Text(
                    'Scale factor',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF333333),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFD9E2F1),
                              ),
                            ),
                            border: OutlineInputBorder(),
                            label: Text(
                              'Cash',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                color: Color(0xFF999999),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Flexible(
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFD9E2F1),
                              ),
                            ),
                            border: OutlineInputBorder(),
                            label: Text(
                              'Cashless',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                color: Color(0xFF999999),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                const Row(
                  children: [
                    CheckboxExample(),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      'Включить звук',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Color(0xFF999999),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 32, 16, 8),
                  child: Text(
                    'Режим мастер',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF333333),
                    ),
                  ),
                ),
                const Row(
                  children: [
                    Expanded(
                      child: ToggleButtonsSample(),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 32, 16, 8),
                  child: Text(
                    'Прайс листы',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF333333),
                    ),
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Последняя синхронизация с модемом'),
                    Text('1 час назад'),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('#'),
                    SizedBox(width: 64),
                    Text('Цена'),
                  ],
                ),
                const DynamicList(),
              ],
            ),
            bottomSheet: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              child: const Text('Fixed Button'),
            ),
        ),
      ),
    );
  }
}
