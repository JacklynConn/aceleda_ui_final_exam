import 'package:acleda_final_exam/pages/mobile_topup_detail.dart';
import 'package:flutter/material.dart';
import '../pages/payment_detail.dart';

class GridWidget extends StatelessWidget {
  const GridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      mainAxisSpacing: 1,
      crossAxisSpacing: 1,
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PaymentDetail(),
              ),
            );
          },
          child: Container(
            color: const Color(0xff1c3352),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.payment,
                  size: 55,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Payments",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MobileTopUpDetail(),
              ),
            );
          },
          child: Container(
            color: const Color(0xff1b3252),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.mobile_friendly_sharp,
                  size: 50,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Mobile Topup",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          color: const Color(0xff1b3252),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.repeat,
                size: 50,
                color: Colors.white,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Transfers",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        Container(
          color: const Color(0xff1b3252),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.receipt_long,
                size: 50,
                color: Colors.white,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Pay-Me",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        Container(
          color: const Color(0xff1b3252),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.qr_code_scanner,
                size: 50,
                color: Colors.white,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Scan QR",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        Container(
          color: const Color(0xff1b3252),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.wallet_rounded,
                size: 50,
                color: Colors.white,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Account",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        Container(
          color: const Color(0xff1b3252),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.auto_graph_outlined,
                size: 50,
                color: Colors.white,
              ),
              Text(
                "Deposits",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        Container(
          color: const Color(0xff1b3252),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.attach_money,
                size: 50,
                color: Colors.white,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Loans",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        Container(
          color: const Color(0xff1b3252),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.widgets,
                size: 50,
                color: Colors.white,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Quick Case",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
