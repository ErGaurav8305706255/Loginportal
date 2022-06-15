import 'package:flutter/material.dart';
import 'package:login_portal/validate.dart';
import 'package:login_portal/signup.dart';

import 'logindata.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);


  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController textEmailController = TextEditingController();
  TextEditingController textPasswordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.teal[300],
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const Text('Login Portal', textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  decoration: const InputDecoration(
                      prefixIcon:
                      Icon(Icons.email, color: Colors.green),
                      filled: true,
                      border: OutlineInputBorder(),
                      fillColor: Colors.white,
                      hintText: 'Enter Your Email ID'),
                  controller: textEmailController,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: const InputDecoration(
                      prefixIcon:
                      Icon(Icons.lock, color: Colors.green),
                      filled: true,
                      border: OutlineInputBorder(),
                      fillColor: Colors.white,
                      hintText: 'Enter Your Password'),
                  controller: textPasswordController,
                ),
               const SizedBox(
                 height: 30,
               ),
               InkWell(onTap: () {
                 // if (textEmailController.text.isNotEmpty && textPasswordController.text.isNotEmpty) {
                   if (textEmailController.text.isNotEmpty ) {
                     if(textPasswordController.text.isNotEmpty){

                       String? msg = Validate.validateEmailAddress(
                           textEmailController.text);
                       String? pass = Validate.validatePasswordAddress(
                           textPasswordController.text);
                       if (msg == null) {
                         if (pass == null) {
                           Navigator.of(context).push(
                             MaterialPageRoute(builder: (context) =>
                                 LoginData(
                                   email: textEmailController.text,
                                   password: textPasswordController.text,
                                 ),
                             ),
                           );
                         }
                         else {
                           var snackBar =  SnackBar(
                               content: Text(pass));
                           ScaffoldMessenger.of(context).showSnackBar(snackBar);
                         }
                       }
                       else {
                         var snackBar =  SnackBar(
                             content: Text(msg));
                         ScaffoldMessenger.of(context).showSnackBar(snackBar);
                       }
                     }
                     else{
                       var snackBar = const SnackBar(
                           content: Text('Please Enter your password'));
                       ScaffoldMessenger.of(context).showSnackBar(snackBar);
                     }
                   }
                   else {
                     var snackBar = const SnackBar(
                         content: Text('Please Enter your Email ID'));
                     ScaffoldMessenger.of(context).showSnackBar(snackBar);
                   }
                 },
                 child: Container(
                   height: 50,width: 150,
                   decoration: BoxDecoration(
                     color: Colors.redAccent,
                     borderRadius: BorderRadius.circular(10)
                   ),
                   child: const Center(
                     child: Text('Login',
                     textAlign: TextAlign.center,
                     style: TextStyle(
                       color: Colors.white,
                       fontWeight: FontWeight.w700,
                       fontSize: 15,
                     )),
                   ),
                 ),
               ),

                const SizedBox(
                  height: 30,
                ),
                const Text('Forgot Password',
                  style: TextStyle(fontSize: 15,
                  ),
                ),
                const Spacer(),

                InkWell( onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => const SignUp()));
                },
                  child: const Text('Create a new account',
                    style: TextStyle(fontSize: 15,
                        decoration: TextDecoration.underline,
                      ),
                  )
                )
              ],
            ),
          ),
      ),
    );
  }

}
