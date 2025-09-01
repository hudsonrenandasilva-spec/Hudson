import'database_helper.dart';
import '../usuario.dart';

class UsurioDao{
  static Future<bool> autenticar(String login, String senha) async{
    final db = DatabaseHelper.getDataBase();

    final resultado = await db.query(
      'tb_usuario',
      where: 'nm_login = ? and ds_senha = ?',
      whereArgs: [login, senha]
    );

    return resultado.isNotEmpty;
  }
}
