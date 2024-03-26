import 'package:f_b5/secondrout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'maproute.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final userController = TextEditingController();
  final passController = TextEditingController();

  MyApp({super.key});

  get child => null;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //============================
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('Main Route',
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
                controller: userController,
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  hintText: 'Username',
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
                controller: passController,
                decoration:  const InputDecoration(
                  labelText: 'password',
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



                          userController.text= '';
                          passController.text= '';



                        },
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.black,
                        ),
                        child: const Text("LOGIN", style: TextStyle(fontSize: 20, color: Colors.white),),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {

                          userController.text= '';
                          passController.text= '';
                        },
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                        child: const Text("CLEAR", style: TextStyle(fontSize: 20, color: Colors.white),),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {

                          userController.text= '';
                          passController.text= '';
                        },
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                        child: const Text("CLOSE", style: TextStyle(fontSize: 20, color: Colors.white),),
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
                 child: Image.asset('assets/background.png'),
              //============================
            ),
          ],
        ),
      ),
    );
  }
}

