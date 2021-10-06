import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/Utils/app_images.dart';
import 'package:ecommerce_app/Utils/trensations_widgets.dart';
import 'package:ecommerce_app/onboarding/welcome_screen2.dart';

class WelcomePage1 extends StatefulWidget {
  @override
  WelcomePage1State createState() => WelcomePage1State();
}

class WelcomePage1State extends State<WelcomePage1> with SingleTickerProviderStateMixin{

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFAF4D),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Image(
            image: AppImages.getInspired,
            // width: 24.0,
            // height: 24.0,
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(left: 30, top: 50),
            child: ShakeTransition(
              duration: Duration(milliseconds: 900),
              axis: Axis.horizontal,
              child: Text(
                'Get inspired',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 50, right: 50, top: 20),
            width: MediaQuery.of(context).size.width - 40,
            child: Text(
              'Don\'t know what to eat? Take a picture, we\'ll suggest things to cook with your ingredients.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              getStepper(),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 20,
              ),
              Container(
                child: Text(
                  'skip',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Spacer(),
              Container(
                height: 50,
                // width: 150,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => WelcomePage2()));
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Next',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Image(
                          image: AppImages.arrow_white,
                          width: 24.0,
                          height: 24.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
          SizedBox(
            height: 35,
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }

  Row getStepper() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        StepperBar(active: true),
        StepperBar(),
        StepperBar(),
      ],
    );
  }
}

class StepperBar extends StatelessWidget {
  final bool active;
  final bool completed;

  const StepperBar({this.active: false, this.completed: false});

  @override
  Widget build(BuildContext context) {
    final _completedClr = Color(0xFFFFFFFF);
    final _activeClr = Color(0xFFFFFFFF);
    final _pendingClr = Color(0xFFFFFFFF);
    return Container(
      margin: EdgeInsets.only(left: 3),
      width: active ? 25 : 5,
      height: 5,
      decoration: BoxDecoration(
        color: active
            ? _activeClr
            : completed
                ? _completedClr
                : _pendingClr,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
