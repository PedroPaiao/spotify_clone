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
            height: 400,
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                return Card(
                  child: Text(index.toString()),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
