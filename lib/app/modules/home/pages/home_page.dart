import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:template_app/app/core/models/button_model.dart';
import 'package:template_app/app/core/models/page_model.dart';
import 'package:template_app/app/modules/home/repositories/home_repository.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.pageModel});
  final PageModel pageModel;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeRepository _homeRepository = HomeRepository.instance;
  Future<void>? _future;

  @override
  void initState() {
    super.initState();
    _homeRepository.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    String? title = widget.pageModel.header!.title ?? '';
    String? subtitle = widget.pageModel.header!.subtitle ?? '';
    List<ButtonModel>? headerButtons =
        widget.pageModel.header!.headerButtons ?? [];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
        child: FutureBuilder(
          future: _future,
          builder: (_, __) => __.connectionState == ConnectionState.waiting
              ? const Center(child: CircularProgressIndicator())
              : Column(
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(subtitle),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Divider(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: headerButtons
                          .map((e) => Column(
                                children: [
                                  IconButton(
                                    icon: Icon(PhosphorIconData(
                                        int.parse(e.icon!), 'Regular')),
                                    onPressed: () {
                                      context.push(e.route!);
                                    },
                                  ),
                                  Text(e.label!)
                                ],
                              ))
                          .toList(),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
