import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final double weight;
  final double height;

  const SecondScreen({required this.weight, required this.height});

  @override
  Widget build(BuildContext context) {
    final bmi = weight / ((height / 100) * (height / 100));
    String bmiCategory;

    if (bmi < 18.5) {
      bmiCategory = 'Недостаточный вес';
    } else if (bmi >= 18.5 && bmi < 25) {
      bmiCategory = 'Нормальный вес';
    } else if (bmi >= 25 && bmi < 30) {
      bmiCategory = 'Избыточный вес';
    } else {
      bmiCategory = 'Ожирение';
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Результат ИМТ')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Ваш ИМТ: ${bmi.toStringAsFixed(1)}',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            Text(
              'Категория: $bmiCategory',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Вернуться'),
            ),
          ],
        ),
      ),
    );
  }
}
