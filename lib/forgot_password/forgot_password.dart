import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ecommerce_app/Utils/app_images.dart';
import 'package:ecommerce_app/Utils/text_field_with_border_bg.dart';
import 'package:ecommerce_app/register/register.dart';
import 'package:ecommerce_app/tabbarController.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  late TextEditingController _emailController;
  FocusNode myFocusNodeEmail = FocusNode();

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();

    myFocusNodeEmail.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: <Widget>[
          Column(
            children: [
              Image(
                image: AppImages.welcome_2,
              ),
            ],
          ),
          Spacer(),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
              // color: Colors.black12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin:
                  EdgeInsets.symmetric(horizontal: 35, vertical: 40),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.zero,
                        width: MediaQuery.of(context).size.width - 40,
                        child: Text(
                          "Forgot \nPassword?",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.zero,
                        width: MediaQuery.of(context).size.width - 40,
                        child: Text(
                          "Don't worry! It happens. Please enter the address associated with your account.",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black54,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      TextFieldWithBorder(
                        controller: _emailController,
                        inputType: TextInputType.emailAddress,
                        action: TextInputAction.next,
                        hintText: 'Email',
                        obscureTextField: false,
                        myFocusNode: myFocusNodeEmail, maxLine: 2,
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      Container(
                        height: 50,
                        // width: 150,
                        child: InkWell(
                          onTap: () {
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                              color: Color(0xFF1EB091),
                            ),
                            padding: EdgeInsets.all(10),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Submit",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
