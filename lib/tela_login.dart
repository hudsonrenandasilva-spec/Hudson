import 'package:flutter/material.dart';


class Telalogin extends StatelessWidget{
  Telalogin({super.key});



  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title:const Text("Tela de login")),
      body: Padding(padding: const EdgeInsets.all(24.0)),
      child: Colum(
        mainAxisAligment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: const InputDecoration(labelText: 'Usuário'),
          )
          const SizedBox(height: 40),
          TextField(
            decoration: const InputDecoration(labelText: 'Senha'),
            obscureText:true
          ),
          const SizedBox(height: 40),
          ElevatedButton(onPressed: (){
            if(u.Login == usuarioController.text && u.senha == senhaController.(text) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => telaHome())
              );
            }else{
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Login ou senha invalidos!!"))
              );
            }
    }, child: Text("Login") //ElevatedButton


    }, child: Text("Login"))
        ],
      )
    );
  }
}