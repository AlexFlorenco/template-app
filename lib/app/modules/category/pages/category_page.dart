// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:phosphor_flutter/phosphor_flutter.dart';
// import 'package:template_app/app/modules/category/repositories/category_repository.dart';

// class CategoryPage extends StatefulWidget {
//   const CategoryPage({super.key});

//   @override
//   State<CategoryPage> createState() => _CategoryPageState();
// }

// class _CategoryPageState extends State<CategoryPage> {
//   final CategoryRepository _repository = CategoryRepository.instance;
//   Future<void>? _future;

//   @override
//   void initState() {
//     super.initState();
//     _future = _repository.getContent();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
//         child: FutureBuilder(
//           future: _future,
//           builder: (_, __) => __.connectionState == ConnectionState.waiting
//               ? const Center(child: CircularProgressIndicator())
//               : Column(
//                   children: [
//                     Text(
//                       _repository.pageModel.header.title,
//                       style: const TextStyle(
//                           fontWeight: FontWeight.bold, fontSize: 18),
//                     ),
//                     Text(_repository.pageModel.header.subtitle),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     Column(
//                       children: _repository.pageModel.header.buttons!.isEmpty
//                           ? [
//                               const Center(
//                                 child: Text('Nada para exibir'),
//                               )
//                             ]
//                           : _repository.pageModel.header.buttons!
//                               .map((e) => Column(
//                                     children: [
//                                       SizedBox(
//                                         width:
//                                             MediaQuery.of(context).size.width *
//                                                 0.9,
//                                         child: ElevatedButton(
//                                           child: Row(
//                                             children: [
//                                               Column(
//                                                 crossAxisAlignment:
//                                                     CrossAxisAlignment.start,
//                                                 children: [
//                                                   Text(e.label),
//                                                   Text(
//                                                     e.sublabel,
//                                                     style: const TextStyle(
//                                                       fontWeight:
//                                                           FontWeight.w400,
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                               const Spacer(),
//                                               Icon(
//                                                 PhosphorIconData(
//                                                     int.parse(e.icon),
//                                                     'Regular'),
//                                               ),
//                                             ],
//                                           ),
//                                           onPressed: () {
//                                             context.push(e.route);
//                                           },
//                                         ),
//                                       ),
//                                     ],
//                                   ))
//                               .toList(),
//                     ),
//                     const Padding(
//                       padding: EdgeInsets.symmetric(vertical: 20),
//                       child: Divider(),
//                     ),
//                   ],
//                 ),
//         ),
//       ),
//     );
//   }
// }
