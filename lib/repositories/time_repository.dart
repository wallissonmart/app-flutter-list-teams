import 'package:app_flutter_list_teams/models/time.dart';
import 'package:flutter/material.dart';

class TimeRepository {
  final List<Time> _times = [];

  get times => this._times;

  TimeRepository() {
    _times.addAll([
      Time(
        id: 33,
        titulos: 0,
        nome: 'Flamengo',
        pontos: 70,
        brasao: 'https://logodetimes.com/times/flamengo/logo-flamengo-256.png',
        cor: Colors.red[900]!,
      ),
      Time(
        id: 29,
        titulos: 0,
        nome: 'Internacional',
        pontos: 36,
        brasao:
            'https://logodetimes.com/times/internacional/logo-internacional-256.png',
        cor: Colors.red[900]!,
      ),
      Time(
        id: 27,
        titulos: 1,
        nome: 'Atlético-MG',
        pontos: 44,
        brasao:
            'https://logodetimes.com/times/atletico-mineiro/logo-atletico-mineiro-256.png',
        cor: Colors.grey[800]!,
      ),
      Time(
        id: 31,
        titulos: 2,
        nome: 'São Paulo',
        pontos: 62,
        brasao:
            'https://logodetimes.com/times/sao-paulo/logo-sao-paulo-256.png',
        cor: Colors.red[900]!,
      ),
      Time(
        id: 39,
        titulos: 0,
        nome: 'Fluminense',
        pontos: 69,
        brasao:
            'https://logodetimes.com/times/fluminense/logo-fluminense-256.png',
        cor: Colors.teal[800]!,
      ),
      Time(
        id: 47,
        titulos: 0,
        nome: 'Grêmio',
        pontos: 67,
        brasao: 'https://logodetimes.com/times/gremio/logo-gremio-256.png',
        cor: Colors.blue[900]!,
      ),
      Time(
        id: 43,
        titulos: 0,
        nome: 'Palmeiras',
        pontos: 29,
        brasao:
            'https://logodetimes.com/times/palmeiras/logo-palmeiras-256.png',
        cor: Colors.green[800]!,
      ),
      Time(
        id: 44,
        titulos: 0,
        nome: 'Santos',
        pontos: 27,
        brasao: 'https://logodetimes.com/times/santos/logo-santos-256.png',
        cor: Colors.grey[800]!,
      ),
      Time(
        id: 45,
        titulos: 0,
        nome: 'Athletico-PR',
        pontos: 23,
        brasao:
            'https://logodetimes.com/times/atletico-paranaense/logo-atletico-paranaense-256.png',
        cor: Colors.red[900]!,
      ),
      Time(
        id: 46,
        titulos: 0,
        nome: 'Corinthians',
        pontos: 65,
        brasao:
            'https://logodetimes.com/times/corinthians/logo-corinthians-256.png',
        cor: Colors.grey[800]!,
      ),
      Time(
        id: 49,
        titulos: 0,
        nome: 'Bragantino',
        pontos: 71,
        brasao:
            'https://logodetimes.com/times/red-bull-bragantino/logo-red-bull-bragantino-256.png',
        cor: Colors.grey[800]!,
      ),
      Time(
        id: 17,
        titulos: 0,
        nome: 'Ceará',
        pontos: 70,
        brasao: 'https://logodetimes.com/times/ceara/logo-ceara-256.png',
        cor: Colors.grey[800]!,
      ),
      Time(
        id: 11,
        titulos: 0,
        nome: 'Atlético-GO',
        pontos: 44,
        brasao:
            'https://logodetimes.com/times/atletico-goianiense/logo-atletico-goianiense-256.png',
        cor: Colors.red[900]!,
      ),
      Time(
        id: 12,
        titulos: 0,
        nome: 'Sport',
        pontos: 56,
        brasao:
            'https://logodetimes.com/times/sport-recife/logo-sport-recife-256.png',
        cor: Colors.red[900]!,
      ),
      Time(
        id: 13,
        titulos: 0,
        nome: 'Bahia',
        pontos: 67,
        brasao: 'https://logodetimes.com/times/bahia/logo-bahia-256.png',
        cor: Colors.blue[900]!,
      ),
      Time(
        id: 14,
        titulos: 0,
        nome: 'Fortaleza',
        pontos: 50,
        brasao:
            'https://logodetimes.com/times/fortaleza/logo-fortaleza-256.png',
        cor: Colors.red[900]!,
      ),
      Time(
        id: 15,
        titulos: 0,
        nome: 'Vasco',
        pontos: 48,
        brasao:
            'https://logodetimes.com/times/vasco-da-gama/logo-vasco-da-gama-256.png',
        cor: Colors.grey[800]!,
      ),
      Time(
        id: 16,
        titulos: 0,
        nome: 'Goiás',
        pontos: 47,
        brasao: null,
        cor: Colors.green[900]!,
      ),
      Time(
        id: 21,
        titulos: 0,
        nome: 'Coritiba',
        pontos: 45,
        brasao: 'https://logodetimes.com/times/coritiba/logo-coritiba-5.png',
        cor: Colors.green[900]!,
      ),
      Time(
        id: 22,
        titulos: 0,
        nome: 'Botafogo',
        pontos: 39,
        brasao: 'https://logodetimes.com/times/botafogo/logo-botafogo-256.png',
        cor: Colors.grey[800]!,
      ),
    ]);

    _times.sort((a, b) => b.pontos.compareTo(a.pontos));
  }
}
