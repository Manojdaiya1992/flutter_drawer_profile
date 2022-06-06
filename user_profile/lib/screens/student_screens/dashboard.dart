import 'package:flutter/material.dart';
import 'package:user_profile/screens/drawer/drawer.dart';
import 'package:user_profile/screens/student_screens/profile.dart';

class StudentDashboard extends StatefulWidget {
  const StudentDashboard({Key? key}) : super(key: key);

  @override
  State<StudentDashboard> createState() => _StudentDashboardState();
}

class _StudentDashboardState extends State<StudentDashboard> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        //  appBar: AppBar(),
        drawer: Drawer(
          child: MyDrawer(),
        ),
        body: StudentProfile(),
      ),
    );
  }
}
