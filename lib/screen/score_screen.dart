import 'package:flutter/material.dart';

class ScoreScreen extends StatefulWidget {
  const ScoreScreen({super.key, required this.title});
  final String title;

  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  int _counterLocal = 0;
  int _counterVisitante = 0;

  void incrementCounterLocalSimple() {
    _counterLocal++;
  }

  void incrementCounterLocalDoble() {
    _counterLocal = _counterLocal + 2;
  }

  void incrementCounterLocalTriple() {
    _counterLocal = _counterLocal + 3;
  }

  void incrementCounterVisitanteSimple() {
    _counterVisitante++;
  }

  void incrementCounterVisitanteDoble() {
    _counterVisitante = _counterVisitante + 2;
  }

  void incrementCounterVisitanteTriple() {
    _counterVisitante = _counterVisitante + 3;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0, bottom: 30),
        child: Column(
          children: [
            SizedBox(
              height: 468,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(children: [
                    const Text(
                      'Team A',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 120,
                      color: Colors.black,
                      child: Center(
                        child: Text(
                          '$_counterLocal',
                          style: const TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          incrementCounterLocalSimple();
                        });
                      },
                      style: ElevatedButton.styleFrom(primary: Colors.orange),
                      child: const Text(
                        'Add 1 point',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          incrementCounterLocalDoble();
                        });
                      },
                      style: ElevatedButton.styleFrom(primary: Colors.orange),
                      child: const Text(
                        'Add 2 point',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          incrementCounterLocalTriple();
                        });
                      },
                      style: ElevatedButton.styleFrom(primary: Colors.orange),
                      child: const Text(
                        'Add 3 point',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                  ]),
                  const VerticalDivider(
                    color: Colors.grey,
                    thickness: 0.2,
                    width: 50,
                  ),
                  Column(children: [
                    const Text(
                      'Team B',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 120,
                      color: Colors.black,
                      child: Center(
                        child: Text(
                          '$_counterVisitante',
                          style: const TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          incrementCounterVisitanteSimple();
                        });
                      },
                      style: ElevatedButton.styleFrom(primary: Colors.orange),
                      child: const Text(
                        'Add 1 point',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          incrementCounterVisitanteDoble();
                        });
                      },
                      style: ElevatedButton.styleFrom(primary: Colors.orange),
                      child: const Text(
                        'Add 2 point',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          incrementCounterVisitanteTriple();
                        });
                      },
                      style: ElevatedButton.styleFrom(primary: Colors.orange),
                      child: const Text(
                        'Add 3 point',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                  ]),
                ],
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _counterLocal = 0;
                    _counterVisitante = 0;
                  });
                },
                style: ElevatedButton.styleFrom(primary: Colors.orange),
                child: const Text(
                  'Reset',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w500),
                ))
          ],
        ),
      ),
    );
  }
}
