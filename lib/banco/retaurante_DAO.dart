import 'package:mimpedir/banco/database_helper.dart';
import 'package:voupedir/banco/database_helper.dart';

import '../restaurante.dart';

class RestauranteDAO{
  static Future<List<restaurante>> listarTodos() async{
    final db = await DatabaseHelper.getDatabase();
    final resultado = await db.query('tb_restaurante');
    where: 'cd_usuario = ?',
    whereArgs: [UsuarioDAO.usuarioLogado]
    );

    return resultado.map((mapa){
      return Restaurante(
        codigo: mapa['cd_restaurante']as asint,
        nome: mapa['nm_restaurante']as String
      );
          }).toList();
          }

          static Future<int> cadastrarrestaurante(
              String? nome, String? latitude, String?longitude, int? tipo) async{
    final db = await DatabaseHelper.getDataBase();

    final dadosRestaurante = {
      'nm_restaurante': nome,
      'latitude_restaurante': latitude,
      'longitude_restaurante': longitude,
      'cd_tipo': tipo,
      'cd_usuario': usuarioDAO.usuarioLogado.codigo
    };
    try{
      final idRestaurante = await db.insert('tb_restaurante', dadosRestaurante);
      'nm_restaurante': nome,
            'latitude_restaurante': latitude,
            'longitude_restaurante': longitude,
    }

  }
}
