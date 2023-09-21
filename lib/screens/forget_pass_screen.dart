import 'package:delivery_app/screens/register_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/custem_textformfield.dart';

class ForgetPassScreen extends StatefulWidget {
  ForgetPassScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPassScreen> createState() => _ForgetPassScreenState();

  TextEditingController _passForgetController = TextEditingController();
  final _forgetPassKey = GlobalKey<FormState>();
}

class _ForgetPassScreenState extends State<ForgetPassScreen> {
  @override
  void dispose() {
    super.dispose();
    widget._passForgetController.dispose();
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
        child: ListView(
          children: [
            Text(
              'Forget your password',
              style: TextStyle(
                  color: Colors.red, fontSize: 35, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              child: Form(
                key: widget._forgetPassKey,
                child: Column(
                  children: [
                    Text(
                      'Please enter your email to receive a link to create a new password via email',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustemTextFormField(
                        controller: widget._passForgetController,
                        hintTxt: 'Email',
                        inputType: TextInputType.emailAddress),
                    SizedBox(
                      height: 10,
                    ),
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
                            widget._forgetPassKey.currentState!.validate();
                        FocusScope.of(context).unfocus();
                      },
                      child: Text(
                        'Confirm your email',
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
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
