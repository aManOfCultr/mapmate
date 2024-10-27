import 'package:flutter/material.dart';
import 'package:mapmate/widgets/places_list.dart';

class PlacesScreen extends StatelessWidget {
  const PlacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Places'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add_location_alt_outlined))
        ],
      ),
      body: PlacesList(
        places: [],
      ),
    );
  }
}
