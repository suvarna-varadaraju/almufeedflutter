import 'package:almufeed/Colours.dart';
import 'package:almufeed/HardService.dart';
import 'package:almufeed/SoftService.dart';
import 'package:almufeed/datamodel.dart';
import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';

class dashboard extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<dashboard> {
  List<Menu> data = [];

  @override
  void initState() {
    super.initState();
    dataList.forEach((element) {
      data.add(Menu.fromJson(element));
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          bottom: TabBar(
            labelColor: ColorConstants.kPrimaryColor,
            //unselectedLabelColor: Colors.grey,
            indicatorColor: ColorConstants.kPrimaryColor,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(icon: Icon(Icons.design_services),text: "Hard Service"),
              Tab(icon: Icon(Icons.cleaning_services),text: "Soft Service"),
            ],
          ),
          title: const Text(
            'DASHBOARD',
            style: TextStyle(
              color: ColorConstants.kPrimaryColor,
              fontFamily: 'Montserrat',// Text color
              fontSize: 18, // Font size
              fontWeight: FontWeight.bold, // Font weight
            ),
          ),
          centerTitle: true,
          backgroundColor: ColorConstants.listbg,
        ),
        body: TabBarView(
          children: [
            HardService(),
            SoftService(),
          ],
        ),
      ),
    );
   /* return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorConstants.kPrimaryColor,
        //iconTheme: IconThemeData(color: ColorConstants.listbg),
        title: const Text(
          'Dashboard',
          style: TextStyle(
            color: ColorConstants.listbg,
            fontFamily: 'Montserrat',// Text color
            fontSize: 20, // Font size
            fontWeight: FontWeight.bold, // Font weight
          ),
        ),
        centerTitle: true,
      ),
     *//* drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: ColorConstants.kPrimaryColor,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
              ),
              title: const Text('Page 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.train,
              ),
              title: const Text('Page 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),*//*
      body: Center(
        child: Text('Waiting for OTP...'),
      ),
    );*/
  }
}
