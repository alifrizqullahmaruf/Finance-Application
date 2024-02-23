import 'package:app_test/screen/bottom-navbar/bottom_nav.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key); // Memperbaiki konstruktor

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Background-Auth.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Sign In',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Username',
                    suffixIcon: Icon(
                      Icons.done_rounded,
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Nickname',
                    suffixIcon: Icon(
                      Icons.person,
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Password',
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    ),
                  ),
                ),
              ),
              const Text(
                'Forgot Password?',
                style: TextStyle(color: Colors.blue, fontSize: 18),
              ),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 50,
            child: Container(
              width: 300,
              child: ElevatedButton(
                // Mengubah MaterialButton menjadi ElevatedButton
                onPressed: () {
                  // Tambahkan logika untuk navigasi ke halaman berikutnya di sini
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomNavbar(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  // Menggunakan style untuk menentukan warna dan bentuk tombol
                  primary: Color(0xFF4960F9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      Icon(
                        Icons.arrow_right_alt,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
