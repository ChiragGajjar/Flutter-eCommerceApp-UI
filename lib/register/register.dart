import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ecommerce_app/Utils/app_images.dart';
import 'package:ecommerce_app/Utils/text_field_with_border_bg.dart';
import 'package:ecommerce_app/tabbarController.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isChecked = false;
  late TextEditingController _userNameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  FocusNode myFocusNodeUserName = FocusNode();
  FocusNode myFocusNodeEmail = FocusNode();
  FocusNode myFocusNodePassword = FocusNode();
  late bool _passwordVisible;

  @override
  void initState() {
    super.initState();
    _userNameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _passwordVisible = false;
  }

  @override
  void dispose() {
    _userNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();

    myFocusNodeUserName.dispose();
    myFocusNodeEmail.dispose();
    myFocusNodePassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ListView(
        padding: EdgeInsets.only(top: 0),
        children: <Widget>[
          Column(
            children: [
              Image(
                image: AppImages.welcome_2,
              ),
            ],
          ),
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
                          "Sign up",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 21,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 50,
                            width: 90,
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(25)),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: Image(
                              image: AppImages.google_logo,
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 90,
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(25)),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: Image(
                              image: AppImages.facebook,
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 90,
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(25)),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: Image(
                              image: AppImages.apple,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Or, register with email...",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFieldWithBorder(
                        controller: _userNameController,
                        inputType: TextInputType.emailAddress,
                        action: TextInputAction.next,
                        hintText: 'Username',
                        obscureTextField: false,
                        myFocusNode: myFocusNodeUserName, maxLine: 2,
                      ),
                      SizedBox(
                        height: 20,
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
                      TextField(
                        autofocus: false,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.done,
                        controller: _passwordController,
                        obscureText: _passwordVisible ? false : true,
                        focusNode: myFocusNodePassword,
                        maxLengthEnforcement: MaxLengthEnforcement.enforced,
                        cursorColor: const Color(0xFF1EB091),
                        decoration: InputDecoration(
                          labelText: 'Password',
                          suffixIcon: IconButton(
                            icon: Image(
                              height: 20,
                              width: 20,
                              image: _passwordVisible
                                  ? AppImages.icOpenEye
                                  : AppImages.icCloseEye,
                            ),
                            onPressed: () {
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            },
                          ),
                          labelStyle: TextStyle(
                            color: myFocusNodePassword.hasFocus
                                ? const Color(0xFF1EB091)
                                : Colors.grey,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                            const BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                            const BorderSide(width: 1, color: Color(0xFF1EB091)),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        style: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),

                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 50,
                        // width: 150,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => TabBarScreen()));
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
                                    "Sign In",
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
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: InkWell(
                          onTap: () {
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already have an account?",
                                textAlign: TextAlign.center,
                              ),
                              InkWell(
                                onTap: (){
                                  Navigator.of(context).pop(context);
                                },
                                child: Text(
                                  " Sign In",
                                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
