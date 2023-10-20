import 'package:flutter/material.dart';
//import 'package:semester_registration_app/pages/repeat_module.dart';
import 'package:semester_registration_app/pages/personal_details.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 25),
              Text(
                "Welcome back Jigme",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 25),
              notRegisteredContainer(),
              SizedBox(height: 25),
              infoCard(),
              SizedBox(height: 25),
              homePageCard(),
            ],
          ),
        ),
      ),
    );
  }
}

class homePageCard extends StatelessWidget {
  const homePageCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(15.0),
            child: const Row(
              children: [
                Icon(
                  Icons.announcement_outlined,
                  color: Color.fromRGBO(0, 40, 168, 1),
                  size: 30,
                ),
                SizedBox(
                  width: 8.0,
                ),
                Text(
                  "Registration is now open",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),
          Stack(
            children: [
              Container(
                height: 100,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(0, 128, 255, 1.0),
                      Color.fromRGBO(0, 128, 255, 0),
                    ],
                  ),
                ),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 15,
                        top: 10,
                      ),
                      child: Text(
                        "Register for the semester",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const Positioned(
                bottom: 16, // Adjust the bottom value as needed
                right: 16, // Adjust the right value as needed
                child: startButton(),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(15.0),
            child: const Row(
              children: [
                Icon(
                  Icons.calendar_today,
                  color: Color.fromRGBO(0, 128, 255, 0.54),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Text(
                  "Registration is now open",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                  color: Color.fromRGBO(0, 0, 0, 0.56),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15.0),
            child: const Row(
              children: [
                Icon(
                  Icons.monetization_on,
                  color: Color.fromRGBO(0, 128, 255, 0.54),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Text(
                  "View Fee Structure",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                  color: Color.fromRGBO(0, 0, 0, 0.56),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class notRegisteredContainer extends StatelessWidget {
  const notRegisteredContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 350,
        height: 40,
        decoration: BoxDecoration(
          color:
              const Color.fromRGBO(0xF5, 0x8C, 0x68, 0.54), // Background color
          border: Border.all(
              color: const Color.fromRGBO(
                  0xED, 0x91, 0x91, 1.0)), // Border (stroke)
          borderRadius: BorderRadius.circular(5.0), // Rounded corners
        ),
        padding: const EdgeInsets.all(8.0), // Padding inside the container
        child: const Row(
          children: [
            Icon(
              Icons.warning, // Icon
              color: Color.fromRGBO(0xF6, 0x38, 0x38, 1.0), // Icon color
            ),
            SizedBox(width: 8.0), // Space between the icon and label
            Text(
              'You Have Been Registered', //label text
              style: TextStyle(
                color:
                    Color.fromRGBO(0x4D, 0x4D, 0x4D, 1.0), // Label text color
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class registeredContainer extends StatelessWidget {
  const registeredContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 350,
        height: 40,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(103, 194, 58, 0.37), // Background color
          border: Border.all(
              color:
                  const Color.fromRGBO(57, 156, 48, 0.56)), // Border (stroke)
          borderRadius: BorderRadius.circular(5.0), // Rounded corners
        ),
        padding: const EdgeInsets.all(8.0), // Padding inside the container
        child: const Row(
          children: [
            Icon(
              Icons.check_circle, // Icon
              color: Color.fromRGBO(0, 166, 168, 1.0), // Icon color
            ),
            SizedBox(width: 8.0), // Space between the icon and label
            Text(
              'You Have Not Registered', //label text
              style: TextStyle(
                color:
                    Color.fromRGBO(0x4D, 0x4D, 0x4D, 1.0), // Label text color
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class infoCard extends StatelessWidget {
  const infoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Card(
          child: Container(
            width: 150,
            padding: const EdgeInsets.all(20),
            height: 140,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.date_range,
                  color: Color.fromRGBO(0, 128, 255, 0.54),
                ),
                SizedBox(height: 10),
                Text(
                  "11/11/2023",
                  style: TextStyle(
                    color: Color.fromRGBO(77, 77, 77, 1),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Final date of registration",
                  style: TextStyle(
                    color: Color.fromRGBO(80, 80, 80, 1),
                  ),
                )
              ],
            ),
          ),
        ),
        Card(
          child: Container(
            width: 150,
            padding: const EdgeInsets.all(20),
            height: 140,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.location_on,
                  color: Color.fromRGBO(0, 128, 255, 0.54),
                ),
                SizedBox(height: 10),
                Text(
                  "11/11/2023",
                  style: TextStyle(
                    color: Color.fromRGBO(77, 77, 77, 1),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Reporting Date",
                  style: TextStyle(
                    color: Color.fromRGBO(80, 80, 80, 1),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class startButton extends StatelessWidget {
  const startButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      child: ElevatedButton(
        onPressed: () {
          // Button click action
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PersonalDetails()),
          );
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            const Color.fromRGBO(0, 128, 255, 1.0),
          ), // Set the background color
          side: MaterialStateProperty.all<BorderSide>(
            const BorderSide(
                width: 2,
                color: Colors.white), // Set the border (stroke) color and width
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  20), // Adjust the border radius as needed
            ),
          ),
        ),
        child: const Text(
          'Start',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
