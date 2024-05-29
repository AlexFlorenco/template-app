import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:template_app/app/modules/home/repositories/home_repository.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  final HomeRepository _homeRepository = HomeRepository.instance;
  Future<void>? _future;

  @override
  void initState() {
    super.initState();
    _future = _homeRepository.getHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _future,
        builder: (_, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                  SizedBox(height: 20),
                  Text('Iniciando app...')
                ],
              ),
            );
          } else if (snapshot.connectionState == ConnectionState.done) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              context.go('/home');
            });
          }
          return Container();
        },
      ),
    );
  }
}
