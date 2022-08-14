import 'package:flutter/material.dart';
import 'package:spotify_clone/widgets/indications_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color.fromRGBO(18, 18, 18, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings_outlined),
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                alignment: FractionalOffset.topCenter,
                image: AssetImage('assets/images/bg_home_page.png'),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Column(
            children: const [
              Padding(padding: EdgeInsets.only(top: 30)),
              IndicationsSection()
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Buscar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Tu biblioteca',
          ),
        ],
      ),
    );
  }
}
