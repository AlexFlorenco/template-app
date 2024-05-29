// import 'dart:convert';
// import 'dart:developer';
// import 'dart:math';

// import 'package:flutter/widgets.dart';
// import 'package:http/http.dart' as http;
// import 'package:template_app/app/core/models/home_page_model.dart';
// import 'package:template_app/app/core/models/page_model.dart';
// import 'package:template_app/app/pages/home_page.dart';

// class MarkdownService extends ChangeNotifier {
//   static MarkdownService? _instance;

//   MarkdownService._();

//   static MarkdownService get instance {
//     _instance ??= MarkdownService._();
//     return _instance!;
//   }

//   List<PageModel> pages = [];
//   List<PageModel> programasSociaisCadastroUnico = [];

//   // HomePageModel homePage = HomePageModel(nomeApp: '', buttons: []);

//   // Future<void> getContent() async {
//   //   log('MarkdownService: Iniciando...');
//   //   try {
//   //     final response = await http.get(Uri.parse(
//   //         'https://x8ki-letl-twmt.n7.xano.io/api:mHz7L5SU/markdown_app'));

//   //     if (response.statusCode == 200 && response.body.isNotEmpty) {
//   //       var markdown = json.decode(response.body);

//   //       markdown.forEach((element) {
//   //         pages.add(PageModel.fromJson(element));
//   //       });
//   //       log('MarkdownService: OK');
//   //     } else {
//   //       Exception('Erro ao carregar os dados.');
//   //     }
//   //   } catch (e) {
//   //     if (e is FormatException) {
//   //       Exception('Erro ao converter os dados.');
//   //       return (null);
//   //     } else if (e is http.ClientException) {
//   //       Exception('Erro ao carregar os dados.');
//   //       return (null);
//   //     } else {
//   //       Exception('Erro ao carregar os dados.');
//   //       return (null);
//   //     }
//   //   }
//   // }

//   Future<void> getHome() async {
//     try {
//       final response = await http.get(Uri.parse(
//           'https://x8ki-letl-twmt.n7.xano.io/api:YGAulpxz/home'));

//       if (response.statusCode == 200 && response.body.isNotEmpty) {
//         var markdown = json.decode(response.body);
//         homePage = HomePageModel.fromJson(markdown[0]);
//         notifyListeners();
//       } else {
//         Exception('Erro ao carregar os dados.');
//       }
//     } catch (e) {
//       if (e is FormatException) {
//         Exception('Erro ao converter os dados.');
//         return (null);
//       } else if (e is http.ClientException) {
//         Exception('Erro ao carregar os dados.');
//         return (null);
//       } else {
//         Exception('Erro ao carregar os dados.');
//         return (null);
//       }
//     }
//     return null;
//   }

//   Future<List<dynamic>> getCadastroUnico() async {
//     try {
//       await _getCadastroUnicoProgramasSociais();
//       final response = await http.get(Uri.parse(
//           'https://x8ki-letl-twmt.n7.xano.io/api:mHz7L5SU/cadastro_unico'));

//       if (response.statusCode == 200 && response.body.isNotEmpty) {
//         var result = json.decode(response.body);
//         Map<String, dynamic> page = result[0]['page'];

//         if (page['cadastro_unico_programas_sociais_id']!.isNotEmpty) {
//           List<dynamic> teste = page['cadastro_unico_programas_sociais_id'];
//           // for (var element in teste) {
//           //   tempList.add(programasSociaisCadastroUnico[element - 1]);
//           // }
//           notifyListeners();
//           return teste;
//         }
//       }
//     } catch (e) {
//       Exception('Erro ao carregar os dados.');
//     }
//     return [];
//   }

//   Future<void> _getCadastroUnicoProgramasSociais() async {
//     try {
//       final response = await http.get(Uri.parse(
//           'https://x8ki-letl-twmt.n7.xano.io/api:mHz7L5SU/cadastro_unico_programas_sociais'));

//       if (response.statusCode == 200 && response.body.isNotEmpty) {
//         List<dynamic> result = json.decode(response.body);
//         result
//             .map(
//               (e) => programasSociaisCadastroUnico.add(PageModel.fromJson(e)),
//             )
//             .toList();

//         notifyListeners();
//       }
//     } catch (e) {
//       Exception('Erro ao carregar os dados.');
//     }
//   }



// }
