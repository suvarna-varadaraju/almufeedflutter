import 'package:almufeed/Colours.dart';
import 'package:almufeed/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sms_autofill/sms_autofill.dart';

class SoftService extends StatefulWidget {
  SoftService({super.key});

  @override
  State<SoftService> createState() => _SoftServiceScreenState();
}

class _SoftServiceScreenState extends State<SoftService> with SingleTickerProviderStateMixin{
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
      body : Column(
        children: <Widget>[
          Expanded(
            child: Stack(
              children: <Widget>[

              ],
            ),
          )
        ],
      ),
    );
  }
}
