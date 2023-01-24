import 'package:flutter/material.dart';

const int itemCount = 6;

class LocationsPage extends StatelessWidget {
  const LocationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('Локација ${(index + 1)}'),
          leading: const Icon(Icons.my_location),
        );
      },
    );
  }
}
