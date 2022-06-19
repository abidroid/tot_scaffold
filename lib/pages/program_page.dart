
import 'package:flutter/material.dart';

class ProgramPage extends StatelessWidget {
  const ProgramPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(
          leading: Icon(Icons.computer),
          title:  Text('Computer Science'),
        ),
        ListTile(
          leading: Icon(Icons.car_repair),
          title:  Text('Mechanical Engineering'),
        ),ListTile(
          leading: Icon(Icons.medical_information),
          title:  Text('Medical Sciences'),
        ),ListTile(
          leading: Icon(Icons.coronavirus),
          title:  Text('Biological Sciences'),
        ),
      ],
    );
  }
}
