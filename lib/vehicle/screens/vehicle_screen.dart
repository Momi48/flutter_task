import 'package:flutter/material.dart';
import 'package:flutter_task/model/vehicle_model.dart';
import 'package:flutter_task/vehicle/screens/vehicles_details_page_screen.dart';
import 'package:flutter_task/vehicle/screens/widget/vehicle_card.dart';

class VehicleScreen extends StatelessWidget {
  const VehicleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text("Vehicles Info"), centerTitle: true),
      body: ListView.builder(
        itemCount: vehicles.length,

        itemBuilder: (context, index) {
          final vehicle = vehicles[index];
         return VehicleCard(
            vehicle: vehicle,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => VehicleDetailPage(vehicle: vehicle),
                ),
              );
            },
          );
          
        },
      ),
    );
  }
}
