import 'package:almufeed/Colours.dart';
import 'package:almufeed/dashboard.dart';
import 'package:flutter/material.dart';

class onboardingscreen extends StatefulWidget {
  onboardingscreen({super.key});

  @override
  State<onboardingscreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<onboardingscreen> with SingleTickerProviderStateMixin{
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailIdController = TextEditingController();

  void initState() {
    super.initState();
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
        elevation: 0,
        backgroundColor: ColorConstants.kPrimaryColor,
        leading: IconButton(
          color: Colors.white,
          icon: Icon(Icons.arrow_back_ios),
          iconSize: 20.0,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Basic Details',
          style: TextStyle(
            color: ColorConstants.listbg,
            fontFamily: 'Montserrat',// Text color
            fontSize: 18, // Font size
            fontWeight: FontWeight.bold, // Font weight
          ),
        ),
        //centerTitle: true,
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
                    Align(
                    alignment: Alignment.topLeft,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(22.0,40.0,0.0,2.0),
                        child: Text(
                          'First Name',
                          style: TextStyle(
                            color: ColorConstants.kLiteBlack,
                            fontFamily: 'Montserrat',// Text color
                            fontSize: 14, // Font size
                            fontWeight: FontWeight.w500, // Font weight
                          ),
                        ),
                      ),
                    ),
                      Container(
                        margin: EdgeInsets.fromLTRB(20.0,10.0,20.0,20.0),
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
                          controller: firstNameController,
                          keyboardType: TextInputType.name,
                          maxLines: 1,
                          maxLength: 50,
                          decoration: InputDecoration(
                            hintText: "First Name",
                            hintStyle: TextStyle(
                              color: ColorConstants.kLiteBlack,
                              fontFamily: 'Montserrat',// Text color
                              fontSize: 12, // Font size
                              fontWeight: FontWeight.w300, // Font weight
                            ),
                            counterText: '',
                            prefixIcon: Icon(Icons.person_outline),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(22.0,10.0,0.0,2.0),
                          child: Text(
                            'Last Name',
                            style: TextStyle(
                              color: ColorConstants.kLiteBlack,
                              fontFamily: 'Montserrat',// Text color
                              fontSize: 14, // Font size
                              fontWeight: FontWeight.w500, // Font weight
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(20.0,10.0,20.0,20.0),
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
                          controller: lastNameController,
                          keyboardType: TextInputType.name,
                          maxLines: 1,
                          maxLength: 10,
                          decoration: InputDecoration(
                            hintText: "Last Name",
                            hintStyle: TextStyle(
                              color: ColorConstants.kLiteBlack,
                              fontFamily: 'Montserrat',// Text color
                              fontSize: 12, // Font size
                              fontWeight: FontWeight.w300, // Font weight
                            ),
                            counterText: '',
                            prefixIcon: Icon(Icons.person_outline),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(22.0,10.0,0.0,2.0),
                          child: Text(
                            'Email Id',
                            style: TextStyle(
                              color: ColorConstants.kLiteBlack,
                              fontFamily: 'Montserrat',// Text color
                              fontSize: 14, // Font size
                              fontWeight: FontWeight.w500, // Font weight
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(20.0,10.0,20.0,20.0),
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
                          controller: emailIdController,
                          keyboardType: TextInputType.name,
                          maxLines: 1,
                          maxLength: 10,
                          decoration: InputDecoration(
                            hintText: "abc@gmail.com",
                            hintStyle: TextStyle(
                              color: ColorConstants.kLiteBlack,
                              fontFamily: 'Montserrat',// Text color
                              fontSize: 12, // Font size
                              fontWeight: FontWeight.w300, // Font weight
                            ),
                            counterText: '',
                            prefixIcon: Icon(Icons.email_outlined),
                            border: InputBorder.none,
                          ),
                        ),
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
                            //sendEmail(context);
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  dashboard()),
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

 /* void _showOtpPopup(BuildContext context) {
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
              SizedBox(height: 16.0),
              *//* ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                },
                child: Text('Submit'),
              ),*//*
            ],
          ),
        );
      },
    );
  }*/

  void sendEmail(BuildContext context) {
    final String fn = firstNameController.text;
    final String ln = lastNameController.text;
    final String email = emailIdController.text;

    if (fn.isEmpty) {
      _showError(context, "Enter First Name");
      return;
    } else if (ln.isEmpty) {
      _showError(context, "Enter Last Name");
      return;
    }else if (email.isEmpty) {
      _showError(context, "Enter Email Id");
      return;
    }else if (!_isValidEmail(email)) {
      _showError(context, "Enter valid email id");
      return;
    }  else {
      _showThankYouMessage(context);
      return;
    }
  }

  bool _isValidEmail(String email) {
    final RegExp emailRegex =
    RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    return emailRegex.hasMatch(email);
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
