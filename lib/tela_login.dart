import 'package:flutter/material.dart';
import 'banco/usuario_dao.dart';
import 'tela_home.dart';
import 'usuario.dart';

class Telalogin extends StatelessWidget{
  Telalogin({super.key});



  final TextEditingController usuarioController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title:const Text("Tela de login")),
      body: Padding(padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: const InputDecoration(labelText: 'Usuário'),
      controller: usuarioController,
          ),
          const SizedBox(height: 20),
          TextField(
            decoration: const InputDecoration(labelText: 'Senha'),
            obscureText:true,
              controller:senhaController,
          ),
          const SizedBox(height: 20),
          ElevatedButton(onPressed: () async{

    /* if(u.Login == usuarioController.text && u.senha == senhaController.(text) {
           //print('deu cert vai abri outra pagina');
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => telaHome())
              );
            }else{
              print('deu errado nao vai abri outra pagina');
            }*/

    final sucesso = await UsuarioDAO.autenticar(usuarioController.text, senhaController.text);

    if(sucesso){
    Navigator.push(context,
    MaterialPageRoute(builder: (context) => TelaHome())
    );
    }else{
    ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(content: Text('Login invalido!'))
    );
    }

    }, child: const Text('Entra')),  // ElevatedButton


    ],
      )
    ),
    );
  }
}



