import 'package:template_app/app/core/models/button_model.dart';

class HeaderModel {
  String? title;
  String? subtitle;
  List<ButtonModel>? headerButtons;

  HeaderModel({
    this.title,
    this.subtitle,
    this.headerButtons,
  });

  factory HeaderModel.fromJson(Map<String, dynamic> json) {
    return HeaderModel(
      title: json['title'] != null && json['title'] != "" ? json['title'] : null,
      subtitle: json['subtitle'] != null && json['subtitle'] != "" ? json['subtitle'] : null,
      headerButtons: json['headerButtons'] != null
          ? List<ButtonModel>.from(
              json['headerButtons'].map((x) => ButtonModel.fromJson(x)),
            )
          : null,
    );
  }
}
