// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:phosphor_flutter/phosphor_flutter.dart';
// import 'package:template_app/app/modules/category/repositories/programas_sociais_repository.dart';

// class ProgramasSociaisPage extends StatefulWidget {
//   const ProgramasSociaisPage({super.key});

//   @override
//   State<ProgramasSociaisPage> createState() => _ProgramasSociaisPageState();
// }

// class _ProgramasSociaisPageState extends State<ProgramasSociaisPage> {
//   final ProgramasSociaisRepository _programasSociaisRepository =
//       ProgramasSociaisRepository.instance;
//   Future<void>? _future;

//   @override
//   void initState() {
//     super.initState();
//     _future = _programasSociaisRepository.getProgramasSociais();
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
//                       _programasSociaisRepository
//                           .programasSociaisPage.header.title,
//                       style: const TextStyle(
//                           fontWeight: FontWeight.bold, fontSize: 18),
//                     ),
//                     Text(_programasSociaisRepository
//                         .programasSociaisPage.header.subtitle),
//                     const Padding(
//                       padding: EdgeInsets.symmetric(vertical: 20),
//                       child: Divider(),
//                     ),
//                     Column(
//                       children: _programasSociaisRepository
//                               .programasSociaisPage.header.buttons!.isEmpty
//                           ? [
//                               const Center(
//                                 child: Text('Nada para exibir'),
//                               )
//                             ]
//                           : _programasSociaisRepository
//                               .programasSociaisPage.bodyButtons!
//                               .map((e) => Column(
//                                     children: [
//                                       SizedBox(
//                                         width:
//                                             MediaQuery.of(context).size.width *
//                                                 0.9,
//                                         child: ElevatedButton(
//                                           child: Row(
//                                             children: [
//                                               Icon(
//                                                 PhosphorIconData(
//                                                     int.parse(e.icon),
//                                                     'Regular'),
//                                               ),
//                                               const SizedBox(width: 16),
//                                               Expanded(
//                                                 child: Column(
//                                                   crossAxisAlignment:
//                                                       CrossAxisAlignment.start,
//                                                   children: [
//                                                     Text(
//                                                       e.label,
//                                                       style: const TextStyle(
//                                                         overflow: TextOverflow
//                                                             .ellipsis,
//                                                       ),
//                                                     ),
//                                                     Text(
//                                                       e.sublabel,
//                                                       style: const TextStyle(
//                                                         fontWeight:
//                                                             FontWeight.w400,
//                                                         overflow: TextOverflow
//                                                             .ellipsis,
//                                                       ),
//                                                     ),
//                                                   ],
//                                                 ),
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
//                   ],
//                 ),
//         ),
//       ),
//     );
//   }
// }
