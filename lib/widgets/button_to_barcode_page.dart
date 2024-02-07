import 'package:bar_code/screens/barcode_page.dart';
import 'package:flutter/material.dart';

class ButtonToBarcodePage extends StatelessWidget {
  const ButtonToBarcodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: const Color.fromARGB(255, 60, 60, 60),
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const BarCodePage(),
        ));
      },
      child: const Text(
        'Страница штрих-кода',
        style: TextStyle(
            color: Color(0xFFFFFFFF),
            fontWeight: FontWeight.w500,
            fontSize: 20),
      ),
    );
  }
}
