import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            // primarySwatch: Colors.blue,
            // useMaterial3: true,
            ),
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Flutter Homework 3'),
            ),
            backgroundColor: Colors.blueGrey.shade900,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding:
                      EdgeInsets.only(top: 50, bottom: 20, right: 20, left: 20),
                  child: Text(
                    'Simple counter App',
                    style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 36,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: 0, bottom: 50, right: 40, left: 40),
                  child: Text(
                    'training with manipulating custom widgets and states',
                    style: TextStyle(
                        color: Colors.blueGrey.shade200,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                Counter(),
                // image
                const Image(
                  image: AssetImage('assets/dash.png'),
                  // width: 200,
                  height: 250,
                ),
              ],
            ),
            bottomNavigationBar: BottomAppBar(
              color: Colors.blueGrey.shade800,
              child: Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Made by ',
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'Rcym',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            )));
  }
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  late int counter;
  @override
  void initState() {
    counter = 20;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return (Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.blueGrey.shade700,
            width: 2,
          ),
          bottom: BorderSide(
            color: Colors.blueGrey.shade700,
            width: 2,
          ),
        ),
        color: Colors.blueGrey.shade800,
      ),
      width: double.infinity,
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 230,
            // height: 100,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.blueGrey.shade700,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border: Border.all(
                color: Colors.blueGrey.shade600,
                width: 2,
              ),
            ),
            child: Column(children: [
              // COUNTER TEXT CONTAINER
              Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey.shade600,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.all(10),
                width: double.infinity,
                child: Text(
                  counter.toString(),
                  style: TextStyle(
                      color: Colors.blueGrey.shade100,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // - Button
                  Container(
                    width: 50,
                    height: 50,
                    // margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          counter--;
                        });
                      },
                      icon: const Icon(Icons.remove),
                      color: Colors.white,
                    ),
                  ),
                  // Reset Button
                  InkWell(
                    onTap: () => setState(() {
                      counter = 0;
                    }),
                    child: Container(
                        width: 80,
                        height: 50,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade600,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: const Text('Reset',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold))),
                  ),

                  // + Button
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          counter++;
                        });
                      },
                      icon: const Icon(Icons.add),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ],
      ),
    ));

    // return Scaffold(
    //   body: Center(
    //       child: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     children: [
    //       Text('you have pushed the button this many times: '),
    //       Text(
    //         counter.toString(),
    //       ),
    //     ],
    //   )),
    //   floatingActionButton: FloatingActionButton(
    //     onPressed: () {
    //       setState(() {
    //         counter++;
    //         print("peeeepo happy");
    //       });
    //     },
    //     child: const Icon(Icons.add),
    //   ),
    // );
  }
}
