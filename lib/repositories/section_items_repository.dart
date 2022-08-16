import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:spotify_clone/models/section_item.dart';

class SectionItemsRepository {
  Future<List<SectionItem>> fetchTechList() async {
    return await parseJson();
  }

  Future<String> _loadFromAsset() async {
    return await rootBundle.loadString("lib/repositories/buenas_notches.json");
  }

  Future parseJson() async {
    String jsonString = await _loadFromAsset();
    List<dynamic> list = jsonDecode(jsonString);
    return list.map((item) => SectionItem.fromJson(item)).toList();
  }
}
