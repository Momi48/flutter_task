import 'package:flutter/material.dart';
import 'package:flutter_task/model/vehicle_model.dart';
import 'package:flutter_task/vehicle/screens/details_row.dart';

class VehicleDetailPage extends StatelessWidget {
  final Vehicle vehicle;

  const VehicleDetailPage({super.key, required this.vehicle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Details - ${vehicle.id}")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailRow(title: "Vehicle ID/Name", value: vehicle.id),
            DetailRow(title: "Type", value: vehicle.type),
            DetailRow(title: "Status", value: vehicle.status),
            DetailRow(
              title: "Assigned Driver",
              value: vehicle.driver ?? "None",
            ),
            DetailRow(title: "Current Trip", value: vehicle.trip ?? "None"),
          ],
        ),
      ),
    );
  }
}
