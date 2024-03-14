import 'package:app_test/widget/data_profile.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Profile_background.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  // Judul
                  Text(
                    'Profile',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),

                  // Profile
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image(
                        image: AssetImage('assets/images/Profile_image.png'),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Alif Rizz',
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          Text('Online')
                        ],
                      )
                    ],
                  ),

                  // Data
                  DataProfile('Username', 'Alif Rizz'),
                  DataProfile('First name', 'Alif'),
                  DataProfile('Last name', 'Rizz'),
                  DataProfile('Date of birth', '14-11-2003'),

                  SizedBox(height: 16), // Add some spacing

                  TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.exit_to_app),
                    label: Text('Sign out'),
                    style: TextButton.styleFrom(
                      primary: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
