import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          // color: Colors.red,
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.only(top: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    'https://img.freepik.com/free-photo/business-finance-employment-female-successful-entrepreneurs-concept-confident-professional-female-asian-real-estate-broker-showing-good-deal-pointing-upper-right-corner-smiling_1258-96626.jpg?w=1060&t=st=1691508190~exp=1691508790~hmac=ae17da80ae0fa372e8f9eb7df2ce51bd82c1f071f28b4e493d4c738d7c682f6a',
                    fit: BoxFit.cover,
                    height: 200,
                    width: double.infinity,
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 40,
          child: Container(
            padding: const EdgeInsets.only(left: 20, top: 10),
            width: 500,
            height: 90,
            color: Colors.black.withOpacity(0.1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Hello HOUR PORSAING !",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    const Text(
                      "Get high interest for term deposits",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        shadows: [
                          Shadow(
                            blurRadius: 1.0,
                            color: Colors.black38,
                            offset: Offset(1.0, 1.0),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 50),
                      width: 130,
                      height: 38,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        color: const Color(
                          0xffdbb533,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Click Here",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
