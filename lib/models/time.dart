import 'package:flutter/material.dart';

class Time {
  int id;
  String nome;
  String? brasao;
  int pontos;
  Color cor;
  int titulos;

  Time({
    required this.id,
    required this.brasao,
    required this.nome,
    required this.pontos,
    required this.cor,
    required this.titulos,
  });
}
