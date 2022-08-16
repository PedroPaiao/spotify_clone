class SectionItem {
  String? _title;
  String? _image;

  SectionItem({String? title, String? image}) {
    if (title != null) {
      _title = title;
    }
    if (image != null) {
      _image = image;
    }
  }

  set title(String? title) => _title = title;
  set image(String? image) => _image = image;
  String get title => _title ?? '';
  String get image => _image ?? '';

  SectionItem.fromJson(Map<String, dynamic> json) {
    _title = json['title'];
    _image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = _title;
    data['image'] = _image;
    return data;
  }
}
