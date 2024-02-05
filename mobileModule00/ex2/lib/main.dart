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

  @override
  Widget build(BuildContext context) {

    final buttonStyle = ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      backgroundColor: const Color(0xFF607D8B),
    );

    return (
        MaterialApp(
          title: 'Starter',
          home: Scaffold(
            appBar: AppBar(
              title: const Text('Calculator'),
              backgroundColor: const Color(0xFF607d8B),
              centerTitle: true,
            ),
            body: Container(
              color: const Color(0xFF37474F),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                        alignment: Alignment.centerRight,
                        child: const Text(
                          '0',
                          style: TextStyle(
                            fontSize: 50,
                            color: Color(0xFF607D8B),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                        alignment: Alignment.centerRight,
                        child: const Text(
                          '0',
                          style: TextStyle(
                            fontSize: 50,
                            color: Color(0xFF607D8B),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: SizedBox(
                              height: 60,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  style: buttonStyle,
                                  child: const Text(
                                    '0',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black38,
                                    ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 60,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: buttonStyle,
                                child: const Text(
                                    '.',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black38,
                                    ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 60,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  foregroundColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                  backgroundColor: const Color(0xFF607D8B),
                                ),
                                child: const Text(
                                    '00',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black38,
                                    ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 60,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: buttonStyle,
                                child: const Text(
                                    '=',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 60,
                              color: const Color(0xFF607D8B),
                              child: null
                            ),
                          ),
                        ]
                      )
                    ],
                  )
                ],
              ),
            )
          ),
          debugShowCheckedModeBanner: false,
        )
    );
  }
}
