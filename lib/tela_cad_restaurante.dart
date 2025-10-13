import 'package:flutter/material.dart';
import 'package:mimpedir/tipo.dart';

import 'banco/restaurante_dao.dart';

class TelaCadRestaurante extends StatelessWidget {
  @override
  }

  return TelaCadRestauranteState();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("cadastro de Restaurante")),
    body: Padding(padding: const EdgeInsets.all(30),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Informaçoes do Restaurante: "),
        SizedBox(height: 40),
        Text("Tipo de comida: "),
        DropdownButtonFormField(
          items: [
            DropdownMenuItem(value: "japonesa", child: Text("japonesa")),
            DropdownMenuItem(value: "italiana", child: Text("Italiana")),
            DropdownMenuItem(value: "Brasileira", child: Text("Brasileira")),
          ],
          onChanged: (value){}),
      TextFormField(
        decoration: const InputDecoration(hintText: 'Nome do Restaurante'),
        validator: (String? value) {},

      ),
      TextFormField(
        decoration: const InputDecoration(hintText: 'Latitude'),
        validator: (String? value) {},
      ),
      TextFormField(
        decoration: const InputDecoration(hintText: 'longitude'),
        validator: (String? value){},
      ),
      SizedBox(height: 50),
      onPressed:() async{
      final sucesso = await restauranteDAO.cadastrarRestaurante(
      nomeController.text, latitudeController.text, longitudeController.text, tipoCulinaria);
      String msg = 'Erro não encontrado. Verifique os dados.';
      Color corFundo = Colors.red;

      if(sucesso> 0){
        msg ='"${nomeController.text}"'
    }
      )
        ],
      ))
        ],
    ),
    )
    );
  }
}