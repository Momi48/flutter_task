import 'package:flutter/material.dart';

class VehicleCard extends StatelessWidget {
  final dynamic vehicle;
  final VoidCallback? onTap;

  const VehicleCard({super.key, required this.vehicle, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        child: ListTile(
          leading: Icon(
            vehicle.type == "Truck"
                ? Icons.local_shipping
                : vehicle.type == "Van"
                    ? Icons.directions_car
                    : Icons.pedal_bike,
            color: Colors.blueAccent,
            size: 32,
          ),
          title: Text(
            vehicle.id,
            style:  TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text("Type: ${vehicle.type}"),
          trailing: Container(
            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.03, // ~3% of screen width
    vertical: MediaQuery.of(context).size.height * 0.007,), // ~0.7% of screen height),
            decoration: BoxDecoration(
              color: vehicle.status == "Available"
                  ? Colors.green.withOpacity(0.2)
                  : Colors.red.withOpacity(0.2),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              vehicle.status,
              style: TextStyle(
                color: vehicle.status == "Available"
                    ? Colors.green
                    : Colors.red,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
