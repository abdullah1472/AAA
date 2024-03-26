
import 'package:f_b5/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Maproute extends StatelessWidget {
  final latController = TextEditingController();
  final longController = TextEditingController();

  Maproute({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //============================
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('Map Route',
            style: TextStyle(
                fontSize: 30,
                color: Colors.white
            ),),
        ),
        backgroundColor: Colors.grey,
        body: Column(
          children: [
            //============================
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.black,
              //============================
              child: TextField(
                controller: latController,
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  hintText: 'Latuetude',
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    // backgroundColor: Colors.white,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                ),
              ),
              //============================
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.black,
              //============================
              child: TextFormField(
                controller: longController,
                decoration:  const InputDecoration(
                  labelText: 'Longuetude',
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0),),
                  ),
                ),
              ),
            ),
            //============================
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(15),
              color: Colors.brown,
              // alignment: Alignment.center,
              //============================
              child:Center(
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {

                          latController.text= '';
                          longController.text= '';

                        },
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.black,
                        ),
                        child: const Text("MAP", style: TextStyle(fontSize: 20, color: Colors.white),),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          runApp(MyApp());

                          latController.text= '';
                          longController.text= '';
                        },
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                        child: const Text("BACK", style: TextStyle(fontSize: 20, color: Colors.white),),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              color: Colors.white12,
              height: 200, width: 400,
              //============================
            ),
          ],
        ),
      ),
    );
  }
}

