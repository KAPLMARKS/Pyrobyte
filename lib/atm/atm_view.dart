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
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          const Text(
            'Торговые автоматы',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 24,
              color: Color(0xFF333333),
            ),
          ),
          const SizedBox(height: 16),
          const _VendingItem(),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const LoadingWidget(percentage: 85),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomOutlinedButton(
                      text: 'Загрузка',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      height: 48,
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomOutlinedButton(
                      text: 'Инветаризация',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      height: 48,
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const SubtitleWidget(title: 'События'),
          const SizedBox(height: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Event(time: '14:00', title: 'Cейф переполнен'),
              const SizedBox(height: 8),
              const Event(
                time: '11:20',
                title: 'Cломался купюроприемник',
                description: '2341245',
              ),
              const SizedBox(height: 8),
              const Event(
                time: '11:20',
                title: 'Закончилась наличка',
                description: 'Toshiba снековый',
              ),
              const SizedBox(height: 16),
              CustomOutlinedButton(
                text: 'Cмотреть еще',
                fontSize: 14,
                fontWeight: FontWeight.w300,
                height: 32,
                onPressed: () {},
              )
            ],
          ),
          const SizedBox(height: 16),
          const SubtitleWidget(title: 'Финансы'),
          const SizedBox(height: 16),
          SizedBox(
            height: 72,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                FinanceCard(
                    imageSrc: 'lib/assets/Money.png',
                    title: '5700 ₽',
                    description: 'Деньги в ТА'),
                SizedBox(width: 8),
                FinanceCard(
                    imageSrc: 'lib/assets/Cashback.png',
                    title: '1255 ₽',
                    description: 'Сдача'),
                SizedBox(width: 8),
                FinanceCard(
                    imageSrc: 'lib/assets/Money.png',
                    title: '5700 ₽',
                    description: 'Деньги в ТА'),
              ],
            ),
          ),
          const SizedBox(height: 64),
        ],
      ),
    );
  }
}

class _VendingItem extends StatelessWidget {
  const _VendingItem();

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 2),
            blurRadius: 4,
            color: Color(0x0A005BA9),
          ),
        ],
      ),
      child: const Padding(
        padding: EdgeInsets.fromLTRB(16, 8, 16, 16),
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
                DecoratedBox(
                  decoration: BoxDecoration(
                    color: Color(0xFFF97879),
                    shape: BoxShape.circle,
                  ),
                  child: SizedBox(
                    height: 8,
                    width: 8,
                  ),
                ),
                SizedBox(width: 8),
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
                Detail(title: 'Тип шины'),
                Detail(title: 'MDB'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Detail(title: 'Уровень сигнала'),
                Detail(title: 'Стабильный'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Detail(title: 'Идентификатор'),
                Detail(title: '13856646'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Detail(title: 'Модем'),
                Detail(title: '34634557365'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Detail extends StatelessWidget {
  const Detail({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.w300,
        fontSize: 14,
        color: Color(0xFF333333),
      ),
    );
  }
}
