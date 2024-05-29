// import 'dart:convert';
// import 'dart:developer';

// import 'package:flutter/widgets.dart';
// import 'package:http/http.dart' as http;
// import 'package:template_app/app/core/models/body_model.dart';
// import 'package:template_app/app/core/models/button_model.dart';
// import 'package:template_app/app/core/models/footer_model.dart';
// import 'package:template_app/app/core/models/header_model.dart';
// import 'package:template_app/app/core/models/page_model.dart';

// class ProgramasSociaisRepository extends ChangeNotifier {
//   static ProgramasSociaisRepository? _instance;

//   ProgramasSociaisRepository._();

//   static ProgramasSociaisRepository get instance {
//     _instance ??= ProgramasSociaisRepository._();
//     return _instance!;
//   }

//   PageModel programasSociaisPage = PageModel(
//     header: HeaderModel(
//       title: '',
//       subtitle: '',
//       buttons: [],
//     ),
//     body: BodyModel(body: ''),
//     bodyButtons: [],
//     footer: FooterModel(
//       button: ButtonModel(
//         icon: '',
//         label: '',
//         sublabel: '',
//         route: '',
//       ),
//     ),
//   );

//   Future<void> getProgramasSociais() async {
//     try {
//       log('getProgramasSociais: Initiating...');
//       final response = await http.get(
//         Uri.parse(
//             'https://x8ki-letl-twmt.n7.xano.io/api:YGAulpxz/cadastro_unico_programas_sociais'),
//       );

//       if (response.statusCode == 200 && response.body.isNotEmpty) {
//         log('getProgramasSociais: Request OK');
//         var responseDecode = json.decode(response.body);

//         programasSociaisPage = PageModel.fromJson(responseDecode[0]);
//         log('getProgramasSociais: Finish');
//         notifyListeners();
//       }
//     } catch (e) {
//       Exception('Erro ao carregar os dados.');
//     }
//   }
// }
