import 'package:flutter/material.dart';
import 'package:mimpedir/banco/retaurante_DAO.dart';
import 'package:mimpedir/tela_cad_restaurante.dart';

class TelaHome extends StatefulWidget {
  TelaHome({super.key});

  @override
  State<TelaHome> createState() => TelaHomeState();
}

class TelaHomeState extends State<TelaHome>{
  List<Restaurante> restaurante = [];

  Future<void> carregarRestaurantes() async{
    final lista = await RestauranteDAO.listarTodos();
    setState(() {
      restaurante = lista;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Lista de Restaurantes"),
            actions: [
              IconButton(
                onPressed: ,
              )

          ],
        ),
        body: Padding(padding: const EdgeInsets.all(10),
          child: ListView.builder(
            itemCount: restaurantes.length,
            itemBuilder: (context, index) {
              final r = restaurantes[index];
              return Card(
                  margin: EdgeInsets.symmetric(vertical: 8),
                  child: ListTile(
                      title: Text("Restaurante"),
                      subtitle: Text("Mexicano"),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(onPressed: () {},
                              icon: Icon(Icons.edit, color: Colors.blue,)),
                          IconButton(onPressed: () {},
                              icon: Icon(Icons.delete, color: Colors.red)),

                        ],
                      ),

                  ),

              );
            }

          ),
        ),
        floatingActionButton: FloatingActionButton (
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => TelaCadRestaurante()));
    },
    child: Icon(Icons.add)
    ),
        },
  }

    );



