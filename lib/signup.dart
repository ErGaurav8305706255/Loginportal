import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_portal/loginpage.dart';
import 'package:login_portal/signupdata.dart';
import 'package:login_portal/validate.dart';
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  TextEditingController textNameController = TextEditingController();
  TextEditingController textEmailController = TextEditingController();
  TextEditingController textMobileNoController = TextEditingController();
  TextEditingController textCityController = TextEditingController();
  TextEditingController textPasswordController = TextEditingController();
  TextEditingController textConformPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.tealAccent,
        body: SingleChildScrollView(
          child: SafeArea(
            child:Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const Text('SignUp Portal', textAlign: TextAlign.center,
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
                        Icon(Icons.person, color: Colors.teal),
                        filled: true,
                        border: OutlineInputBorder(),
                        fillColor: Colors.white,
                        hintText: 'Enter Your Name'),
                    controller: textNameController,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                        prefixIcon:
                        Icon(Icons.email, color: Colors.teal),
                        filled: true,
                        border: OutlineInputBorder(),
                        fillColor: Colors.white,
                        hintText: 'Enter Your Email ID'),
                    controller: textEmailController,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(keyboardType: TextInputType.number,
                    inputFormatters: [
                    LengthLimitingTextInputFormatter(10),
                  ],
                    decoration: const InputDecoration(
                        prefixIcon:
                        Icon(Icons.phone_android, color: Colors.teal),
                        filled: true,
                        border: OutlineInputBorder(),
                        fillColor: Colors.white,
                        hintText: 'Enter Your Mobile no.'),
                    controller: textMobileNoController,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                        prefixIcon:
                        Icon(Icons.location_city, color: Colors.teal),
                        filled: true,
                        border: OutlineInputBorder(),
                        fillColor: Colors.white,
                        hintText: 'Enter Your City'),
                    controller: textCityController,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                        prefixIcon:
                        Icon(Icons.lock, color: Colors.teal),
                        filled: true,
                        border: OutlineInputBorder(),
                        fillColor: Colors.white,
                        hintText: 'Enter Your Password'),
                    controller: textPasswordController,
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                        prefixIcon:
                        Icon(Icons.lock, color: Colors.teal),
                        filled: true,
                        border: OutlineInputBorder(),
                        fillColor: Colors.white,
                        hintText: 'Enter Your Conform Password'),
                    controller: textConformPasswordController,
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                InkWell(onTap: () {
                  if (textNameController.text.length >=3) {
                    if (textEmailController.text.isNotEmpty) {
                      if (textMobileNoController.text.length >=10) {
                        if (textCityController.text.length >=3) {
                          if (textPasswordController.text.isNotEmpty) {
                            if (textPasswordController.text ==textConformPasswordController.text){

                            String? msg = Validate.validateNameAddress(
                                textNameController.text);
                            String? msg1 = Validate.validateEmailAddress(
                                textEmailController.text);
                            String? msg2= Validate.validateMobileAddress(
                                textMobileNoController.text);
                            String? msg3= Validate.validateCityAddress(
                                textCityController.text);
                            String? msg4= Validate.validatePasswordAddress(
                                textPasswordController.text);
                            String? msg5= Validate.validateConformPasswordAddress(
                                textConformPasswordController.text);
                            if (msg == null) {
                              if (msg1 == null) {
                                if (msg2 == null){
                                  if (msg3 == null){
                                    if (msg4 == null){
                                      if (msg5 == null){
                                        Navigator.of(context).push(
                                          MaterialPageRoute(builder: (context)=>
                                              SignUpData(name: textNameController.text,
                                                email: textEmailController.text,
                                                mobile: textMobileNoController.text,
                                                city: textCityController.text,
                                                password: textPasswordController.text,
                                                conformpassword: textConformPasswordController
                                                    .text,
                                              ),
                                          ),
                                        );
                                      }
                                      else {
                                        var snackBar = SnackBar(
                                            content: Text(msg5));
                                        ScaffoldMessenger.of(context).showSnackBar(
                                            snackBar);
                                      }
                                    }
                                    else {
                                      var snackBar = SnackBar(
                                          content: Text(msg4));
                                      ScaffoldMessenger.of(context).showSnackBar(
                                          snackBar);
                                    }
                                  }
                                  else {
                                    var snackBar = SnackBar(
                                        content: Text(msg3));
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        snackBar);
                                  }
                                }
                                else {
                                  var snackBar = SnackBar(
                                      content: Text(msg2));
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      snackBar);
                                }
                              }
                              else {
                                var snackBar = SnackBar(
                                    content: Text(msg1));
                                ScaffoldMessenger.of(context).showSnackBar(
                                    snackBar);
                              }
                            }
                            else {
                              var snackBar = SnackBar(
                                  content: Text(msg));
                              ScaffoldMessenger.of(context).showSnackBar(
                                  snackBar);
                            }
                            }
                            else {
                              var snackBar = const SnackBar(
                                  content: Text('Do Not Match Conform password'));
                              ScaffoldMessenger.of(context).showSnackBar(
                                  snackBar);
                            }
                          }
                          else {
                            var snackBar = const SnackBar(
                                content: Text('Please Enter your password'));
                            ScaffoldMessenger.of(context).showSnackBar(
                                snackBar);
                          }
                        }
                        else {
                          var snackBar = const SnackBar(
                              content: Text('Please Enter your City.'));
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }
                      }
                      else {
                        var snackBar = const SnackBar(
                            content: Text('Please Enter your Mobile No.'));
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    }
                    else {
                      var snackBar = const SnackBar(
                          content: Text('Please Enter your Email ID'));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  }
                  else {
                    var snackBar = const SnackBar(
                        content: Text('Please Enter your Name'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                  // Navigator.push(context,MaterialPageRoute(builder: (context) => SignUpData(name: textNameController.text,email: textEmailController.text,mobile: textMobileNoController.text,city: textCityController.text,password: textPasswordController.text,conformpassword: textConformPasswordController.text,)));
                },
                  child: Container(
                    height: 50,width: 150,
                    decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: const Center(
                      child: Text('SignUp',
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
                    height: 50,
                  ),
                  const Text('Already have an Account?'),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => const LoginPage()));
                  },
                    child: const Text('Login',
                      style: TextStyle(decoration: TextDecoration.underline,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
