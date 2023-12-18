import 'package:app_flutter_list_teams/models/time.dart';
import 'package:app_flutter_list_teams/widgets/brasao.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  final Time time;

  const InfoPage({Key? key, required this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var noImage =
        'https://img.freepik.com/vetores-gratis/ilustracao-de-galeria-icone_53876-27002.jpg';

    return Scaffold(
        appBar: AppBar(title: Text('Informações')),
        body: Center(child: Brasao(image: time.brasao ?? noImage, width: 250)));
  }
}
