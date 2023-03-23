import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            Center(
              child: Container(
                height: 250,
                width: 250,
                color: Colors.grey,
                child: const Icon(
                  Icons.image,
                  size: 100,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Gallery"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Camera"),
            ),
            const Text('Results will show here'),
          ],
        ),
      ),
    );
  }
}
