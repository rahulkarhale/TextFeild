import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget{
  const MainApp({super.key});
  @override 
  State createState()=>_TextField();
}
class _TextField extends State{
  TextEditingController nameController=TextEditingController();
  String? name;

  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text( "Text Feild",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.white

          ),
          ),
          backgroundColor: Colors.blue,
        ),
        body:  Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: nameController,
                style:const TextStyle(
                  fontSize: 20,
                ),
                obscureText: true,
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.visibility),
                  hintText: "Enter Name",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.amber,
                  ),
                  border: OutlineInputBorder(),
                ),
                onChanged: (String val) {
                  print("Val :$val");
                  
                },
                onEditingComplete: () {
                  print("Editing Complete");
                },
                onSubmitted: (value) {
                  print("Value Submited :$value");
                  
                },
                
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                print("Add Data");
                name=nameController.text;
                nameController.clear();
                setState(() {
                  
                });
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                  
                ),
                child: const Text(
                  "Add Data ",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
              ),

            ),
            const SizedBox(height: 20,),
            Text(
              "Name : $name",
              style:const  TextStyle(fontSize: 20),
            ),
            
          ],
        ),
      ),
    );
  }
}