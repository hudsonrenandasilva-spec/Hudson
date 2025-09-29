import 'package:flutter/material.dart';

class TelaHome extends StatelessWidget {
  TelaHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tela de Home')),
      body: const Padding(padding: const EdgeInsets.all(20),
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text("Lista de Restaurantes: "),
           ElevatedButton(onPressed: )
           Row(
             mainAxisAligment: MainAxisAlignment.center,
             children:
               [
                 Column(
                   children: [
                     Text("Meu restaurante"),
                     Text("Comida Mexicana")
                   ],
                 ),
                 SizedBox(width: 10),
                 ElevatedButton(onPressed: () {}, child: Text("Excluir")),
                 SizedBox(width: 10),
                 ElevatedButton(onPressed: (){}, child: Text("Excluir")),
               ],
           )
         ]
        )

      ),
    );
  }
}
