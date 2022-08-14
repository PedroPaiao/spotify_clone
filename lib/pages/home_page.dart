import 'package:flutter/material.dart';
import 'package:spotify_clone/widgets/indications_section.dart';
import 'package:spotify_clone/widgets/see_again_section.dart';

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
          SingleChildScrollView(
            child: Column(
              children: const [
                Padding(padding: EdgeInsets.only(top: 68)),
                IndicationsSection(),
                Padding(padding: EdgeInsets.only(top: 20)),
                SeeAgainSection(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromRGBO(40, 40, 40, 1),
        fixedColor: const Color.fromRGBO(179, 179, 179, 1),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
            backgroundColor: Colors.white,
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
