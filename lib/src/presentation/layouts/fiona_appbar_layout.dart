import 'package:fiona_layout/src/presentation/layouts/ifiona_appbar_layout_page.dart';
import 'package:flutter/material.dart';


class FionaAppBarLayout extends StatelessWidget{

  IFionaAppBarLayoutPage page;
  bool backButton;
  bool settingsButton;
  Widget? customIconBack;
  bool defaultPassIcon;
  Function(BuildContext context)? onClose;

  FionaAppBarLayout(this.page, {this.backButton=false, this.settingsButton=true, this.customIconBack, this.defaultPassIcon=false, this.onClose});

  FionaAppBarLayout.likePopup(this.page, {this.backButton=true, this.settingsButton=false,this.customIconBack, this.defaultPassIcon=false, this.onClose });

  @override
  Widget build(BuildContext context) {
    return buildLayout(context);
  }

  @override
  Widget buildLayout(BuildContext context) {

    String pageTitle = this.page.getTitle();

    Scaffold scaffold = buildScaffold(
        context,
        appBar: buildAppBar(context, pageTitle),
        widgets: buildScaffoldWidgets(context),
        );

    Theme theme = buildTheme(scaffold);

    return theme;
  }

  @override
  List<Widget> buildScaffoldWidgets(BuildContext context) {

    Widget body = buildBody(context);
    Widget footer = buildFooter();

    return [
      Expanded(
          flex: 10,
          child: body
      ),
      Expanded(
          flex: 1,
          child: footer
      ),
    ];
  }

  Scaffold buildScaffold(BuildContext context, {required List<Widget> widgets, AppBar? appBar}){

   // FunPassIcons

    return Scaffold(
      appBar: appBar,
      body:  Container(
          //color: Colors.black,
          child:
          Column(
            children: widgets,
          )
      ),
      endDrawer: buildRigthDrawer(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return page.buildBody(context);
  }

  Widget? buildRigthDrawer(BuildContext context){
    return null;
  }

  AppBar? buildAppBar(BuildContext context, String pageTitle){
    return null;
  }

  Widget buildFooter(){
    return SizedBox.shrink();
  }

  Theme buildTheme(Scaffold scaffold){
    return Theme(
        data: buildThemeData(),
        child: scaffold
    );
  }

  ThemeData buildThemeData() {
      return ThemeData(
          brightness: Brightness.light,
          //primaryColor: appTheme.getPrimaryBackgroundColor(),
          //fontFamily: funpassFonts.fontFamily,
          appBarTheme: AppBarTheme(
              //backgroundColor: appTheme.getPrimaryBackgroundColor(),
              //foregroundColor: appTheme.getPrimaryForegroundColor()
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            //backgroundColor: appTheme.getPrimaryBackgroundColor(),
            //selectedItemColor: appTheme.getSecondaryBackgroundColor(),
            //selectedIconTheme: IconThemeData(color: appTheme.getSecondaryBackgroundColor(), size: 30),
            //unselectedIconTheme: IconThemeData(color: appTheme.getPrimaryForegroundColor(), size: 30),
            //unselectedItemColor: appTheme.getPrimaryForegroundColor(),
            //selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold)
          ),
          textTheme:  TextTheme(
            //displayLarge: funpassFonts.headline1,
            //displayMedium: funpassFonts.headline2,
            //displaySmall: funpassFonts.headline6,
          )

      );
  }

}