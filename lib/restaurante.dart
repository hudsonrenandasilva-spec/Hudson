import 'usuario.dart';
import 'tipo.dart';

class Restaurante {
  int? _codigo;
  String? _nome;
  double? _latitude;
  double? _longitude;
  Usuario? _proprietario;
  Tipo? _cutinaria;

  // Getters
  int? get codigo => _codigo;
  String? get nome => _nome;
  double? get latitude => _latitude;
  double? get longitude => _longitude;
  Usuario? get proprietario => _proprietario;
  Tipo? get cutinaria => _cutinaria;

  // Setters
  set codigo(int? valor) => _codigo = valor;
  set nome(String? valor) => _nome = valor;
  set latitude(double? valor) => _latitude = valor;
  set longitude(double? valor) => _longitude = valor;
  set proprietario(Usuario? valor) => _proprietario = valor;
  set cutinaria(Tipo? valor) => _cutinaria = valor;

  // Construtor
  Restaurante({
    int? codigo,
    String? nome,
    double? latitude,
    double? longitude,
    Usuario? proprietario,
    Tipo? cutinaria,
  }) {
    _codigo = codigo;
    _nome = nome;
    _latitude = latitude;
    _longitude = longitude;
    _proprietario = proprietario;
    _cutinaria = cutinaria;
  }
}