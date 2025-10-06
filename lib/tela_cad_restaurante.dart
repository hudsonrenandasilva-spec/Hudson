import 'package:flutter/material.dart';

class TelaCadRestaurante extends StatelessWidget{
  TelaCadRestaurante({super.key});

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
      ElevatedButton(onPressed: (){}, child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Icon(Icons.save),
          Text("cadastrar")
        ],
      ))
        ],
    ),
    )
    );
  }
}