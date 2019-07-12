import 'package:flutter/material.dart';

class VerTodos extends StatelessWidget {
  final String labelTodos;

  VerTodos(this.labelTodos);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(labelTodos),
        centerTitle: true,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back),
        ),
      ),
    );
  }
}
