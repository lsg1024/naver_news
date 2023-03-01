import 'package:flutter/material.dart';
import 'package:naver_news/FirstPage.dart';
import 'package:naver_news/personDTO.dart';

class SecondPage extends StatelessWidget {
  final Person person;

  SecondPage({required this.person});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second'),
      ),
      body: ElevatedButton(
        child: Text('사람 : ${person.name}'),
        onPressed: (){
          Navigator.pop(context, 'ok');
          // Navigator.push(
          //     context,
          //     MaterialPageRoute(builder: (context) => const FirstPage())
          // );
        },
      ),
    );
    throw UnimplementedError();
  }

}