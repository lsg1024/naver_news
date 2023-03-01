import 'package:flutter/material.dart';
import 'package:naver_news/Second_page.dart';
import 'package:naver_news/personDTO.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First'),
      ),
      body: ElevatedButton(
        child: const Text('다음페이지'),
        onPressed: () async {
          final person = Person("js", 23);
          // Navigator.pop(context);
          final result = await Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondPage(person : person))
          );

          print(result);
        },
      ),
    );
  }
}

