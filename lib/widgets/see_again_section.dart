import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_clone/models/section_item.dart';
import 'package:spotify_clone/view_models/buenas_notches_view_model.dart';

class SeeAgainSection extends StatelessWidget {
  const SeeAgainSection({Key? key}) : super(key: key);

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
              'Vuelve a...',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 10),
          ),
          SizedBox(
            height: 400,
            child: ListView.builder(
              itemCount: list.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        margin: EdgeInsets.zero,
                        child: Image.asset(
                          list[index].image,
                          fit: BoxFit.fill,
                          height: 142,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          top: 4,
                        ),
                      ),
                      Text(
                        list[index].title,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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
