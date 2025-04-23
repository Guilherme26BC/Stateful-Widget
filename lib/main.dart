// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: Contador());
//   }
// }

// class Contador extends StatefulWidget {
//   @override
//   State<Contador> createState() => _ContadorState();
// }

// class _ContadorState extends State<Contador> {
//   int contador = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Contador com Estado')),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text('Valor: ${contador}',
//               style: TextStyle(
//                   fontSize: 32,
//                   color: checkNegative() ? Colors.red : Colors.green)),
//           SizedBox(height: 30),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton(onPressed: _increment, child: Text('+')),
//               SizedBox(width: 10),
//               ElevatedButton(onPressed: _decrement, child: Text('-')),
//               SizedBox(width: 10),
//               ElevatedButton(onPressed: _reset, child: Text('Resetar')),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   void _increment() {
//     setState(() {
//       contador++;
//     });
//   }

//   void _decrement() {
//     setState(() {
//       contador--;
//     });
//   }

//   void _reset() {
//     setState(() {
//       contador = 0;
//     });
//   }

//   bool checkNegative() {
//     if (contador < 0) {
//       return true;
//     }
//     return false;
//   }
// }

import 'package:flutter/material.dart';

void main() => runApp(VotacaoApp());

class VotacaoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: VotacaoPage());
  }
}

class VotacaoPage extends StatefulWidget {
  @override
  State<VotacaoPage> createState() => _VotacaoPageState();
}

class _VotacaoPageState extends State<VotacaoPage> {
  int cachorro = 0;

  int gato = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Simulador de Votação")),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '🐱 Gatos: $gato   🐶 Cachorros: $cachorro',
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(height: 16),
            Text(
              "Resultado: ${result()}" ,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed:votarGato, child: Text("Votar em Gatos")),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: votarCachorro,
                  child: Text("Votar em Cachorros"),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: resetar,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
              child: Text("Resetar"),
            ),
          ],
        ),
      ),
    );
  }

  void votarCachorro() {
    setState(() {
      cachorro++;
    });
  }

  void votarGato() {
    setState(() {
      gato++;
    });
  }
  void resetar(){
   setState(() {
        gato = 0;
    cachorro = 0;
    }); 
 
  }
  String result(){
    if(gato==0 && cachorro==0)
    return "não iniciado";

    if(cachorro>gato){
      return "cachorro";
    }else{
      if(gato>cachorro)
      return "gato";
      
      else
      return "empate";
    }
  }
}
