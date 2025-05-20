import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:git_group/page1.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Homepage(),
  ));
}

class Homepage extends StatelessWidget{

TextEditingController con=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Group Project'),
        centerTitle: true,
        
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
              controller: con,
              
              ),
            ),
            const SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
Navigator.push(context, MaterialPageRoute(builder: (context) => Page1(str: con.text),));
            }, child: Text('add')),
          ],
        ),
      ),
    );
  }
}