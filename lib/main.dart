import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: MyApp()));

appText(
  String text, {
  Color textColor = Colors.grey,
  bool isName = false,
}) =>
    Text(
      text,
      style: TextStyle(
          color: textColor, letterSpacing: 2.0, fontSize: isName ? 28.0 : 17.0),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text(
          'ID Card',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.grey[850],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/ninja.jpg'),
                  radius: 40.0,
                ),
              ),
              Divider(
                height: 90.0,
                color: Colors.grey[800],
              ),
              appText('NAME'),
              const SizedBox(
                height: 10.0,
              ),
              appText('SAGAR', isName: true, textColor: Colors.amber),
              const SizedBox(
                height: 30.0,
              ),
              appText('CURRENT NINJA LEVEL'),
              const SizedBox(
                height: 10.0,
              ),
              appText('8', isName: true, textColor: Colors.amber),
              const SizedBox(
                height: 30.0,
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    size: 20.0,
                    color: Colors.grey[400],
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  appText('sagartank@gmail.com')
                ],
              ),
            ],
          )),
    );
  }
}
