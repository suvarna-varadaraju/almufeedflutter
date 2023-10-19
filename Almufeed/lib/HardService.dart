import 'package:almufeed/Colours.dart';
import 'package:almufeed/datamodel.dart';
import 'package:flutter/material.dart';

class HardService extends StatefulWidget {
  HardService({super.key});

  @override
  State<HardService> createState() => _HardServiceScreenState();
}

class _HardServiceScreenState extends State<HardService>{
  List<Menu> data = [];

  @override
  void initState() {
    dataList.forEach((element) {
      data.add(Menu.fromJson(element));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: ColorConstants.listbg,
          child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) =>
              _buildList(data[index]),
        ),
        ),
      ),
    );
  }

  Widget _buildList(Menu list) {
    if (list.subMenu.isEmpty)
      return Builder(
          builder: (context) {
            return ListTile(
                //onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context) => SubCategory(list.name))),
                leading: SizedBox(),
                title: Text(list.name)
            );
          }
      );
    return ExpansionTileTheme(
      data: ExpansionTileThemeData(
        collapsedIconColor: ColorConstants.kPrimaryColor,
        iconColor: ColorConstants.kPrimaryColor
      ),
      child: ExpansionTile(
        title: Text(
          list.name,
          style: const TextStyle(fontSize: 14,fontFamily: 'Montserrat',fontWeight: FontWeight.w500,color: ColorConstants.kLiteBlack),
        ),
        children: list.subMenu.map(_buildList).toList(),
      ),
    );
  }
}

