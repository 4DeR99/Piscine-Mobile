import 'package:flutter/material.dart';

void main() {
  runApp(const Starter());
}

class Starter extends StatefulWidget {
  const Starter({super.key});

  @override
  State<Starter> createState() => _StarterState();
}

class _StarterState extends State<Starter> {
  bool _isPressed = false;

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
                    child: Text(
                      _isPressed ? 'Hello World' : 'A   simple text',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _isPressed = !_isPressed;
                      });
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
