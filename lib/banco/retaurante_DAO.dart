import 'package:voupedir/banco/database_helper.dart';

import '../restaurante.dart';

class RestauranteDAO{
  static Future<List<restaurante>> listarTodos() async{
    final db = await DatabaseHelper.getDatabase();
    final resultado = await db.query('tb_restaurante');
  }
}