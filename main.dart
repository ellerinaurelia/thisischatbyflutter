import 'package:flutter/material.dart';

void main() {
  runApp(const MyPage());
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Chat Item"),
          backgroundColor: Colors.blue, // [cite: 268]
        ),
        body: Column(
          children: [
            Container(
              // [cite: 135, 136]
              margin: const EdgeInsets.all(8), 
              padding: const EdgeInsets.all(8),
              // [cite: 102, 105]
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                border: Border.all(color: Colors.red, width: 2), // [cite: 91, 92]
                borderRadius: BorderRadius.circular(20), // [cite: 100]
              ),
              child: Row(
                children: [
                  // [cite: 395, 409]
                  const CircleAvatar(
                    backgroundImage: AssetImage('images/avatar.jpg'),
                  ),
                  // [cite: 396, 410]
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8), // [cite: 483]
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Ellerin Aurelia Chowina',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold, // [cite: 172]
                            ),
                          ),
                          const Padding(padding: EdgeInsets.all(2)), // [cite: 173]
                          Row(
                            children: const [
                              Icon(Icons.check, size: 18, color: Colors.black), // [cite: 176]
                              Text('Okee'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  // [cite: 411, 442]
                  const Text(
                    'yesterday',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}