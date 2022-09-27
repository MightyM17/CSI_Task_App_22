import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: HomePage(),
));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff202630),
      body: Center(
        child: TextButton(
          onPressed: () {
            print('you clicked me');
          },
          child: Text("Test"),
          style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.zero)
          ),
          ),
        ),
      ),
    );
  }
}
