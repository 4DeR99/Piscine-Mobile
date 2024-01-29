import 'package:flutter/material.dart';

void main() {
  runApp(const Starter());
}

class Starter extends StatelessWidget {
  const Starter({super.key});

  @override
  Widget build(BuildContext context) {
    return (
        MaterialApp(
        title: 'Starter',
        home: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 8.0),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xDD626200),
                  ),
                  child: const Text(
                    'A   simple text',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      print('Button pressed');
                    },
                    child: const Text(
                      'Click me',
                      style: TextStyle(
                        color: Color(0xDD626200),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
      )
    );
  }
}
