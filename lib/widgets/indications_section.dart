import 'package:flutter/material.dart';

class IndicationsSection extends StatelessWidget {
  const IndicationsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              '¡Buenas noches!',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 260,
            child: GridView.builder(
              itemCount: 6,
              shrinkWrap: false,
              padding: const EdgeInsets.only(top: 28),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 24 / 9,
              ),
              itemBuilder: (context, index) {
                return Card(
                  color: const Color.fromRGBO(40, 40, 40, 1),
                  child: Row(
                    children: const [
                      Expanded(
                        child: SizedBox(
                          height: 200,
                          child: FittedBox(
                            alignment: Alignment.centerLeft,
                            fit: BoxFit.fitHeight, // otherwise the logo will be tiny
                            child: Image(
                              image: AssetImage('assets/images/card_image.png'),
                              alignment: Alignment.centerLeft,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 110,
                        child: Text(
                          "Como Estrellas Radio",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
