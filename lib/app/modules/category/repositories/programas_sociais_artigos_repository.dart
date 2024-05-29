// import 'dart:convert';
// import 'dart:developer';

// import 'package:flutter/widgets.dart';
// import 'package:http/http.dart' as http;
// import 'package:template_app/app/core/models/body_model.dart';
// import 'package:template_app/app/core/models/button_model.dart';
// import 'package:template_app/app/core/models/footer_model.dart';
// import 'package:template_app/app/core/models/header_model.dart';
// import 'package:template_app/app/core/models/page_model.dart';

// class ProgramasSociaisArtigosRepository extends ChangeNotifier {
//   static ProgramasSociaisArtigosRepository? _instance;

//   ProgramasSociaisArtigosRepository._();

//   static ProgramasSociaisArtigosRepository get instance {
//     _instance ??= ProgramasSociaisArtigosRepository._();
//     return _instance!;
//   }

//   List<PageModel> programasSociaisArtigos = [];

//   Future<void> getProgramasSociaisArtigos() async {
//     try {
//       log('getProgramasSociaisArtigos: Initiating...');
//       final response = await http.get(
//         Uri.parse(
//             'https://x8ki-letl-twmt.n7.xano.io/api:YGAulpxz/cadastro_unico_programas_sociais'),
//       );

//       if (response.statusCode == 200 && response.body.isNotEmpty) {
//         log('getProgramasSociaisArtigos: Request OK');
//         var responseDecode = json.decode(response.body);

//         programasSociaisPage = PageModel.fromJson(responseDecode[0]);
//         log('getProgramasSociaisArtigos: Finish');
//         notifyListeners();
//       }
//     } catch (e) {
//       Exception('Erro ao carregar os dados.');
//     }
//   }
// }
