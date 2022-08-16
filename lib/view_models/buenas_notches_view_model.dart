import 'package:flutter/material.dart';
import 'package:spotify_clone/models/section_item.dart';
import 'package:spotify_clone/repositories/section_items_repository.dart';

class BuenasNotchesViewModel with ChangeNotifier {
  List<SectionItem> _list = [];

  Future<void> fetchItemList() async {
    _list = await SectionItemsRepository().fetchTechList();
    notifyListeners();
  }

  get list => _list;
}
