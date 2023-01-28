
import 'package:flutter/material.dart';
import 'package:myoapp/main.dart';

class CustomListTile extends StatelessWidget {
  ThemeData _themeData=darkMode ? ThemeData.dark() : ThemeData.light();
  getTheme(){
    return _themeData;
  }
  setTheme(ThemeData theme){
    _themeData = theme;
  }

  final String titleText;
  final String subtitleText;
  final double fontSize,height;
  final Widget leadingIcon;
  final Widget trailing;

  CustomListTile({
    Key? key,
    required this.titleText,
    required this.subtitleText,
    required this.leadingIcon,
    required this.trailing,
    this.fontSize = 20,
    this.height = 50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListTile(
        leading: leadingIcon,
        title: Text(
          titleText,
          style: TextStyle(  color: Theme.of(context).iconTheme.color, fontSize: fontSize,fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitleText,
          style: TextStyle(  color: Theme.of(context).iconTheme.color, fontSize: fontSize),
        ),
        trailing: trailing,
      ),
    );
  }
}