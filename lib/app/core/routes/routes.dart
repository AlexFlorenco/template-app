import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:template_app/app/modules/home/pages/home_page.dart';
import 'package:template_app/app/modules/home/pages/loading_page.dart';
import 'package:template_app/app/modules/home/repositories/home_repository.dart';

var homeRepository = HomeRepository.instance;

final routes = GoRouter(
  initialLocation: '/loading',
  routes: [
    GoRoute(
      path: '/loading',
      builder: (context, state) {
        return const LoadingPage();
      },
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) {
        return HomePage(
          pageModel: homeRepository.homePage,
        );
      },
    ),
    GoRoute(
      path: '/home/:category',
      builder: (context, state) {
        switch (state.pathParameters['category']) {
          case 'bolsaFamilia':
            return HomePage(
              pageModel: homeRepository.homeCategories[0],
            );
          case 'cadastroUnico':
            return HomePage(
              pageModel: homeRepository.homeCategories[1],
            );

          default:
            return HomePage(
              pageModel: homeRepository.homePage,
            );
        }
      },
    ),
    GoRoute(
      path: '/home/:category/:article',
      builder: (context, state) {
        switch (state.pathParameters['category']) {
          case 'bolsaFamilia':
            return HomePage(
              pageModel: homeRepository.homeCategories[0],
            );
          case 'cadastroUnico':
            switch (state.pathParameters['article']) {
              case 'programasSociais':
                return HomePage(
                  pageModel: homeRepository.cadastroUnicoProgramasSociaisPage,
                );
            }
            return HomePage(
              pageModel: homeRepository.homeCategories[1],
            );

          default:
            return HomePage(
              pageModel: homeRepository.homePage,
            );
        }
      },
    ),
    // GoRoute(
    //   path: '/bolsa_familia',
    //   builder: (context, state) => const BolsaFamiliaPage(),
    // ),
    // GoRoute(
    //   path: '/cadastro_unico',
    //   builder: (context, state) => const CadastroUnicoPage(),
    // ),
    // GoRoute(
    //   path: '/cadastro_unico/programas_sociais',
    //   builder: (context, state) => const ProgramasSociaisPage(),
    // ),
    // GoRoute(
    //   path: '/:path/:rota/:id',
    //   builder: (context, state) {
    //     var path = MarkdownService.instance.programasSociaisCadastroUnico
    //         .firstWhere((element) =>
    //             element.id == int.parse(state.pathParameters['id']!));

    //     if (state.pathParameters['path'] == 'cadastroUnico') {

    //     }
    //     return MarkdownPage(page: page);
    //   },
    // ),
  ],
);
