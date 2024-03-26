
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class secondrout extends StatelessWidget {
  final phoneController = TextEditingController();


  secondrout({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //============================
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('Second Route',
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
                controller: phoneController,
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  hintText: 'Phone/Web',
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

                          phoneController.text= '';

                        },
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.black,
                        ),
                        child: const Text("CALL", style: TextStyle(fontSize: 20, color: Colors.white),),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {

                          phoneController.text= '';

                        },
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                        child: const Text("WEB", style: TextStyle(fontSize: 20, color: Colors.white),),
                      ),
                    ),
                  ],
                ),
              ),
            ),
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

                          phoneController.text= '';

                        },
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.black,
                        ),
                        child: const Text("NEXT", style: TextStyle(fontSize: 20, color: Colors.white),),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}