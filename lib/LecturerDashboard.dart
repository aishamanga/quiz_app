import 'package:flutter/material.dart';

class LecturerDashboard extends StatefulWidget {
  const LecturerDashboard({super.key});

  @override
  State<LecturerDashboard> createState() => _LecturerDashboardState();
}

class _LecturerDashboardState extends State<LecturerDashboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Lecturer succesfully logged in"),
    );
  }
}
