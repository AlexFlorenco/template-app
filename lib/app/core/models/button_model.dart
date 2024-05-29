class ButtonModel {
  String? icon;
  String? label;
  String? sublabel;
  String? route;
  String? type;

  ButtonModel({
    this.icon,
    this.label,
    this.sublabel,
    this.route,
    this.type,
  });

  factory ButtonModel.fromJson(Map<String, dynamic> json) {
    return ButtonModel(
      icon: json['icon'] != null && json['icon'] != "" ? json['icon'] : null,
      label: json['label'] != null && json['label'] != "" ? json['label'] : null,
      sublabel: json['sublabel'] != null && json['sublabel'] != "" ? json['sublabel'] : null,
      route: json['route'] != null && json['route'] != "" ? json['route'] : null,
      type: json['type'] != null && json['type'] != "" ? json['type'] : null,
    );
  }
}
