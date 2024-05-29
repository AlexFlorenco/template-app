import 'dart:convert';
import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:template_app/app/core/models/page_model.dart';

class HomeRepository extends ChangeNotifier {
  static HomeRepository? _instance;

  HomeRepository._();

  static HomeRepository get instance {
    _instance ??= HomeRepository._();
    return _instance!;
  }

  PageModel homePage = PageModel();
  List<PageModel> categories = [];

  Future<void> getHome() async {
    try {
      log('getHome: Initiating...');
      final response = await http.get(
        Uri.parse('https://x8ki-letl-twmt.n7.xano.io/api:YGAulpxz/home'),
      );

      if (response.statusCode == 200) {
        log('getHome: Request OK');
        var responseDecode = json.decode(response.body);

        homePage = PageModel.fromJson(responseDecode[0]);
        log('getHome: Finish');
        notifyListeners();
        await getCategories();
      }
    } catch (e) {
      Exception('Erro ao carregar os dados.');
    }
  }

  Future<void> getCategories() async {
    try {
      log('getCategories: Initiating...');
      final response = await http.get(
        Uri.parse('https://x8ki-letl-twmt.n7.xano.io/api:YGAulpxz/categories'),
      );

      if (response.statusCode == 200) {
        log('getCategories: Request OK');
        var responseDecode = json.decode(response.body);
        responseDecode.forEach((element) {
          categories.add(PageModel.fromJson(element));
        });
        log('getCategories: Finish');
        notifyListeners();
      }
    } catch (e) {
      Exception('Erro ao carregar os dados.');
    }
  }
}
