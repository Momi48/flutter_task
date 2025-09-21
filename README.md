Setup Instructions
git clone https://github.com/<yourusername>/flutter_task.git 

Navigate to the project folder: 
mine was flutter_task
cd flutter_task

Install Dependencies
flutter pub get

Run the app
flutter run

Screenshots:

<img width="314" height="663" alt="flutter_task_1" src="https://github.com/user-attachments/assets/90823834-9cfb-4817-bf1b-d649aad5b5ad" />

<img width="320" height="671" alt="flutter_task_3" src="https://github.com/user-attachments/assets/bcbdc271-be24-4600-92f3-f9053f267c44" />

<img width="306" height="676" alt="flutter_task_2" src="https://github.com/user-attachments/assets/60ffc196-ab9c-4015-831c-b59b42e161d5" />

<img width="318" height="629" alt="image" src="https://github.com/user-attachments/assets/43e8b99a-0598-4e5c-a703-2a2d60b4e300" />


Assumptions Made

Data is mocked locally (no backend).

Only the Vehicles screen and details flow are implemented (based on assignment note).

Vehicle status options are limited to Available / Assigned.

Responsive design is handled using Expanded, Flexible, and MediaQuery (no hardcoded sizes).


Features Implemented

Vehicles Screen

Displays a list of vehicles with ID/Name, Type, and Status.

Tap a vehicle → navigate to details screen.

Vehicle Details Screen

Shows Vehicle Name/ID, Type, Status.

Displays Assigned Driver (if any).

Displays Current Trip (if any).

Reusable Widgets

VehicleCard → reusable widget for vehicle list items.

DetailRow → reusable widget for displaying key/value details.
