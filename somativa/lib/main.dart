import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:somativa/login.dart';
import 'firebase_options.dart';
import 'package:somativa/mapa.dart'; // Certifique-se de que essa classe exista

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Necessário para inicializar antes do runApp
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(
    MaterialApp(
      home: GoogleMapsFlutter(), // Altere para o nome correto da sua classe de mapa
    ),
  );
}


 class telaPrincipal extends StatefulWidget {
   const telaPrincipal({super.key});

   @override
   State<telaPrincipal> createState() => _telaPrincipalState();
 }

 class _telaPrincipalState extends State<telaPrincipal> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text("ATTC"),
       ),
       body: Column(
         children: [
         
         ],)
       ,
     );
   }
}