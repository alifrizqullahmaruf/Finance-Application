import 'package:app_test/screen/Auth/login-page.dart';
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
                  const SizedBox(
                    height: 50,
                  ),
                  // Judul
                  const Text(
                    'Profile',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  // Profile
                  const Row(
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
                  const DataProfile('Username', 'alifrizqullahmaruf2003'),
                  const DataProfile('First name', 'Alif'),
                  const DataProfile('Last name', 'Rizz'),
                  const DataProfile('Date of birth', '14-11-2003'),

                  const SizedBox(height: 16), // Add some spacing

                  TextButton.icon(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const LoginPage()));
                    },
                    icon: const Icon(Icons.exit_to_app),
                    label: const Text('Sign out'),
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
