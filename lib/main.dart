import 'package:flutter/material.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hotel Águas da Serra"),
        ),
        body: Column(
          children: [
            Image.asset('assets/hotel.jpg'),
            Container(
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsets.all(15), //apply padding to all four sides
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Hotel',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                          ),
                          Text(
                            'SimCity - SC',
                            style: TextStyle(
                              color: Colors.black26,
                              fontWeight: FontWeight.w200,
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ), // give it width

            Container(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Icon(
                          Icons.phone,
                          color: Colors.blue[400],
                        ),
                        Text('Contato')
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Icon(
                          Icons.grid_view_outlined,
                          color: Colors.blue[400],
                        ),
                        Text('Localização')
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(15), //apply padding to all four sides

              child: Text(
                  'O Hotel Águas da Serra fica localizado a apenas 3 km do Aeroporto e a 2 km do famoso Parque de Expozição, e oferece Wi-Fi e estacionamento gratuitamente. Você pode desfrutar de uma variedade de pães, frutas e bebidas no café-da-manhã'),
            )
          ],
        ),
      ),
    );
  }
}
