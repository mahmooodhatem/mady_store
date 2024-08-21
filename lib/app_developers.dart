import 'package:flutter/material.dart';

class AppDevelopers extends StatelessWidget {
  const AppDevelopers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DEVELOPER TEAM",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.deepPurple,
        ),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new_outlined),
        color: Colors.lightBlueAccent,
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Names of developers are: ",
            style: TextStyle(
              fontSize: 17,
              color: Colors.lightBlueAccent,
              fontWeight: FontWeight.w500
            ),
            ),
            SizedBox(height: 10,),
            Text("Mahmoud Hatem Mohamed",
              style: TextStyle(
                  fontSize: 25,
                color: Colors.blue,
                fontWeight: FontWeight.w500
              ),
            ),
          ],
        ),
      ),
    );
  }
}
