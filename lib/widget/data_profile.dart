import 'package:flutter/material.dart';

class DataProfile extends StatelessWidget {
  const DataProfile(this.titleProfile, this.dataProfile, {Key? key})
      : super(key: key);

  final String titleProfile;
  final String dataProfile;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(titleProfile),
          SizedBox(width: 8),
          Text(
            dataProfile,
            style: TextStyle(color: Colors.blue),
          ),

          Divider(), // Menambahkan garis pembatas di bawah Row
        ],
      ),
    );
  }
}
