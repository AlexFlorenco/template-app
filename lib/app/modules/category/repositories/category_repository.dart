// import 'dart:convert';
// import 'dart:developer';

// import 'package:flutter/widgets.dart';
// import 'package:http/http.dart' as http;
// import 'package:template_app/app/core/models/body_model.dart';
// import 'package:template_app/app/core/models/button_model.dart';
// import 'package:template_app/app/core/models/footer_model.dart';
// import 'package:template_app/app/core/models/header_model.dart';
// import 'package:template_app/app/modules/category/models/category_model.dart';
// import 'package:template_app/app/modules/category/repositories/i_category_repository.dart';

// class CategoryRepository extends ChangeNotifier implements ICategoryRepository {
//   static CategoryRepository? _instance;

//   CategoryRepository._();

//   static CategoryRepository get instance {
//     _instance ??= CategoryRepository._();
//     return _instance!;
//   }

//   @override
//   PageModel pageModel = PageModel(
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

//   @override
//   Future<void> getContent() async {
//     try {
//       log('getContent: Initiating...');
//       final response = await http.get(
//         Uri.parse(
//             'https://x8ki-letl-twmt.n7.xano.io/api:YGAulpxz/cadastro_unico'),
//       );

//       if (response.statusCode == 200 && response.body.isNotEmpty) {
//         log('getContent: Request OK');
//         var responseDecode = json.decode(response.body);

//         pageModel = PageModel.fromJson(responseDecode[0]);
//         log('getContent: Finish');
//         notifyListeners();
//       }
//     } catch (e) {
//       Exception('Erro ao carregar os dados.');
//     }
//   }
// }
