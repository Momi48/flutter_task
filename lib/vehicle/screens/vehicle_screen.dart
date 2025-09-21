import 'package:flutter/material.dart';
import 'package:flutter_task/model/vehicle_model.dart';
import 'package:flutter_task/vehicle/screens/vehicles_details_page_screen.dart';
import 'package:flutter_task/vehicle/screens/widget/vehicle_card.dart';

class VehicleScreen extends StatefulWidget {
  const VehicleScreen({super.key});

  @override
  _VehiclesPageState createState() => _VehiclesPageState();
}

class VehiclesPageState {
}

class _VehiclesPageState extends State<VehicleScreen> {
  List<Vehicle> filteredVehicles = vehicles; // Start with full list
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    searchController.addListener(() {
      filterVehicles();
    });
  }

  void filterVehicles() {
    final query = searchController.text.toLowerCase();

    setState(() {
      filteredVehicles = vehicles.where((vehicle) {
        return vehicle.id.toLowerCase().contains(query) ||
               vehicle.type.toLowerCase().contains(query) ||
               vehicle.status.toLowerCase().contains(query) ||
               (vehicle.driver?.toLowerCase().contains(query) ?? false) ||
               (vehicle.trip?.toLowerCase().contains(query) ?? false);
      }).toList();
    });
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Vehicles Info"), centerTitle: true),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.all(8.0),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  hintText: "Search by ID, type, status, driver, trip...",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: filteredVehicles.length,
                itemBuilder: (context, index) {
                  final vehicle = filteredVehicles[index];
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
            ),
          ],
        ),
      ),
    );
  }
}
