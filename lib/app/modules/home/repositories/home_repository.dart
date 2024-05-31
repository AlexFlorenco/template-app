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
  List<PageModel> homeCategories = [];

  PageModel cadastroUnicoProgramasSociaisPage = PageModel();
  List<PageModel> cadastroUnicoProgramasSociaisArticles = [];

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
        homePage.categories = await getHomeCategories();

        log('getHome: Finish');
        notifyListeners();

        await getCadastroUnicoProgramasSociais();
        // await getCadastroUnicoProgramasSociaisArtigos();
      }
    } catch (e) {
      Exception('Erro ao carregar os dados.');
    }
  }

  Future<List<PageModel>?> getHomeCategories() async {
    try {
      log('getHomeCategories: Initiating...');
      final response = await http.get(
        Uri.parse('https://x8ki-letl-twmt.n7.xano.io/api:YGAulpxz/categories'),
      );

      if (response.statusCode == 200) {
        log('getHomeCategories: Request OK');
        var responseDecode = json.decode(response.body);

        responseDecode.forEach((element) {
          homeCategories.add(PageModel.fromJson(element));
        });

        log('getHomeCategories: Finish');
        notifyListeners();

        return homeCategories;
      }
    } catch (e) {
      Exception('Erro ao carregar os dados.');
    }
    return null;
  }

  Future<void> getCadastroUnicoProgramasSociais() async {
    try {
      log('getCadastroUnicoProgramasSociais: Initiating...');
      final response = await http.get(
        Uri.parse(
            'https://x8ki-letl-twmt.n7.xano.io/api:YGAulpxz/cadastro_unico_programas_sociais'),
      );

      if (response.statusCode == 200) {
        log('getCadastroUnicoProgramasSociais: Request OK');
        var responseDecode = json.decode(response.body);

        cadastroUnicoProgramasSociaisPage =
            PageModel.fromJson(responseDecode[0]);

        cadastroUnicoProgramasSociaisPage.articles =
            await getCadastroUnicoProgramasSociaisArtigos();

        log('getCadastroUnicoProgramasSociais: Finish');
        notifyListeners();
      }
    } catch (e) {
      Exception('Erro ao carregar os dados.');
    }
  }

  Future<List<PageModel>?> getCadastroUnicoProgramasSociaisArtigos() async {
    try {
      log('getCadastroUnicoProgramasSociaisArtigos: Initiating...');
      final response = await http.get(
        Uri.parse(
            'https://x8ki-letl-twmt.n7.xano.io/api:YGAulpxz/cadastro_unico_programas_sociais_artigos'),
      );

      if (response.statusCode == 200) {
        log('getCadastroUnicoProgramasSociaisArtigos: Request OK');
        var responseDecode = json.decode(response.body);
        responseDecode.forEach((element) {
          cadastroUnicoProgramasSociaisArticles
              .add(PageModel.fromJson(element));
        });
        log('getCadastroUnicoProgramasSociaisArtigos: Finish');
        notifyListeners();
        return cadastroUnicoProgramasSociaisArticles;
      }
    } catch (e) {
      Exception('Erro ao carregar os dados.');
    }
    return null;
  }
}
