// import 'package:template_app/app/core/models/body_model.dart';
// import 'package:template_app/app/core/models/button_model.dart';
// import 'package:template_app/app/core/models/footer_model.dart';
// import 'package:template_app/app/core/models/header_model.dart';

// class CategoryModel {
//   final HeaderModel header;
//   final BodyModel? body;
//   final List<ButtonModel>? bodyButtons;
//   final FooterModel? footer;
//   final List<CategoryModel>? articles;

//   CategoryModel({
//     required this.header,
//     this.body,
//     this.bodyButtons,
//     this.footer,
//     this.articles,
//   });

//   factory CategoryModel.fromJson(Map<String, dynamic> json) {
//     return CategoryModel(
//       header: HeaderModel.fromJson(json['header']),
//       body: json['body'] != null ? BodyModel.fromJson(json['body']) : null,
//       bodyButtons: json['body_buttons'] != null
//           ? List<ButtonModel>.from(
//               json['body_buttons'].map((x) => ButtonModel.fromJson(x)))
//           : null,
//       footer: json['footer'] != null && json['footer'] != ""
//           ? FooterModel.fromJson(json['footer'])
//           : null,
//       articles: json['articles'] != null && json['articles'] != ""
//           ? List<CategoryModel>.from(
//               json['articles'].map((x) => CategoryModel.fromJson(x)))
//           : null,
//     );
//   }
// }
