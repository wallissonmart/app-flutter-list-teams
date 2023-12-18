import 'package:app_flutter_list_teams/models/time.dart';
import 'package:app_flutter_list_teams/pages/info_page.dart';
import 'package:app_flutter_list_teams/repositories/time_repository.dart';
import 'package:app_flutter_list_teams/widgets/brasao.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TimeRepository timeRepository = TimeRepository();
  List<Time> timesSelecionados = [];

  appBarDinamica() {
    if (timesSelecionados.isEmpty) {
      return (AppBar(
        title: Text('Tabela'),
      ));
    } else {
      return (AppBar(
        leading: IconButton(
            icon: Icon(Icons.cancel),
            onPressed: () {
              setState(() => timesSelecionados = []);
            }),
        title: Text('${timesSelecionados.length} selecionados'),
        backgroundColor: Colors.cyan[500],
        elevation: 1,
        iconTheme: IconThemeData(color: Colors.black87),
        titleTextStyle: TextStyle(color: Colors.black87, fontSize: 20),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    var noImage =
        'https://img.freepik.com/vetores-gratis/ilustracao-de-galeria-icone_53876-27002.jpg';

    return Scaffold(
      appBar: appBarDinamica(),
      body: ListView.builder(
        itemCount: timeRepository.times.length,
        itemBuilder: (context, index) {
          Time time = timeRepository.times[index];
          return ListTile(
              title: Text(time.nome),
              subtitle: Text('Títulos: ${time.titulos}'),
              leading: (timesSelecionados.contains(time))
                  ? const CircleAvatar(
                      child: Icon(Icons.check),
                    )
                  : Brasao(image: time.brasao ?? noImage, width: 40),
              trailing: Text(time.pontos.toString()),
              selected: timesSelecionados.contains(time),
              selectedTileColor: Colors.indigo[50],
              onLongPress: () {
                setState(() {
                  timesSelecionados.contains(time)
                      ? timesSelecionados.remove(time)
                      : timesSelecionados.add(time);
                });
              },
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InfoPage(time: time),
                  ),
                );
              });
        },
      ),
    );
  }
}
