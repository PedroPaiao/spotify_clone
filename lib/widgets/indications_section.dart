import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_clone/models/section_item.dart';
import 'package:spotify_clone/view_models/buenas_notches_view_model.dart';

class IndicationsSection extends StatelessWidget {
  const IndicationsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<SectionItem> list = Provider.of<BuenasNotchesViewModel>(context).list;

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
              itemCount: list.length,
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
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 200,
                          child: FittedBox(
                            alignment: Alignment.centerLeft,
                            fit: BoxFit
                                .fitHeight, // otherwise the logo will be tiny
                            child: Image(
                              image: AssetImage(list[index].image),
                              alignment: Alignment.centerLeft,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 110,
                        child: Text(
                          list[index].title,
                          style: const TextStyle(
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
