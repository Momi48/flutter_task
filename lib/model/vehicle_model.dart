class Vehicle {
  final String id;
  final String type;
  final String status;
  String? driver;
  String? trip; 
  Vehicle({
    required this.id,
    required this.type,
    required this.status,
    this.driver,
    this.trip,
  });
}

final List<Vehicle> vehicles = [
  Vehicle(id: "VH-001", type: "Truck", status: "Available"),
  Vehicle(
    id: "VH-002",
    type: "Van",
    status: "Assigned",
    driver: "John Doe",
    trip: "Trip #105",
  ),
  Vehicle(id: "VH-003", type: "Bike", status: "Available"),
  Vehicle(
    id: "VH-004",
    type: "Truck",
    status: "Assigned",
    driver: "Alice",
    trip: "Trip #106",
  ),
  Vehicle(id: "VH-005", type: "Van", status: "Available"),
];
