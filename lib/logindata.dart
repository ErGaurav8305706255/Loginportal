import 'package:flutter/material.dart';
class LoginData extends StatefulWidget {
  final String email;
  final String password;

  const LoginData({Key? key,required this.password,required this.email}) : super(key: key);

  @override
  State<LoginData> createState() => _LoginDataState();
}

class _LoginDataState extends State<LoginData> {

  @override
  Widget build(BuildContext context) {

    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text('Login Data',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            ),
            const Divider(color: Colors.deepPurple,thickness: 2),
            Text('Email id: ${widget.email}'),
            Text('Password: ${widget.password}'),
          ],
        ),
      ),
    ));
  }
}
