// import 'package:template_app/app/core/models/button_model.dart';
import 'package:template_app/app/core/models/footer_model.dart';
import 'package:template_app/app/core/models/header_model.dart';

class PageModel {
  final HeaderModel? header;
  final String? markdown;
  final FooterModel? footer;

  List<PageModel>? categories;
  List<PageModel>? articles;
  List<PageModel>? tools;
  List<PageModel>? highlights;

  PageModel({
    this.header,
    this.markdown,
    this.footer,
    this.articles,
    this.categories,
    this.tools,
    this.highlights,
  });

  factory PageModel.fromJson(Map<String, dynamic> json) {
    return PageModel(
      header: json['header'] != null && json['header'] != ""
          ? HeaderModel.fromJson(json['header'])
          : null,
      markdown: json['markdown'],
      footer: json['footer'] != null && json['footer'] != ""
          ? FooterModel.fromJson(json['footer'])
          : null,
      // articles: json['articles'] != null && json['articles'] != ""
      //     ? List<PageModel>.from(
      //         json['articles'].map((x) => PageModel.fromJson(x)),
      //       )
      //     : null,
      // categories: json['categories'] != null && json['categories'] != ""
      //     ? List<PageModel>.from(
      //         json['categories'].map((x) => PageModel.fromJson(x)),
      //       )
      //     : null,
      // tools: json['tools'] != null && json['tools'] != ""
      //     ? List<PageModel>.from(
      //         json['tools'].map((x) => PageModel.fromJson(x)),
      //       )
      //     : null,
      // highlights: json['highlights'] != null && json['highlights'] != ""
      //     ? List<PageModel>.from(
      //         json['highlights'].map((x) => PageModel.fromJson(x)),
      //       )
      //     : null,
    );
  }
}
