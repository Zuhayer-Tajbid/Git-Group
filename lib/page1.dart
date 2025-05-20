import 'package:flutter/cupertino.dart';

class Page1 extends StatelessWidget{
  final String str;

  const Page1({super.key, required this.str});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(str,style: TextStyle(fontSize: 50),),
      ),
    );
  }
}