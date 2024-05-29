import 'package:template_app/app/core/models/button_model.dart';

class FooterModel {
  ButtonModel? footerButton;

  FooterModel({
    this.footerButton,
  });

  factory FooterModel.fromJson(Map<String, dynamic> json) {
    return FooterModel(
      footerButton: json['footerButton'] != null && json['footerButton'] != ""
          ? ButtonModel.fromJson(json['footerButton'])
          : null,
    );
  }
}
