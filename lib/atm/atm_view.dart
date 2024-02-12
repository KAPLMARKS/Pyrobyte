import 'package:flutter/material.dart';
import 'package:pyrobyte/atm/components/custom_bottom_sheet.dart';
import 'package:pyrobyte/atm/components/custom_outlined_button.dart';
import 'package:pyrobyte/atm/components/event.dart';
import 'package:pyrobyte/atm/components/finance_card.dart';
import 'package:pyrobyte/atm/components/loading_widget.dart';
import 'package:pyrobyte/atm/components/subtitile_widget.dart';

class Atm extends StatelessWidget {
  const Atm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.settings,
            ),
            onPressed: () {
              showModalBottomSheet<void>(
                context: context,
                isScrollControlled: true,
                useSafeArea: true,
                builder: (BuildContext context) {
                  return const CustomBottomSheet();
                },
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 8, 20, 24),
            child: Text(
              'Торговые автоматы',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 24,
                color: Color(0xFF333333),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: _VendingItem(),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 24, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                LoadingWidget(percentage: 85),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CustomOutlinedButton(text: 'Загрузка'),
                      SizedBox(
                        height: 16,
                      ),
                      CustomOutlinedButton(text: 'Инветаризация')
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SubtitleWidget(title: 'События'),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Event(time: '14:00', title: 'Cейф переполнен'),
              ),
              const SizedBox(height: 8),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Event(
                  time: '11:20',
                  title: 'Cломался купюроприемник',
                  description: '2341245',
                ),
              ),
              const SizedBox(height: 8),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Event(
                  time: '11:20',
                  title: 'Закончилась наличка',
                  description: 'Toshiba снековый',
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    side: const BorderSide(
                      color: Color(0xFF218CEF),
                    ),
                  ),
                  child: const Text(
                    'Смотреть еще',
                    style: TextStyle(
                      color: Color(0xFF218CEF),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SubtitleWidget(title: 'Финансы'),
          SizedBox(
            height: 72,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  FinanceCard(
                      imageSrc: 'lib/assets/Money.png',
                      title: '5700 ₽',
                      description: 'Деньги в ТА'),
                  FinanceCard(
                      imageSrc: 'lib/assets/Cashback.png',
                      title: '1255 ₽',
                      description: 'Сдача'),
                  FinanceCard(
                      imageSrc: 'lib/assets/Money.png',
                      title: '5700 ₽',
                      description: 'Деньги в ТА'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _VendingItem extends StatelessWidget {
  const _VendingItem();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      color: const Color(0xFFFFFFFF),
      child: const Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Снековый',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 12,
                  color: Color(0xFF999999),
                ),
              ),
            ),
            Text(
              '54467345',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 24,
                color: Color(0xFF333333),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Color(0xFFF97879),
                      shape: BoxShape.circle,
                    ),
                    child: SizedBox(
                      height: 8,
                      width: 8,
                    ),
                  ),
                ),
                Text(
                  'Не работает',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    color: Color(0xFF333333),
                  ),
                ),
              ],
            ),
            Text(
              'TЦ Мега, Химки',
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 12,
                  color: Color(0xFF999999)),
            ),
            Divider(
              color: Color(0xFFF1F1F9),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Тип шины',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    color: Color(0xFF333333),
                  ),
                ),
                Text(
                  'MDB',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    color: Color(0xFF333333),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Уровень сигнала',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    color: Color(0xFF333333),
                  ),
                ),
                Text(
                  'Стабильный',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    color: Color(0xFF333333),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Идентификатор',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    color: Color(0xFF333333),
                  ),
                ),
                Text(
                  '13856646',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    color: Color(0xFF333333),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Модем',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    color: Color(0xFF333333),
                  ),
                ),
                Text(
                  '3463457365',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
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
