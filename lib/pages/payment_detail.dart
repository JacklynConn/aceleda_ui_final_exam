import 'package:flutter/material.dart';

class PaymentDetail extends StatefulWidget {
  const PaymentDetail({super.key});

  @override
  State<PaymentDetail> createState() => _PaymentDetailState();
}

class _PaymentDetailState extends State<PaymentDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff224269),
        title: const Text('Payment Detail'),
      ),
    );
  }
}
