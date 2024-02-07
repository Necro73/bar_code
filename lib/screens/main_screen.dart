import 'package:bar_code/widgets/button_to_barcode_page.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(backgroundColor: const Color.fromARGB(255, 60, 60, 60)),
        backgroundColor: const Color(0xFF1A1A18),
        body: Padding(
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ButtonToBarcodePage(),
            ],
          ),
        ),
      ),
    );
  }
}
