import 'package:flutter/material.dart';
class SignUpData extends StatefulWidget {

  final String name;
  final String email;
  final String mobile;
  final String city;
  final String password;
  final String conformpassword;

  const SignUpData({Key? key,required this.name,required this.email,required this.mobile,required this.city,required this.password,required this.conformpassword}) : super(key: key);

  @override
  State<SignUpData> createState() => _SignUpDataState();
}
class _SignUpDataState extends State<SignUpData> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
            child: Column(
            children: [
                const Text('SignUp Data',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              ),
             ),
                 const Divider(color: Colors.deepPurple,thickness: 2),
              Text('Name: ${widget.name}'),
              Text('Email id: ${widget.email}'),
              Text('Mobile No.: ${widget.mobile}'),
              Text('City: ${widget.city}'),
              Text('Password: ${widget.password}'),
              Text('Conform Password: ${widget.conformpassword}'),

            ],
           ),
        ),
      ),
    );
  }
}
