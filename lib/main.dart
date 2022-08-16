import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_clone/pages/home_page.dart';
import 'package:spotify_clone/view_models/buenas_notches_view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const InitialScreen();
  }
}

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BuenasNotchesViewModel>(
      create: (context) => BuenasNotchesViewModel()..fetchItemList(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Spotify Study Clone',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
        routes: const {},
      ),
    );
  }
}
