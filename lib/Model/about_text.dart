class AboutText {
  String? _desc;

  AboutText({required String desc}) {
    _desc = desc;
  }

  String get desc => _desc!;
  set desc(String desc) => _desc = desc;

  AboutText.fromJson(Map<String, dynamic> json) {
    _desc = json['desc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['desc'] = _desc;
    return data;
  }
}
