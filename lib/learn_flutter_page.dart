import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheckBox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: (() {
            Navigator.of(context).pop();
          }),
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
              onPressed: () {
                debugPrint('Actions');
              },
              icon: const Icon(Icons.info_outline))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Image.asset('images/carbox.png'),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.black,
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            color: Colors.blueGrey,
            width: double.infinity,
            child: const Center(
              child: Text(
                'This is text widget',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: isSwitch ? Colors.red : Colors.green,
              ),
              onPressed: () {
                debugPrint('Elevated Button');
              },
              child: const Text('Elevated Button')),
          OutlinedButton(
              onPressed: () {
                debugPrint('Outlined Button');
              },
              child: const Text('Outlined Button')),
          TextButton(
              onPressed: () {
                debugPrint('Text Button');
              },
              child: const Text('Text Button')),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              debugPrint('This is the row');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  Icons.local_fire_department,
                  color: Colors.blue,
                ),
                Text('Row widget'),
                Icon(
                  Icons.local_fire_department,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
          Switch(
              value: isSwitch,
              onChanged: (bool newBool) {
                setState(() {
                  isSwitch = newBool;
                });
              }),
          Checkbox(
              value: isCheckBox,
              onChanged: (bool? newBool) {
                setState(() {
                  isCheckBox = newBool;
                });
              }),
          Image.network(
              'https://carbox.mk/wp-content/uploads/2015/01/logo5.jpg'),
          Image.network(
              'https://carbox.mk/wp-content/uploads/2015/01/logo5.jpg'),
          Image.network(
              'https://carbox.mk/wp-content/uploads/2015/01/logo5.jpg'),
        ]),
      ),
    );
  }
}
