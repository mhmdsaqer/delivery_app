import 'package:flutter/material.dart';

import '../widgets/custem_textformfield.dart';
import 'login_screen.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();

  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  final _registerKey = GlobalKey<FormState>();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  void dispose() {
    super.dispose();
    widget._nameController.dispose();
    widget._emailController.dispose();
    widget._passController.dispose();
    widget._phoneController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xfff0f0f0),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.red,
            )),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          child: ListView(
            shrinkWrap: true,
            children: [
              Text(
                'Create your account',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                child: Form(
                  key: widget._registerKey,
                  child: Column(
                    children: [
                      CustemTextFormField(
                          controller: widget._nameController,
                          hintTxt: 'Username',
                          inputType: TextInputType.name),
                      SizedBox(
                        height: 10,
                      ),
                      CustemTextFormField(
                          controller: widget._emailController,
                          hintTxt: 'Email',
                          inputType: TextInputType.emailAddress),
                      SizedBox(
                        height: 10,
                      ),
                      CustemTextFormField(
                          controller: widget._passController,
                          hintTxt: 'Password',
                          inputType: TextInputType.visiblePassword),
                      SizedBox(
                        height: 10,
                      ),
                      CustemTextFormField(
                          controller: widget._phoneController,
                          hintTxt: 'Phone',
                          inputType: TextInputType.phone),
                      SizedBox(
                        height: 20,
                      ),
                      MaterialButton(
                        color: Colors.red,
                        minWidth: double.infinity,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        padding: EdgeInsets.symmetric(vertical: 16),
                        onPressed: () {
                          bool isValid =
                              widget._registerKey.currentState!.validate();
                          FocusScope.of(context).unfocus();
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              letterSpacing: 2),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'By clicking Sign up you agree to the our Terms and Conditions',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already an account ?',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return LoginScreen();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'Log in ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
