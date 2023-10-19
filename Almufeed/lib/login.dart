import 'package:almufeed/Colours.dart';
import 'package:almufeed/onboardingscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sms_autofill/sms_autofill.dart';

class login extends StatefulWidget {
  login({super.key});

  @override
  State<login> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<login> with SingleTickerProviderStateMixin {
  final TextEditingController mobileController = TextEditingController();
  AnimationController? _animationController;
  int levelClock = 2 * 60;
  bool isPinFieldEmpty = true;
  final TextEditingController textEditingController = TextEditingController();

  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: Duration(seconds: levelClock));

    _animationController!.forward();
    textEditingController.addListener(() {
      setState(() {
        if(textEditingController.text.trim().isEmpty){
          isPinFieldEmpty = true;
        }else if(textEditingController.text.trim().length < 4){
          isPinFieldEmpty = true;
        }else{
          isPinFieldEmpty = false;
        }
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      appBar: AppBar(
        centerTitle: true, // Center the title horizontally
        backgroundColor: ColorConstants.kPrimaryColor, // AppBar background color
      ),
        body : Column(
          children: <Widget>[
            Expanded(
              child: Stack(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    color: ColorConstants.kPrimaryColor,
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)
                      ),
                    ),
                    child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 60),
                            child: SvgPicture.asset(
                              "assets/image/almlogo.svg",
                              semanticsLabel: 'My SVG Picture',
                              width: 120,
                              height: 120,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                          ),
                          Container(
                            child: Text("Al Mufeed Group", style: const TextStyle(fontSize: 16,fontFamily: 'Montserrat',fontWeight: FontWeight.bold,color: ColorConstants.kLiteBlack)),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(20.0,60.0,20.0,20.0),
                            padding: EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40.0),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0.0, 1.0), //(x,y)
                                  blurRadius: 6.0,
                                ),
                              ],
                            ),
                            child: TextField(
                              controller: mobileController,
                              keyboardType: TextInputType.phone,
                              maxLines: 1,
                              maxLength: 10,
                              decoration: InputDecoration(
                                hintText: "Mobile number",
                                counterText: '',
                                border: InputBorder.none,
                                prefixIcon: Padding(padding: EdgeInsets.all(14.0), child: Text('+971  | ')),
                              ),
                            ),
                            /*child: TextFormField(
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                labelText: 'Mobile Number',
                                hintText: '+971 123-456-7890',
                                *//*prefixIcon: Icon(Icons.phone),
                                suffixIcon: Image.asset(
                                  'assets/country_flag.png', // Replace with your country flag image path
                                  width: 24.0,
                                  height: 24.0,
                                ),*//*
                              ),
                            ),*/
                            /*SizedBox(height: 16.0),
                            ElevatedButton(
                              onPressed: () {
                                // Handle form submission here
                              },
                              child: Text('Submit'),
                            ),*/
                          ),
                          Container(
                            width: double.infinity,
                            height: 50.0,
                            margin: EdgeInsets.fromLTRB(20.0,20.0,20.0,20.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0), // Adjust the radius as needed
                              color: ColorConstants.kPrimaryColor, // Background color of the container
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                //_showOtpPopup(context);
                                //sendEmail(context);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) =>  onboardingscreen()),
                                );
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(ColorConstants.kPrimaryColor),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0), // Adjust the radius to match the container
                                  ),
                                ),
                              ),
                              child: Text('Submit',style: const TextStyle(fontSize: 14,fontFamily: 'Montserrat',fontWeight: FontWeight.bold,color: Colors.white)),
                            ),
                          ),
                        ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
    );
  }

  bool isMobileNumberValid(String phoneNumber) {
    final RegExp _uaeMobilePattern = RegExp(r'^\+971\d{9}$'); // UAE mobile number pattern

    if (phoneNumber.length == 0) {
      return false;
    } else if (_uaeMobilePattern.hasMatch("+971"+phoneNumber)) {
      return true;
    }
    return false;
  }

  void _showOtpPopup(BuildContext context) {
    showDialog(
      context: context,
        barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.transparent,
          title: Center(child:Text('Enter OTP',style: const TextStyle(fontSize: 14,fontFamily: 'Montserrat',fontWeight: FontWeight.bold,color: Colors.black))),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: PinFieldAutoFill(
                  codeLength: 4,
                  controller: textEditingController,
                  autoFocus: true,
                  decoration: UnderlineDecoration(
                    lineHeight: 2,
                    lineStrokeCap: StrokeCap.square,
                    bgColorBuilder: PinListenColorBuilder(
                        Colors.grey.shade200, Colors.grey.shade200),
                    colorBuilder: const FixedColorBuilder(Colors.transparent),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Resend code after: "),
                  Countdown(
                    animation: StepTween(
                      begin: levelClock, // THIS IS A USER ENTERED NUMBER
                      end: 0,
                    ).animate(_animationController!),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    child: ElevatedButton(
                      onPressed: () async {
                        final String signature = await SmsAutoFill().getAppSignature;
                        print("Signature: $signature");

                        _animationController!.reset();
                        _animationController!.forward();
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(ColorConstants.kPrimaryColor),
                      ),
                      child: const Text("Resend",style: const TextStyle(fontSize: 14,fontFamily: 'Montserrat',fontWeight: FontWeight.w500,color: Colors.white)),
                    ),
                  ),
                  SizedBox(
                    child: ElevatedButton(
                      onPressed:  () {
                        if (isPinFieldEmpty) {
                          FocusManager.instance.primaryFocus?.unfocus();
                          _showError(context, "Enter OTP");
                        } else {
                          Navigator.of(context).pop();
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  onboardingscreen()),
                          );
                        }
                      } ,
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(ColorConstants.kPrimaryColor),
                      ),
                      child: const Text("Confirm",style: const TextStyle(fontSize: 14,fontFamily: 'Montserrat',fontWeight: FontWeight.w500,color: Colors.white)),
                    ),
                  ),
                ],
              ),
             /* ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                },
                child: Text('Submit'),
              ),*/
            ],
          ),
        );
      },
    );
  }

  void sendEmail(BuildContext context) {
    final String phone = mobileController.text;

    if (phone.isEmpty) {
      _showError(context, "Enter Mobile number");
      return;
    } else if (!isMobileNumberValid(phone)) {
      _showError(context, "Enter valid mobile number");
      return;
    } else {
      _showThankYouMessage(context);
      _showOtpPopup(context);
      return;
    }
  }

  void _showError(BuildContext context, String errorMessage) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(errorMessage),
        duration: Duration(seconds: 2),
      ),
    );
  }

  void _showThankYouMessage(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          "Login Successful!",
        ),
        duration: Duration(seconds: 2),
      ),
    );
  }

}
class Countdown extends AnimatedWidget {
  Countdown({Key? key, required this.animation})
      : super(key: key, listenable: animation);
  Animation<int> animation;

  @override
  build(BuildContext context) {
    Duration clockTimer = Duration(seconds: animation.value);

    String timerText =
        '${clockTimer.inMinutes.remainder(60).toString()}:${clockTimer.inSeconds.remainder(60).toString().padLeft(2, '0')}';
    return Text(
      timerText,
      style: TextStyle(
        fontSize: 18,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
