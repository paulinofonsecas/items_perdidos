// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class LostItem {
  String nome;
  String imagem;
  String descricao;
  String lugarPerdido;
  DateTime dataPerdido;
  bool gratificacao;
  String categoria;

  LostItem({
    required this.nome,
    required this.imagem,
    required this.descricao,
    required this.lugarPerdido,
    required this.dataPerdido,
    required this.gratificacao,
    required this.categoria,
  });
}
