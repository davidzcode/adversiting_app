import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  final String nameCategorie;

  CategoriesScreen(this.nameCategorie);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nameCategorie),
        centerTitle: true,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
            child: Icon(Icons.arrow_back)),
      ),
    );
  }
}
