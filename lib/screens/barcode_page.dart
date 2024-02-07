import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math;

class BarCodePage extends StatelessWidget {
  const BarCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    String data = '1460123456789';
    double screenHeight = MediaQuery.sizeOf(context).height;
    TextStyle? textStyle = Theme.of(context).textTheme.bodyMedium?.copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w400,
    );
    return Material(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF1A1A18),
          leading: InkWell(
            onTap: () => Navigator.of(context).pop(),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: SvgPicture.asset('assets/images/back_icon.svg'),
            ),
          ),
        ),
        backgroundColor: const Color(0xFF1A1A18),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Stack(
            children: [
              Transform.scale(
                alignment: Alignment.topCenter,
                scaleY: screenHeight / 420,
                child: Transform.rotate(
                  angle: math.pi / 2,
                  child: SizedBox(
                    key: const Key('bar_code'),
                    height: MediaQuery.sizeOf(context).width - 32,
                    child: DecoratedBox(
                      decoration: const BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.all(Radius.circular(16))),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                          right: 16,
                          top: 8,
                          bottom: 24,
                        ),
                        child: BarcodeWidget(
                          barcode: Barcode.code128(),
                          data: data,
                          drawText: false,
                          errorBuilder: (context, error) => Center(
                            child: Text(error),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, left: 24),
                child: Transform.rotate(
                  alignment: Alignment.topLeft,
                  angle: math.pi / 2,
                  child: SizedBox(
                    width: MediaQuery.sizeOf(context).width,
                    child: Text(
                      'номер карты',
                      style: textStyle,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 16, left: 24),
                  child: Transform.rotate(
                    alignment: Alignment.topLeft,
                    angle: math.pi / 2,
                    child: SizedBox(
                      width: MediaQuery.sizeOf(context).width,
                      child: Text(
                        data,
                        style: textStyle?.copyWith(color: Colors.red),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}